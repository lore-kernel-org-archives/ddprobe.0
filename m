Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 12BBC36C9CF
	for <ddprobe@lists.linux.dev>; Wed, 11 Mar 2026 14:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773240294; cv=none; b=SgJ2BtGWmsJmbKkPqw8CowOFp8pvbRwEUdHJGTruS55RA0Ja1J0Ty+hcTwbx/71tFL5q2R+GxiOyzMhN8TK+oMVPT6LwIzhOU9+3FjbXUbrGRQTFqcXWPV1y5R0SlMlE4wmLg9hoLJK2ZtlUOng5rpkX4/w8pYbxKtFbcZDORb8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773240294; c=relaxed/simple;
	bh=mKr74GyO6N3Vm6CvFT6x7syX9j2W4wKivfFIrfBj108=;
	h=To:Subject:From:Message-Id:Date; b=AR3s8mhks8Ub8TzmeVuxJ/idaNJRXV6Zb961TqHccI8FMOtWnHdNX/MpUYMLgqm+RQtAtCxPjS4BND+GVBznv7E6IGDcrUs3DHmHQgOQiD9XCoQQFKgzNrOXogOGm0bH/KUsX1sDU6NmktifmkanTnJvNLXtg/o9y3QN6MiYzEs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aniUd4wm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aniUd4wm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AFF0EC19424
	for <ddprobe@lists.linux.dev>; Wed, 11 Mar 2026 14:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773240293;
	bh=mKr74GyO6N3Vm6CvFT6x7syX9j2W4wKivfFIrfBj108=;
	h=To:Subject:From:Date:From;
	b=aniUd4wmWqWphFI9g9l5FGib1mFeia2mKixvnTnNUGigDqDUTZOGe4Q6v81y3zWG5
	 ciMhMqfpeYzKpG1mbmHrdiF8iBi/6Yo+ekGySCKgM5aXpoENxh1bpmHt7tPuI1qT4C
	 9huT1/tKZUaw4LzMe7AMJcvVzIThNWOLv1+wugXlGL9KG3j0vAKcStJF8CtPXWez/z
	 MsOVTwpnTqQ2vgzrzH9E7kW0KDa26KMunUdpYD+im3n+R108XN//y/d5A+N8Yjdi06
	 k/msmn/ozVlG/pqUT6SZQI3kqF8wt8FsaW+1gIyjYRSNqvO1zbkHrHYnL42bGRQWTp
	 PT1G/4+jGrnRA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9FC17112583A
	for <ddprobe@lists.linux.dev>; Wed, 11 Mar 2026 14:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177324029364.19431.18203609091895914680.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e81f2f987b8955c654b32a4851399c6a25d92f70f4b817be6491b8345d09d308
Date: Wed, 11 Mar 2026 14:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773240293
