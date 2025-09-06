Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D8632165EA
	for <ddprobe@lists.linux.dev>; Sat,  6 Sep 2025 06:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757141994; cv=none; b=d8ldL4xhUZyvab43BdSTF81K8Od4Hbk3b1MZLSs2jXxrMpJFX7pk/+T2/rGUhJkCXKXlyRdicGacmcWM1CWuEVkSE5F2+z7O8cguoeYQOLpMM1jfubViremGq312aEzj7WahAuyJvnOEbPd2ptVmYrJuB2ELB3dIsSbWeeUpKS4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757141994; c=relaxed/simple;
	bh=zc2l8fMAq9PWAHYhrcPqvq2UQoGou9QCytuBN1/bHAA=;
	h=To:Subject:From:Message-Id:Date; b=dsBkVfwUtK3WYAWoqvGstZhrsIXR33vE7gNYCKxyXbIgkuB3IgfK32MVwXy4FAaCnNtQaDv7/VV+o/thwE7LSczR/Zawix7QzAOsJc2ewfEfOxMsCk5UXLwX/WL33WXJ11zw45lF22veDqbo0DVWetiCkaMkiLuZHW3u7LTCA+Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=s8HfD+a8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="s8HfD+a8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E6DFC4CEE7
	for <ddprobe@lists.linux.dev>; Sat,  6 Sep 2025 06:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757141993;
	bh=zc2l8fMAq9PWAHYhrcPqvq2UQoGou9QCytuBN1/bHAA=;
	h=To:Subject:From:Date:From;
	b=s8HfD+a8XwexrkQr3Wu+YMfPW25i8jV3zdsF8i2uoKI5+yH7epzWcZLzjYJlPsWqP
	 vFuMnDfoZbuoVQoZ+jDRBrcH8vteZ+RhRXTOVPFM+cZHdjQzRQirRi9oBhnak2Mp1M
	 SkdEEaty2Syqk3Y1Xkha7V9ntgEuy6lPinMXO/dbddPUuRc+vtcal5DGM2d2yBiK0g
	 GtZ1eOrZ8kuNNAaIeg2j83aG5oyJMFTQ4uimIqAMxjPFoENk0fQ9OzyZivk0U4EkVj
	 AbOWUPIhsrY67IIcw3U6ganPQZHaFlvEBHos/sI316rwnmLMr9hqn+OmVy/1FaA3Ar
	 nanpld8ynCUew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F242CA1002
	for <ddprobe@lists.linux.dev>; Sat,  6 Sep 2025 06:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175714199357.11299.13577982032164205785.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5c2dd3477043d69c2a85f566bcfe66c98721290e5fc06e9495a565d731ca63d2
Date: Sat, 06 Sep 2025 06:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757141993
