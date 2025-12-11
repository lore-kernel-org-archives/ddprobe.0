Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23F822E0B6D
	for <ddprobe@lists.linux.dev>; Thu, 11 Dec 2025 11:02:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765450974; cv=none; b=Za20ojKiR42rXXEu7saonMvwl4XueYzr3RhMXG2e00l7v/l2wHv0Bz/roIgh5SMeGyFqAo+khITnsPldlB/TdtQkmf5HKd566VAoyRRNEs0ok8oEeB/7lKizN2tqSVbWsTzsKiaxnvpxbkE4BHuVsBo9pqP3uKQhZKcaAgVEHUk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765450974; c=relaxed/simple;
	bh=enChRRzLYumGByDOCGW5k+9Wh2ea09hlQKfl9L6cBbA=;
	h=To:Subject:From:Message-Id:Date; b=n6XAmbVsT9zhpVoTVPN8tssKv/1LceTG3ECuju4pV0848IUWHRehmoa4RLsBN9e3ruGNPRlYog9830Zl+ij7gKTvHQoOBRX03w4YhVRlo53xxMGhv18b4aUCGo9eSkEHQUBb+ryb2KHRmovYMLXzTD21ZLH8uaE7NtqQUgQaieA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=roaRjijF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="roaRjijF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6BF7C4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 11 Dec 2025 11:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765450973;
	bh=enChRRzLYumGByDOCGW5k+9Wh2ea09hlQKfl9L6cBbA=;
	h=To:Subject:From:Date:From;
	b=roaRjijFKIPnZpKYbcESLwcg9/PCt88MkSXG/Pn4U+ZLq3rQQ6F6jk0noA1r/HAnY
	 DKNPRfK9dprqfifhaQ9OsO5Jf3lR+pupH0A49AyvvRoe7SzmiHHu6AG55qB6cNcmTW
	 F5R+tApkJ+HAkiW0XVafxqAHm2REUe9f4J+P5oHBPuQ02CcDC55NlfVwAtGvq8CIIH
	 x9Qw24awb6E13Sa8Ho7JBsiaKDqgERDhWAnxwo1m0b+SP17LX59rFN3fScWORBDvf/
	 L8jqpfegSJJ0WFMpA0MWkbrYIovkxlV9tx2VYZHktyznLgpr1zvTtF6YuXMAeaQ3Jy
	 pCPPYkdLwgUVQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9EDDED41C20
	for <ddprobe@lists.linux.dev>; Thu, 11 Dec 2025 11:02:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176545097363.1218.12465161408393318325.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f76e4e46203df2706f6eb042a8bb306cab564ea6614e8556e7d1693a1a3490a1
Date: Thu, 11 Dec 2025 11:02:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765450973
