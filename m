Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 437F2BE46
	for <ddprobe@lists.linux.dev>; Sun,  4 May 2025 11:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746357594; cv=none; b=u+cYD1f6+WS165C7f9YRzKFzTGVFqMN3FCkJRUxDfnVUOcj2xvGI1sXzRnD9pRq+0WaT4PNt1PRtU8u/7HBOMWc0XriVUgrI/Ue6TWPZMuZnLeZ6FvbVHzIEM9Nc7Bv6TUwgTZZbfaDD/tbkLEyWfygTqiUO58L+ZmsiaTw2ULs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746357594; c=relaxed/simple;
	bh=6+5ZpzxjX/CbQdisli5xUAI3XYInA8J5wES0T0kRCas=;
	h=To:Subject:From:Message-Id:Date; b=LK8MwZ68ZmFNlToZunzB4PKxpPbOo5Ja8EK2WwFFRe5zTVgT9jnBVDFDBd8XH4/HJKvm0NxyzweWJdcmMc67CwgzEanrlv2KBjvDL8i57ipAViSfx3b6xvGZXBZBMv43lzCEnT4jcN/Z+I5UxGmwmYRlFLPR2HSzzaZVSuW4+P4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=I/YoSPuy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="I/YoSPuy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A53AEC4CEEE
	for <ddprobe@lists.linux.dev>; Sun,  4 May 2025 11:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746357593;
	bh=6+5ZpzxjX/CbQdisli5xUAI3XYInA8J5wES0T0kRCas=;
	h=To:Subject:From:Date:From;
	b=I/YoSPuy/cm927VB8H0LASspY783FPDNREZTh77i67Z/QnryhFEjL3UobIWlhVkFC
	 PBTHm+svgq4ZhGESaFU54xyxzYehw5+X2rQVn43WXtWkrJI+P+mHDG41yN3zlgKouL
	 /6lVlmorv+PxS7RK7D+a1VCnw79N80AS+ABNZVEofG1aUID9tc3tzqleuFaEA8VPy6
	 H3iQJ3dL8mVy8WPAwTooQ9/7Ek+ToTySdStR0t6CZuOEG5bqLrZucz5VH8u1aysp9d
	 QKKbMxfyiU2vhijrD+kfkUdRHdfmdxJNTAOX4BwUHfEZfy533tyKkXhRR6CrYfc24i
	 PcKQj/C8YXePw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91116C369DC
	for <ddprobe@lists.linux.dev>; Sun,  4 May 2025 11:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174635759357.15914.4750218410592628238.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 87688410a6e8a75209890e3fb9afef5fb9eb32f5bd98d68cfe9dc2df737fe421
Date: Sun, 04 May 2025 11:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746357593
