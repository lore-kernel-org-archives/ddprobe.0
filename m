Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3090018C31
	for <ddprobe@lists.linux.dev>; Sat,  5 Jul 2025 09:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751708395; cv=none; b=uey0QphewiC2NiTKOJAamxPjJvasP8Rhe5H0dbp1qtRH+NJ171Z1GB4ikBnpGcEEfQsscaObhGVjAiAlaYYCBTFfguoqtez0iEUN/evWDSjF3HsgK40R7zteL+nOB0WAoDHXF2u894TrM1rXn0Y0rct8sWVmKTRABKop2bSZzCI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751708395; c=relaxed/simple;
	bh=S6w+a8xDXYVdyERXhfh0IYUx8PnjuS2QF1+rSdLaesI=;
	h=To:Subject:From:Message-Id:Date; b=I/ud7PsYAcBI+J2LGCpVRr3BKiiiXh9YPu3uZjYdCIPAwG1tV6sg+RAiBuV+p5E5PRGk0ZtKo2QdxWM533q2Gzb9WhkTkfjKZ1r08luYsi4289HJXdhYwLMKImV0lFYIhXeikxh0XdIlyD+5f9M/vmApB3dh1BYLecljd7kxOXU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Un+rxgFR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Un+rxgFR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1015C4CEE7
	for <ddprobe@lists.linux.dev>; Sat,  5 Jul 2025 09:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751708393;
	bh=S6w+a8xDXYVdyERXhfh0IYUx8PnjuS2QF1+rSdLaesI=;
	h=To:Subject:From:Date:From;
	b=Un+rxgFRUqy4XEvwYaAGHm3fkSZR/PmVHEXSsTY/FvGZcUN8++D+l0O3chmyT73YF
	 vFiSgC0nEnUnTxwj19+wmTtsL8JhKW2wK5LAErmIXnjpsxUbXyJXkG/ps+XVuqQ2Xy
	 US4vY5ksMi2fjJdb69a3CnEE4krxGoQCKlAxpUQCRgUcS4lMwW/WgJlHpsiMIebtEF
	 lDE7BJRZfWOKP5+iiEcY82C7odxZDXdQa24inr29SPxCBosFN7GxpfA9z5KJ0rb9Oy
	 K8UGefVGnIf8J7Q5tz9jpFCpSCUwEcOm3oxhWoxhzxJyIQHcodQzqODZ3p4WDfY3Gz
	 R1p6rXIsmEUog==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E620C8303D
	for <ddprobe@lists.linux.dev>; Sat,  5 Jul 2025 09:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175170839357.32684.14892689281663188883.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7d86a0cb0b88d9c7571bde3de6f2635936d1bc7163be0b52442d5d804937be41
Date: Sat, 05 Jul 2025 09:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751708393
