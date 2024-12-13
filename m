Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38B9C1F6674
	for <ddprobe@lists.linux.dev>; Fri, 13 Dec 2024 19:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734118554; cv=none; b=edYZtJBXc7iTL3eJnIBnbRu6GbjaEjyDl7ARsqcplsnpR+pc//FfOrha2FnzOyWL4rwZhZkf8B7YTE1XxRNZ2jS/SSqQx3eJDlyrnipwz7FHv2cOYiFVt6tOjlb7nZgL6WnyaNB52h9IpA1Q30+sahZSg29kUwDGiUhdWO6XadA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734118554; c=relaxed/simple;
	bh=z9/AWgtHnAVHIvkD2AuzDDqZNQ+JTDgGMjHiX7JRM/g=;
	h=To:Subject:From:Message-Id:Date; b=rXP5xKasC8ynt31aKNzvMRJf4bh866Q6vWguNdUnFNOMfxaD1+6AJUlNYQ5dib18TVzUqWPOkRwIoXRJKPyh0os2XCNCk+W6HfHlerIoJ54lFbfH2GkynSVxv3aj9lZHSu1UzwAlMoV3+JRM2QLnQPZvl8qITO3uyNqK96Ut0Iw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CHJciT7H; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CHJciT7H"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3BECC4CED0
	for <ddprobe@lists.linux.dev>; Fri, 13 Dec 2024 19:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734118553;
	bh=z9/AWgtHnAVHIvkD2AuzDDqZNQ+JTDgGMjHiX7JRM/g=;
	h=To:Subject:From:Date:From;
	b=CHJciT7H7kQ0AziFdw05BlsVeMCKsI4rIhLC/VHENsQWVeCaFwI0Y0JRe2VvB93ln
	 Y4cK7Kgl31RJtf0jw89hLefXiWQzUvJL5o54Dsc6F7QlWmkC8EOOqfVwPz2tbtIS5k
	 A9nJ5VBJvM5egWG8XVAtqPLfkVlDx6KA+sZAZTWZ5D0Gf+YIMCF+Sp4rTP8XxkgJgx
	 Tui41wg6vosN/VIaC0xRYAmZApZxpJ3Igu8VqQJXacWFCtk9tDqeI0rG0VSokrJ9BY
	 TKGPatqiN0lTasjhr5V4APzZtHYlwsX7G3XFvkpRWSma3erhnRwK4ebf/sN83dfNpr
	 5tm6E2o5/SRAw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93772E7717F
	for <ddprobe@lists.linux.dev>; Fri, 13 Dec 2024 19:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173411855359.28189.8401089938669906496.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f1e0c05650ca720e35bef1dae154f8aa28aa39618f6b5cb5e32c7203a2a297fb
Date: Fri, 13 Dec 2024 19:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734118553
