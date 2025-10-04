Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FC61189B80
	for <ddprobe@lists.linux.dev>; Sat,  4 Oct 2025 07:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759562994; cv=none; b=qMKP7w1gfITXTXv/p3r94dpHtzIwiqT1HV+Oxtsi+fzQz1eHskJyfLUKUCjzFOfexrOXP9gPwWMKRooVKEy7tVDV4WzVnuAmQMv78BYvkkJ0EykpFFnzayNqDtaFfw18wFVm0p+std+59NEkkEZ2tukGlcwTOYEfGuZf8sxUrgU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759562994; c=relaxed/simple;
	bh=Wi3uT+Mq4cI5oGQMCKmktaraxr2d3rZSm/392lC/How=;
	h=To:Subject:From:Message-Id:Date; b=RSOqaEp1qfr1R2C6iO185AcGOzYYcTe87i/nuNiRKUBsaShsI2Z71yUs13RkrZR69KTZi60M5VQ3ZGYCHGjKgmPDOLlu5SleLr/lkZbQn/wiSxDypxYeBOFdARq41ebp384fOUVM782yunptZLLd/IQVXtYWFXI01jBxNGGcKeg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Jpegkrz5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Jpegkrz5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3075C4CEF1
	for <ddprobe@lists.linux.dev>; Sat,  4 Oct 2025 07:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759562993;
	bh=Wi3uT+Mq4cI5oGQMCKmktaraxr2d3rZSm/392lC/How=;
	h=To:Subject:From:Date:From;
	b=Jpegkrz5vd+7pSbl6xADu5Car3M/u1qhQvqk97Kt3Kdgm/V9lFfM1BwcCi4lZkoWR
	 9igOjpKn0d/xPFsUbKk/PW6z9rR3DbuyIBjzWAbSPd5gRA1afXdRz0Tuj1CHU48gl5
	 rAHEhgBixu8KFTSUjEMNKFk35tP0YHaxt8AW5pAHZhqTSkGPalOat1Gzq5MTbJSTU9
	 TNUWANzEld2VtrzNcl1RRZdPV65hIs8wWi+0nSSThtH6IFJQ+dDjK7KRw8/lPmOp1r
	 oHN0/wvb2/lmFvsjZ0f+KquxGMeyI09M01w/eYeAMf5Th6pQ6Ea0FsIlNxCkHNl9Sc
	 e01ZeRdlkIowQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9076CCAC5B0
	for <ddprobe@lists.linux.dev>; Sat,  4 Oct 2025 07:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175956299358.19261.11693716484993918006.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9f32cf406bea3d86e4ce5d2eb1040059e56812a65443373e4b67842c6bc85532
Date: Sat, 04 Oct 2025 07:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759562993
