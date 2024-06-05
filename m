Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 82A60637
	for <ddprobe@lists.linux.dev>; Wed,  5 Jun 2024 03:46:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717559183; cv=none; b=LbU6fnP9vKcHKmKMb2ukO4uFJJSQnuDimR3pwCR4j/HfmlCFy6Cq2u/zc2K2qkSW83bZLI/eGcAnYvKTneKP6g3MrbX49MUk9xT8H7cj32DsvEimDAOOqmY4B1CJO8QIfuwn2dI6QKmHeUKTyF7D9kTzBetiXye2LTRxIvquplM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717559183; c=relaxed/simple;
	bh=YIXC23l4VkrqXBMWj+B8OYTEx168XE+5T6vY8sT69vY=;
	h=To:Subject:From:Message-Id:Date; b=o0wFn29OEKLxQlvohEY/yNfSnD2lhMN7BqawQo2DNYxOat5xPCsq4YaT3OYtX7RDdKKQvTUG3lMp8dUueczqtGE8Yx/+0Vwqb3yDqWeBR2VcZj9OmSwgoxcXBDaRveMaAMZoApQkUhGhNmqM+T/Rwl7zxxXIXSLgsx61McHReyE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HdetKJu7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HdetKJu7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D486BC32781
	for <ddprobe@lists.linux.dev>; Wed,  5 Jun 2024 03:46:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717559182;
	bh=YIXC23l4VkrqXBMWj+B8OYTEx168XE+5T6vY8sT69vY=;
	h=To:Subject:From:Date:From;
	b=HdetKJu7Igei6SgL1zKQ/uTdkexaKZ6OcnBYi6+QAioC5MP63fPIC9LmezpigzxHd
	 8vFcPfHujK7aGIj9dpjqjM5MHY+4jgHJtsdFgKaxfAzOxh2DX4ZNCNVF/ELOxgVY/R
	 +EztM/H7wtZ2yrg0Ks5pwgfrPF7TLYcp7F7BW14Bh9lc35VKBjL2bwPjLYr5xkgGum
	 lq1vQH0/7A0g2J3HemrcuKgSOGdbOYNxKkwsa3Rq0QL361byJ4PFvdMs4DUSYujgsD
	 G7VsDpw6UxxoT6pEFEG3zjTYfbS1L3ZVqE5VtGRtXjC5vSQUbG3ZKuMC+UbBWcbIRe
	 I8glMNzbdDxIA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C09EAC25B76
	for <ddprobe@lists.linux.dev>; Wed,  5 Jun 2024 03:46:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171755918277.26687.12380501796592518046.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8cf5123ca29db87a5a50dbf5700a3c9551428523bf6684a4e891c93df642137d
Date: Wed, 05 Jun 2024 03:46:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717559182
