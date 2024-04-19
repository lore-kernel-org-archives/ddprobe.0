Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 69A2D405EC
	for <ddprobe@lists.linux.dev>; Fri, 19 Apr 2024 08:09:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713514163; cv=none; b=qYmX4XXFRAsqZo3JwTF1HmqeE9bo0JtXWMYOeWKyiQ+69VVqOqG1FtDfMFD2j0hJxpqOQa35tGfzNMftlqcGFHrbEkmc/GCC1HLwJD2m1HwatWK3wfaCiJWqfrW5G1m7jlW1fiJqHJShM/LYoMBGsatjs4QeKibJQdyxoAx8U4E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713514163; c=relaxed/simple;
	bh=2eZP7vJAh9VAj8tM6gJy4reVJvOAdESlwhTnmKwJ/XU=;
	h=To:Subject:From:Message-Id:Date; b=FrddLoBm9M4ewrISMrEWDbyGqT1SVlZETVEOZ3T9aTboDZJCyP+3Hgj2RzvNtcY1v398HfGEhwZi56jECRdfXe4L9FM73mZPntHwMRSV59/93x9aoPMiMv/YgLiFUm/+llJEwVKybZKkq79hI3+2tc/wHOckmJnSSFpNY2Q4LT0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TJZSOBQs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TJZSOBQs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E56EAC072AA
	for <ddprobe@lists.linux.dev>; Fri, 19 Apr 2024 08:09:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713514162;
	bh=2eZP7vJAh9VAj8tM6gJy4reVJvOAdESlwhTnmKwJ/XU=;
	h=To:Subject:From:Date:From;
	b=TJZSOBQsgS4U58fVzDcimTYcEELK4mf6U7BMhtGxkU4rXq+kBcUEw0RLVx497/wQI
	 q2OBaNldDWkbpoChk5ERIRBZcwIl7q1A5p+glKCneV4Vo2Be2JtHn/LEG1YhYY9eL1
	 UPDIXyrxVF99N3HVLyxBBICazKxlYJv6IZsAr32x+6eN/3LYBbWCYysLOreNdCIbGl
	 ayZbLBH1IKi0AKQMKH+EL39Vwo+CjIyANe4Yrrx+M4cqXPoZcTv/dg7NVVLAVFthoL
	 ssn6royCj2UZyfQXr9YKqJqwopSAnzJ0u6evYk0yzfDmaVe6rRqhZPSYRBrXQIg35f
	 uuaf3JMBRueLQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D08D9C4345F
	for <ddprobe@lists.linux.dev>; Fri, 19 Apr 2024 08:09:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171351416281.6122.2944867299115185929.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 188be700dc1ee28e7d5963a86385588e70e6e35a7e2c5755603f794e6d77c1e6
Date: Fri, 19 Apr 2024 08:09:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713514162
