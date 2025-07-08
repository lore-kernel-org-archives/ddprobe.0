Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2382A298983
	for <ddprobe@lists.linux.dev>; Tue,  8 Jul 2025 07:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751959794; cv=none; b=iC3Nf8kG85A0xxOXCdiik49XOTc+YMVGEpa+vnyWFcvDFQBJ+jGJ8m/6ECDarPE76UqfYRz0A0g31dzpIR4vwz+eqbaoYK16XokYS8vI1pXldkyaGGYXnVjqNZMPFsufQBSb2Ve/A1gd5GNqk6bGBa6rDqztR2HV6oiUCsPVQ1w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751959794; c=relaxed/simple;
	bh=mfG6MO1ZD2uB0nqTvxK9qnRdFLK6Zg4TNqAlu759iQ8=;
	h=To:Subject:From:Message-Id:Date; b=Yg1nGvHiE/YrQQrSSPkzbkvCnSl+IBpwIbSi1/IAy1QvrrdHgf89ZLCK15e/QbiGaKI5YaZ1tFX7wYDXUXsxuIgPLymNrrX5cMta4TIMcj3NeJrO2PC6DwL4YyoTQtHG6lNW+JVD05StSGB/NOXvrpZUYP9SxJPYjpxKwJrpx9M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hzJLaZ0r; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hzJLaZ0r"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1280C4CEED
	for <ddprobe@lists.linux.dev>; Tue,  8 Jul 2025 07:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751959793;
	bh=mfG6MO1ZD2uB0nqTvxK9qnRdFLK6Zg4TNqAlu759iQ8=;
	h=To:Subject:From:Date:From;
	b=hzJLaZ0rvMEOfIo0UtqDwH4n5uheoPT7cWymaeiUkSJn+skUqwzbzr3Dtig0Sjegz
	 U5kbKWAXq03z9j8YLaflS24AaOJKJ211cd4QfLdEAHJBg92PwpAfMAFlPpwCmVCx3q
	 VMb4RsxlJRzRnZNAIYJu0R+XIQ/9oySiBDPXmli+o0bY/D+ojSEI3xD79D1PVuagUe
	 jgdcP03+kGCCmMlXrj/8ItwIzDjpsxFIcjT09jcBZ3uUrFPxxLNzCowxfoLAU54RmN
	 Q7mj809ZuLuI6oXEIis14RmRHgsaALIn+NiWC34D1u5OUmP5NjYLG8wuFR2GM69iCC
	 Beh2auM2Je/Gw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FB52C8303C
	for <ddprobe@lists.linux.dev>; Tue,  8 Jul 2025 07:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175195979358.19802.13432326427971409718.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8f975d762ff5dfa2d775cbf5beb11af1d59ff3a941e76ca1289b57c8bcf3fa39
Date: Tue, 08 Jul 2025 07:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751959793
