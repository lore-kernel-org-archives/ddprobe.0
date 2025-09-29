Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42C7E2D12EE
	for <ddprobe@lists.linux.dev>; Mon, 29 Sep 2025 09:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759138795; cv=none; b=Cvl1GHVi9Vz4FiuNDzhZgglsSvG/d7ZOk4SUsYv8g9uD8udzyRjEBEZh5LkHLuLPz08Yl0M/vnh/ubbUgrYmlGTu9OUpRfsGXtN578ToImTMpLrAXvC8/EjJlX6b5sSJhWO0kzt+OnUHC2sEtdW/mtjFwH3GgfO8RHj+OBXUPH8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759138795; c=relaxed/simple;
	bh=KHZ/rVyDlEOHKqs4CGvRpa7mxBqVh4qaALLYaliaJug=;
	h=To:Subject:From:Message-Id:Date; b=XUTNL8DxL5OU0a04BRhKXR/osRF9IA4vNMtIM3geIeGo6qLZSIQS/Xd6zG4gFyoibI23QCsf6QlX/RM49hXi6acjkSxzQu9o7cMS9HUS+bPPuVetC4lYQMAdtwkIZ6JWg04DR+YgEJ1lrjH5jvfM9OZLahmRiuZI7l3XC4Ga+3Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XpcmoYtq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XpcmoYtq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4B63C4CEF4
	for <ddprobe@lists.linux.dev>; Mon, 29 Sep 2025 09:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759138793;
	bh=KHZ/rVyDlEOHKqs4CGvRpa7mxBqVh4qaALLYaliaJug=;
	h=To:Subject:From:Date:From;
	b=XpcmoYtqWB3vjHFIz8/vj+1aOPtLI7PiXfCVZGrz/SbKcMy5IYPLCj42Y6y9moLKz
	 mavdE6zCicQcJK/Iv9vm5bdf7d2YyNsVAagDpV1N8IllJv6kT2GoWOYt2Z2vU22EK9
	 pXWdnCbsOKEOYlCVTqIn8xPwiVp9+pTkhlWPwnKo8YhWJXkQAQ01g28UU7bn26UrBR
	 QPpaPR2k4IGIxxRCU7S772WaA4NlBpb2mkyw6KuLLTyb/eWzwtFnEeqfCxbSas9h+I
	 FP8RIJ1ScVLar5gupr9X+cqn7McuHpnqJAE8r/NxFiBMk4c5EBIrLJ3QcDfAVObYQG
	 NDeXZc3keAvog==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A2411CAC5B5
	for <ddprobe@lists.linux.dev>; Mon, 29 Sep 2025 09:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175913879365.14225.12800370122524316215.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 82f9bb142639fc3116d4e626b66324e55f678555dbb2218603b2dda6d7afd52a
Date: Mon, 29 Sep 2025 09:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759138793
