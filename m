Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6B4A35B1E0
	for <ddprobe@lists.linux.dev>; Sun, 30 Jun 2024 18:34:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719772463; cv=none; b=TLBmIZJ+e34xwXp12sEoVaNoJm7GOhpiYFFNb/ocLa7R1gKEwumoA0ymKqwChH+zAzQVwoGPerxY9yv3Z73TD39Wu6wyDG5Hlr5UTdwCmQizyMjCLu4mBIrv/dg8kBl0FWaH+onaG0IjuhsBBKBTSpuRHK2SYHZL5SfSV3XsB2Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719772463; c=relaxed/simple;
	bh=J41X3cKbHZZfDuV/eWdNkNtzC6B2kc6XehMn9bImZlw=;
	h=To:Subject:From:Message-Id:Date; b=huVrDtD0YZJyBHjH4hp+9Brn0Xc8NOeYa/Pv98McxePgtQYo8xWGI2wgNLrWHn71DD5yqS1FfqDMpPPhARIMZe72zxT75XpuKTOCeY5txSPiK2kTJPdFaBsUSvjMs1J3Vrw7ijxt6iCEYZBntgYMC1oNuGg1YJP9q6hRKMBP/q8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YI/9wD6v; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YI/9wD6v"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9CC7C2BD10
	for <ddprobe@lists.linux.dev>; Sun, 30 Jun 2024 18:34:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719772462;
	bh=J41X3cKbHZZfDuV/eWdNkNtzC6B2kc6XehMn9bImZlw=;
	h=To:Subject:From:Date:From;
	b=YI/9wD6vQw0x9SocW5JnNTUH0wx3dLv/SxjpIwTQZJQeR1FKeFK/JEQO7bzbYhWiE
	 EECxVSVof/L3eiUslSIN9rB0OY4Nmhfk+TQzXhu0kC3l7gBpEM6FvEJ7LbpTnNKToR
	 G40MiUDgYg79HED7c30/0veifSu+GCCZ99YMWdzY0PRKO/7i825mkHEBNYpwXUcl3r
	 mBSRvTTBM2RPkHP7r2dhSTidUuM+KphofoTBlOljCCJdKGf/XuyWPIklnW6PerFqhg
	 i3WAnxCooBMH3T3JwfG4NN5/y8qlncI+70tQKYAG40vnOYX2CwnsjVHLil7j6P5DoC
	 zzjeqo5e6vFkg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BFDEAC27C4F
	for <ddprobe@lists.linux.dev>; Sun, 30 Jun 2024 18:34:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171977246275.30534.13446014402597751615.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2b3334e9d7b3bcf71b221f9d0bc77d97965494363c028fc7ad4de0ffb6e0e6cc
Date: Sun, 30 Jun 2024 18:34:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719772462
