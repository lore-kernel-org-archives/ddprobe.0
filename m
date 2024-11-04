Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FE341CBA1E
	for <ddprobe@lists.linux.dev>; Mon,  4 Nov 2024 20:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730750754; cv=none; b=o06C4NTi84WtPW91X7982YZ9goJNuzi/Rki4/JF9Zd8A+o92mw0L89LGOuyw3ZVFS0EeCOn5nCTmL1ZPOnAkbv2WDNIiMrA0yFWJMRBfvmjVSRDf8xfhr5kZJ2j6udC9nsAxRuyI9zhCKzeS2KXFvizHMlzgmMkFeQUO5s3CPLc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730750754; c=relaxed/simple;
	bh=moucdsH1qDBhVE3JEH88IQiTcdQl36dwoATdSgt71Wk=;
	h=To:Subject:From:Message-Id:Date; b=Ot/ThuSwk94v79IbZb8tbuVp7fDGcgf4dcQCO151+e0JyA6rt6WZDE3qNhlK0InHA3xovCnmx3jd250SbcnKIh0QONHZBPM594u8PKwd3RJUhjBMrQ9DQMk0jbyeuKkvEh7qMgEBtTLK1ug13zPkZUWq2SLXJIe+ikYtNkVKAw0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HKzmWJPc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HKzmWJPc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A78DEC4CECE
	for <ddprobe@lists.linux.dev>; Mon,  4 Nov 2024 20:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730750753;
	bh=moucdsH1qDBhVE3JEH88IQiTcdQl36dwoATdSgt71Wk=;
	h=To:Subject:From:Date:From;
	b=HKzmWJPctsYCMRbxPeyXB6RyvHGoqBY87IejZPeKAq0ZZUY0jj13pvxecK78m1+bc
	 EEUDTzSWUNtYxXFJIcDWuAEFAqUTnYRlXqaGJ2zExrrBh1a7YghoaYeEQRSFmRd3Ze
	 pl12H1Nk49qpHYDLg465XRSpxFCmBl2XC+I7OpbFXTPi50qqemLQsKBtpGrR9yOihY
	 HCxp8JaG80k2/BAIVKGbrnyk8btWjmsp8zMVYr4LN2WbpzoZFI7uY5tIoeHwaNaV2j
	 yH+q5qScXGMuxJzMDEeI/UsVCM50HXF5+5MBLXdx41kgTReSTWSt/YymiMrgad5kSe
	 3BBVfzw8X0ouQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 942FBD1BDED
	for <ddprobe@lists.linux.dev>; Mon,  4 Nov 2024 20:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173075075359.15515.4788155559203014219.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2c500c10b1aee3623e694322373e2a006cc7f39558f528e9d5aed92e3685595d
Date: Mon, 04 Nov 2024 20:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1730750753
