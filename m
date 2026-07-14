Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 59F903644CF
	for <ddprobe@lists.linux.dev>; Tue, 14 Jul 2026 22:48:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784069314; cv=none; b=bFEKSQsvCDqRziVmNfKU04ej2XBWIU+oHIf8IWTqrtMyWeJKWk4QfUeLqBRUpUJSjE0MG+srwfCAig94wgOPe7jfZh/LDeWd1ovgvcnY80l54tYDfRq6C6kjCEHCr/XtZJmrYAg7USPY+jrNKkyESY/EZ8Vr7TJ07ljadRyvjqA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784069314; c=relaxed/simple;
	bh=eYIkVrpvymsIQdm/p9d6A88ySelD2zvtqMsZJUEpFDI=;
	h=To:Subject:From:Message-Id:Date; b=tpyn4Dlg9p11r3DUQRvbWo5XsbDYgjP/A7X4Y1WfrKtFCtjOnapHk6N6L/UwzDJ9tvO6QNBiAGEZFowCi81DrSfTCHst97NA1wHDfoXoXpDD+2ZJv6MsqAdmWSHlefD4ZsnPELj2EB/9W4fy56Lx+c17PzGZ6vFR5M/K9s5dKHk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uSkjCIPj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uSkjCIPj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4BA1C2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 14 Jul 2026 22:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784069313;
	bh=eYIkVrpvymsIQdm/p9d6A88ySelD2zvtqMsZJUEpFDI=;
	h=To:Subject:From:Date:From;
	b=uSkjCIPjQFJaVe0/1b8FSKMTyuDJhdM7Edynvf7bMh7O81+L4kxzCA4Z5tpWvCzBg
	 qprROPr+R3PoIE2duAx7zYNIlUs2kPFYaTYVNYX+mHkxMDh1vti2hfTgHfAHKHKB5K
	 7xsL5FFmeoNYY0Wg0Mh9zEwMDCWn4Wb7+QA01kleJ/EpdA5fF0zXJAMo2l4iS+B7Iy
	 zISAvQBG/QKdJbbFRfocj9twkNOteJXthtcitpDW87jdNP07Xsi5nx7yv22NVtfBGT
	 reK3g+VnK0gLwTCFajAsU247ZyFhH2HLgSSoNcD3dwei12Drcnp/gLauO+sVq2trhf
	 W5q2dWZtXLyhA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFC45C43458
	for <ddprobe@lists.linux.dev>; Tue, 14 Jul 2026 22:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178406931370.2830.8464384890693009245.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9e7d3346e0b0560966df15a1bccecc9be0fc92cb3fee727c82b1012257cd8138
Date: Tue, 14 Jul 2026 22:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784069313
