Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38E5A20E6
	for <ddprobe@lists.linux.dev>; Sat, 28 Jun 2025 06:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751093994; cv=none; b=VV/r7MhfnySECtkItSjCiK3c+JVsoeBtA6z5wcRgnlcosHbtcnYHFCEJXGTcmezlcrzuQ1U8xEimOdBBQ6NUF5/VPNUbWvnhneZvNN4iKRzMcNknCXXEKoU90+g6x30SXSCSKlCE+jA3TbvubQSyPlT19+lo7Ped6IlefTAc5Tg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751093994; c=relaxed/simple;
	bh=GYaQfwoweOo06X5LN2UK6WQ+/CKXWzqU+PbWoekl/gU=;
	h=To:Subject:From:Message-Id:Date; b=bNqg+vBlHg2U64RlV6ZDxUphcakGwGT9+HtjuXiVOqUL76dE9aXSP6pTaX1kCrSZmn/J23IncUyoyrmYuO7BpHVueX8bTjTJurDxzY+le3D6pH8Kaoofkf3fWYAtOdy3fRKIn3wW57/3sjEpGDauyrYi1dG+hXdH/geKDAnHFJg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VZt/tglW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VZt/tglW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A92C8C4CEEA
	for <ddprobe@lists.linux.dev>; Sat, 28 Jun 2025 06:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751093993;
	bh=GYaQfwoweOo06X5LN2UK6WQ+/CKXWzqU+PbWoekl/gU=;
	h=To:Subject:From:Date:From;
	b=VZt/tglWFue4JWvx+p7Z1kBGZ9yz/S7JnN+BZeurqwTEqKG1QFL4dVieqJVCUhBDh
	 WL/PJvYwfTh1MaozYlVGCLffuPxJKHKFllcrWC1XWoAPWK1f+Jy54tlDrcL3G4lQbz
	 ++1KWyE+sTzEt2tfz8WQDe/RjxVzyhYj0sB7Q8lILZFEPzZSjRNBZPToiwKg9cWjmQ
	 TRdm8C8y7B9GUMONZUn2gaR918gHUne9ew1JTE4RLRRxDma15kgt77C6AHMCJPW2Ud
	 aN+KBEq/+e+e2VCU5KJ+Q2JgxOzGmwxFSpjpmewmyw5zxPfDGQ7zIH+gil10Ca6A5P
	 lweZkjs3DtMzg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9212DC54ED1
	for <ddprobe@lists.linux.dev>; Sat, 28 Jun 2025 06:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175109399357.10296.12557748336157424007.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5730861cb2e75abb87e10e7c9b4f0d0fc86a1ea98fd96acc0a8b8e37df925e8a
Date: Sat, 28 Jun 2025 06:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751093993
