Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4093838757A
	for <ddprobe@lists.linux.dev>; Fri, 11 Sep 2026 05:50:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789105834; cv=none; b=LWop4a3DqSMMT96o6atOrQ15rwT+mKfBaWjedB695OPIHjJcXcy7E+KDGZnF3KW/83TdtJv7tlgkTQosf7ZguVBK5JTa5PUVav1zwi6O/nuTGyrUvDA3fXPCNIPfMAv03VrTnM4JNlU+8Vt3KMXjVSCgO63Otuo4+76RLLl/St0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789105834; c=relaxed/simple;
	bh=TjhAkI92+Dwj6zQwybLj5vhth1mPZkzsQDHckSjTZ7o=;
	h=To:Subject:From:Message-Id:Date; b=Xh1kqDMSvSYdH7ZYw8pISfy3wNlg2wWipdO1Gdv/WKSsUyWlxbT4I8mhLUZAst+Im4YCA40V6+w3xipAdFEJyGunxvbr864cdXOL3k3Oa3mkqC3JuYlWFfx/+rl8GobwfY6C9vPhLgpjejqOjzmzROr+xteQqtfQtB7so2Q2fes=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sNdOskEK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sNdOskEK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0E12C2BCF4
	for <ddprobe@lists.linux.dev>; Fri, 11 Sep 2026 05:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789105833;
	bh=TjhAkI92+Dwj6zQwybLj5vhth1mPZkzsQDHckSjTZ7o=;
	h=To:Subject:From:Date:From;
	b=sNdOskEKSaRWcQEaNSybIkkmQHzAa9i1EtSFnCxkRN5qJyZ0RtD27pKcWoZDY5XOj
	 ohAE4IIHq6pUGFeIjp1zQcgmXFMHzUbN7UeLkhX+Uv8Em+8aaf44jFlN7/zkG6W2Z8
	 S6ZTXwoKD0k80+JqUKa5yJazcf6R59gd5B8KTNJH+YNUUI2musJd3fbVPIjR5SqDhO
	 OSMI7fHjHS+OkxfVhPNfgb4c8Ug371po8GfzzD/Y+k+7IGVfyTkPKK5h1IIZ46bQg7
	 4dlXHg4PeJmJHbuotDoDPCAvY1Rt513j48O1CGjJug9tJuzAqzFe1V9N7Nhb7IcR5a
	 FqW/CtmjyRSDw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA172C79FA1
	for <ddprobe@lists.linux.dev>; Fri, 11 Sep 2026 05:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178910583368.3849.1910021637079807467.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1e65d367ce260a2be1e34f67ca192aa4594633081875e64e7848c30a3d8785a7
Date: Fri, 11 Sep 2026 05:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789105833
