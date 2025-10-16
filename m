Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BE568834
	for <ddprobe@lists.linux.dev>; Thu, 16 Oct 2025 22:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760654994; cv=none; b=CiatUTBAUMRbWspq75VYgJThhEdaKZw59beHATIQbqh6hht8c4JCrNwSvwRlgl1mREyaywVxSyMXuB/zT2P0SKOlRTjLSam7LPRm11EUbsW8C/gmiNDb0fYL8Qid8RY2ajfbMohnGaYpU8F8hEtrFQaChqHa+pydtD6/8pz1wD8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760654994; c=relaxed/simple;
	bh=oPo6Mmuc9YCrJg9N1JLOU4wYbazgcJPCIQcBh2/U2TM=;
	h=To:Subject:From:Message-Id:Date; b=S3Y6cQB4r1u+JnbtOxFM9BdqQ6ZicEM2tnkaUWKy7K2W5N3f68L2NcoxvJsKuePksheCsytlZDNNce+iA65h/Lt0hVkNGyp1saRDOrBdxxuOiUsXU7ewUNKgzL1Bo8L+FOkJa0/zRGcBQGzwh+dfiqgFLqMU1zgUpKS8r9R3dhQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QEPF1w6o; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QEPF1w6o"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9F4AC4CEF1
	for <ddprobe@lists.linux.dev>; Thu, 16 Oct 2025 22:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760654993;
	bh=oPo6Mmuc9YCrJg9N1JLOU4wYbazgcJPCIQcBh2/U2TM=;
	h=To:Subject:From:Date:From;
	b=QEPF1w6olRP6N27GZUDb48luibFNKhY3Pypekq5OLxePOI7EDRLH4l/047V+WqwHQ
	 b+O6wLQrkKHQrCZgx9dPQ+4T/D4ZeFFZjtFG3dQ/RVMqOp9mmBXlom4RGEcvMe0lHU
	 pTvTd26xYSqqHolMyzIWr7XiD/pNEBisQK6SiM+gmeWT8MaKaVmOupS3G7pFLFURvJ
	 nFPCpYQcg7INp+/WwL8Nh684Vl7y7laBb0cYED03WyPt5xg+qTcWQIkwfsPv5o6gZj
	 GtIF2nIdErvT9MXG/WFZDsMD9dKmz85UwrrKyi4N1nXE3lAibjr8ZsjYonp47peZtp
	 gc6FrrVigVqaw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94DB3CCD183
	for <ddprobe@lists.linux.dev>; Thu, 16 Oct 2025 22:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176065499357.4591.8871074669061026395.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b1ead7ddac5c78865cd4118b52f97966724d6ab5b476c4a0a1f44612f39c556d
Date: Thu, 16 Oct 2025 22:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760654993
