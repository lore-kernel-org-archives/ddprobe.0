Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 137A0313279
	for <ddprobe@lists.linux.dev>; Fri, 12 Dec 2025 09:32:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765531974; cv=none; b=ddl+hZqDjUfv/X8hfFe2DBcMpS2MrOZet7/gm94QZGqgKoxbJEGg5fIr76b9W/jaEHBMmm9fRrRYErP6X2jBCUtS5L2L8XzTl70BRB+fJf8y3D96Zuq1NQgfB5HSIK/H2AjfvL0puUGTMbayuI8y1PNqM/eSgPUmpoPlg4gDwWI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765531974; c=relaxed/simple;
	bh=BiAKHgbAiFvt/7fHtNJCLpA+txrzMWLXy5Aj7/aSi78=;
	h=To:Subject:From:Message-Id:Date; b=EECaLviB+u/a7Dqsu/u4H3/hCrYznWGfD66H8cT5524ybdQMv8ImCvTRMBtCGw7tQIwtAs6FLqq2yhKEREnFAUeCXB3Gox83gug/kFFUjzlvIv2h8Uu4nYPRA71jZmrU1tUchZi705YmwKf/yuv9YWN47ACAzXOkdPCYTTDCjvc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AwHfcp3+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AwHfcp3+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A31BFC4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 12 Dec 2025 09:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765531973;
	bh=BiAKHgbAiFvt/7fHtNJCLpA+txrzMWLXy5Aj7/aSi78=;
	h=To:Subject:From:Date:From;
	b=AwHfcp3+qZESkZvccPmLKKpcKuIyv/AIdQvFsiSlvvD560SqGvVSQmJH4bWMWGZBE
	 AF1NcvGoYa4gDU6V5VJyzjSUV+3bdLKKyxhhHQQ8alsfc0JHzoWGMkHBJ7UyIrRHpS
	 iTQ6zUxDclDQtMMJTzUVP3PQWgYc5N8cF0a/4WIVO80JJmXskN1QgtWcZ+xxAjbvoy
	 UFakLEvptRQN2o+yNiasw79WqMemiz67p3arnaEHB2+GYn8roGyUhWWIaZX/NmrYu+
	 EMWP2M6tryouUdi396uN7p38XaOSEKuy7RRY7Rvs/wfJtLjtYFIxoQM+NugpqRpVdT
	 bhnKwEp9x+rhw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93765D4415D
	for <ddprobe@lists.linux.dev>; Fri, 12 Dec 2025 09:32:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176553197359.32444.9289004987831337984.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 164db4e08a6dcdfef25ef77a9d06a90175ea6e31f81c1de11a2fae78a7ef92b3
Date: Fri, 12 Dec 2025 09:32:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765531973
