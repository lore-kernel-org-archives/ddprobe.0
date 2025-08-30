Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 247561632DD
	for <ddprobe@lists.linux.dev>; Sat, 30 Aug 2025 15:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756566594; cv=none; b=mr6PBDnG0RF0+DG2cBRAJds0EiAvlZDxQ28k8WgvA8urhVAEYjJYy/5it1vTPEq2uP1RMm47yO/cC4jeIz/qkFJo1swusSFOXHemULjl0+1l/JJOB2LO4rMAf9JNaFFB1BNboD1yfjYL1rIdqqMthicAxoWscy6CdG5HsOtRvH0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756566594; c=relaxed/simple;
	bh=m4Inim4orFa9IVDUdDlKgbY9g3/1hx+q8g/ZeXQCJxA=;
	h=To:Subject:From:Message-Id:Date; b=V0buEQeazN4+AOKu1levFv6Yd8kCjz8DylaP5lw32frM9LyO4jWCABo6wGnqiBlixSpq3J7SyjfYjQb7NB5fv3ijkGDfR0Kz/RYCNf48rbyAv4WAB5JT0OnK3zA2DlaI/YD8cP6FVsAJh/JH8ki7nvuHhvg3VlCSVA7kUA03a8I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=t6LkCN3t; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="t6LkCN3t"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A075FC4CEEB
	for <ddprobe@lists.linux.dev>; Sat, 30 Aug 2025 15:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756566593;
	bh=m4Inim4orFa9IVDUdDlKgbY9g3/1hx+q8g/ZeXQCJxA=;
	h=To:Subject:From:Date:From;
	b=t6LkCN3tF2FoIhEUHiHay2FkXZcDsyD9AHGG4SZX85CTRc+TLq2V1eOiEAo1qexB1
	 /1ht3ujVeGZ70kaVVqRIvSmP+CgXZqk3aooK3Ik8n+9B7VM3bwFwVKuOPEi6uLc1H5
	 xTFVICaUI9V7cxWVdYxjT8cXCwEGbXbYJpLk8WdDn8jn3MeFOxB8Hh30EYe13uLvjI
	 pmyGYhqL/ojzDx1NIClCR3wPSMQvD5mNFFfPvg4VuEF7d0Jzgdd0uKI/JGYbzQJRvb
	 piPvV+K9xAW06by2prL/h9G1ghba9BxGsL1eaBS+CraoA6Xgf+/o1iEFKX6wXaIqJe
	 vOTbqNlrWGyZw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F0F9CA0FFF
	for <ddprobe@lists.linux.dev>; Sat, 30 Aug 2025 15:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175656659357.8893.15349600774128808619.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1ce6925e7c171f9858c92ca34268d666f00b8a590ff1b98ee2c1808b4261371f
Date: Sat, 30 Aug 2025 15:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756566593
