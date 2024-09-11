Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49CC32F30
	for <ddprobe@lists.linux.dev>; Wed, 11 Sep 2024 00:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726014354; cv=none; b=uHTBhUEhl7EILLouEjGL8wlhzBXM8Bev+k70u6h/OKdl6UtqZMa/0CvHak1YSeWquzJwnypuUluR4KnF3gfsdAKcXI6AYX83CopLpq1af167WW4vttbsmvWuyquEpjUILlk445bPaUjDZcx5Ou+zFSrKYBiERsutRx6esEUZ8aM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726014354; c=relaxed/simple;
	bh=8Tr1BJ7D3wXoFQWogD9NkNqvWh+QiDeBAww1tPNTB+w=;
	h=To:Subject:From:Message-Id:Date; b=AqKGNAs7/7DvjkYf6zrwdiqybCca/F+hotoWv9nQYXqIzRjg2ZoefGp2vabfToTcYkabDZlqDCcwS2ZAS/5rLhzcZjO7wVxukimcOsqA9RarUCTPj2JswWbK6l7Kli6x9BZrt/BAzH0qabEUF9qkxb6mDxJu07oLX8v1g2hcL4Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EZh0q8ib; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EZh0q8ib"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA68EC4CEC3
	for <ddprobe@lists.linux.dev>; Wed, 11 Sep 2024 00:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726014353;
	bh=8Tr1BJ7D3wXoFQWogD9NkNqvWh+QiDeBAww1tPNTB+w=;
	h=To:Subject:From:Date:From;
	b=EZh0q8ibtWO/gjzAlBUkA/oWtIDhBe//uQEWnHYOvsZ206khTQ1pUI1jY7SI9x+vw
	 g7DwAnCqvjy5PzyK4ve+8rQ8y3XkZtVr1xovYQR1fDlclqsqG1xtv+hbnzm3sN+rgR
	 Vu4YFGwmOSM/ef6ivdl8hzcTgNxq01atCghcVCY4AdsxV/UxJUPepKDuFzlonFqLUp
	 V0cGZn2E4g/chrkU8SKRpDtzhjwAzF//5B3bj5GD0UmbVzpw/5X4qlxN1lCU2OB26D
	 KAeYOaoBrEK7TZzCwJmbPvBTMlbUiEnXKYQIF1IE+3KLE+7/usaTD+1sJhuVQzDlnB
	 +tVhVtGmTypKA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97343EE01F6
	for <ddprobe@lists.linux.dev>; Wed, 11 Sep 2024 00:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172601435361.27355.17205794458563864825.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 75178ea342198bf8516dfe474bc6e0c6b3bfce73f78acfc28b4387be3d360bd2
Date: Wed, 11 Sep 2024 00:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726014353
