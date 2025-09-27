Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22F9D17B505
	for <ddprobe@lists.linux.dev>; Sat, 27 Sep 2025 01:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758935994; cv=none; b=boFEVSCBJU4fpzUoNZSVrlH0kR6s8yY4a/B8uoM/re69R2psv+zYdgEnZPdqNJx362WJu5/ZM5HXp5vrYbhC7S1I3/a7vrBiSppCY261syNIWZjOSTTYrWd1257sFxIoczpgOvDwBkroaY2hBkAPFNSQinVOLtOwG2LebLB5neA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758935994; c=relaxed/simple;
	bh=5rpE/qF8q1SyQPJOUJdpmZwSnXWDMZrIqNrVWHo1A2g=;
	h=To:Subject:From:Message-Id:Date; b=Z2x0I5h5NCxGAGla4VBXnawASNsyaD3f00oQfF9BYWITSnNLKsitCGj/B7Gg4XBRNYC0xZIE+lzhw33Zksgw2BYMdHpEy4jScairvPMnf/vNZyG2pQ9uIe2cukRNYdurVrwkvToHLWr/oKOl4tC0gscNpKboKMIDckmByUsqMsw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gQLG+LIi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gQLG+LIi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A13EEC113CF
	for <ddprobe@lists.linux.dev>; Sat, 27 Sep 2025 01:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758935993;
	bh=5rpE/qF8q1SyQPJOUJdpmZwSnXWDMZrIqNrVWHo1A2g=;
	h=To:Subject:From:Date:From;
	b=gQLG+LIiZGlRIqVDRzogI95rz7MT3xbgLNd3dToDI1FyKDAAq8OSrapg/CwOweGLt
	 eQKCrP4N8HwtnIt5otK/zGttXL88LQEyvPGiqkuG4Aekgho8D2m/Ro4jwpFsmjgvJA
	 gXc3vrqgjHITf6MPk6d+AAfSktN9yQyrW8CtLTImIj0pJoK8zpANFwlsHyttwD5WAw
	 KDf+i+uWuX/mtY+PjpUin5ybOUgb28fG0Cs1g8e56zrHaDfuZcBATh8mx+29rOvMiS
	 /5AijGAvVSDvTEkbChQD3jJJSMGdsAU9hhoISTWz2FLmE8eEFfbp3oPpYg3Omtke+C
	 wHkVCPWeoLZ/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90966CAC5B8
	for <ddprobe@lists.linux.dev>; Sat, 27 Sep 2025 01:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175893599358.19454.15888013422621322135.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bfcea9efab7973aa05b554feeb700efb0cad4257a4afc2c329a8ac7a7f1530bf
Date: Sat, 27 Sep 2025 01:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758935993
