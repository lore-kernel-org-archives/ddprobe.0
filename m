Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42006208DA
	for <ddprobe@lists.linux.dev>; Sat, 14 Sep 2024 17:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726333554; cv=none; b=L1eqN4aF74lLZt13utkELBbOj+BpWuRMaGF89y+dvcclOrbNRbB+dCM1vZTFup7NNINQhhVDaCqwsq5TjnBJzamfcnXxXisjV2LoofROfKHjjVvSVTfsYU9P+VkZhCdZAAc4qYVKw9E11yt77BOHg/1EH3+MGAN55obGvEQ4nhE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726333554; c=relaxed/simple;
	bh=rUQjD9SzBZqFH7D+iGsgG+20LQot8NhGMYauUwD975o=;
	h=To:Subject:From:Message-Id:Date; b=MWKKvUHb8ACcny+VajLl9nhnJxKrbrBw5bv67YfGh+quyRtrKzsKQgB1o1BL/lvQFO6+EOnjCsfMJbEkzZKr4b0tp9TYdMaI6qnrK/Z6YWzHykOX8hGzwCr325Xj3wD9RUnzrDmncxP4OT2w08dBpYcWBUtmB5ECRKGkrq4iyN8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oh3eI/ff; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oh3eI/ff"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A44D6C4CEC0
	for <ddprobe@lists.linux.dev>; Sat, 14 Sep 2024 17:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726333553;
	bh=rUQjD9SzBZqFH7D+iGsgG+20LQot8NhGMYauUwD975o=;
	h=To:Subject:From:Date:From;
	b=oh3eI/ffE0Ul0JK+hSAXXCbzbioBCgSg/p63gAI3K8GwIiIkZsGpFqmvFZUX1Lx0B
	 srAVYpQeBEAs4djIkyn5434p9dY1C7nDBIfUGrVXTX3wHaQVtZkSLpH3PvQA3/Tmqf
	 gNCs1gjryJ7HrheYnoPWMSPrfbLjzGiteKr4z8OrH3F2IdhIZhldJVAzm0xKayKLvJ
	 HcBo7EIFHUap9hNs2UDshcs2QGIFffry+DiFjOcLwi/X3gkYtYimproR0gdxFlL1SS
	 eKib8NTNo3LRKNDDAxPD8ttx3x30Gn7XrwZFfpDgoXmfVqCADNIa/DhO+qq7xkToAm
	 QV9l44vLfSD6g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93652C021A8
	for <ddprobe@lists.linux.dev>; Sat, 14 Sep 2024 17:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172633355359.19117.11529893980928927565.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8d3de3d869dd5620461d6f78342114803915b13b1578f5ff78fe38abd8aade38
Date: Sat, 14 Sep 2024 17:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726333553
