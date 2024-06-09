Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5FEEF1F932
	for <ddprobe@lists.linux.dev>; Sun,  9 Jun 2024 23:27:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717975643; cv=none; b=NwvtIFBkKz1pnu3+kXXYrhPJlz5V7qCqlHsmOLFL4S1L6710pj9iVEE1MEl/4IunECIrcD/+K0EtboS9ML5SRxKDd13MVSYSBk+e3z+4NXkQ5Hbl2hrxVbqpMO4CTGjiP5ge6OU+GSSVB7w2rii8+D+T9M879Iat2F9r09aerFs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717975643; c=relaxed/simple;
	bh=coq79YPYsrA0wN9hT9cAkHxGKR8ClXC18CFhcEr3Tn0=;
	h=To:Subject:From:Message-Id:Date; b=KiFZ6qRNkwIzQSLUNGXLQteahBhiseyVklI4X2JHMWRjwM20zh7hSur7DWcA+MamYjEYuy3EQzhmiuP3w2NEh+v/VD5IqEaArLoAQCgRdz6kvmDn6JDFiyRCy1C924edq3wVGy2kHLT1HcZ9lHwoSzAPGafgWbnsdAFLWhjMU7o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Hgl8mC7n; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Hgl8mC7n"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6C89C2BD10
	for <ddprobe@lists.linux.dev>; Sun,  9 Jun 2024 23:27:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717975642;
	bh=coq79YPYsrA0wN9hT9cAkHxGKR8ClXC18CFhcEr3Tn0=;
	h=To:Subject:From:Date:From;
	b=Hgl8mC7nfxVpWydk61LqHHXcDg5W7CupzmLBPplqfPQUw1yyuFMxwYr9aOikfW83K
	 CwrxnGDmWUcrUJ1Sf7xR5wifN5/LxqYyu6xM2LfW/FtoxX4jjSDpuuVW0nLTcteZ+i
	 Ds+7n2dTKAmCt4OU0N+UZzqOryx74k9gEfjMVUXEVSzADdpfKwamd5sjJFnLhyYHwz
	 IMvUJ2JiMDlS554b1/DHSN7VJPZstRggrPEHYFM6gxXgUB/RjGpEyybhgWnBHLlqOx
	 0SSE+JgmGKy62mP+6nXXaC5TEo5XKsTyZxcng22mAtnUpvvcrJPXq4norcYEprxkrU
	 2cPx3IajZ9djw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2FF5C27C53
	for <ddprobe@lists.linux.dev>; Sun,  9 Jun 2024 23:27:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171797564276.10297.4340609385541260740.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9c1de22c302e5e733c4b82130e7c3b4d43164bd86cf6d353b1df9f8bff23cf60
Date: Sun, 09 Jun 2024 23:27:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717975642
