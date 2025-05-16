Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C8C6F171A1
	for <ddprobe@lists.linux.dev>; Fri, 16 May 2025 13:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747401593; cv=none; b=o9d1Z9erOFk1++yQQnluhlm7iqEfF17hfIOPfzHx4XTvwHADNaCkrc0zZXZLrQjwJB2TTS5XrJtm1q0Ri56hBbz34+nBZpPlBBo6eVJWYfx4KFfb78bajLycpdoqXrOUrx9DYxb0LzcEjnzNa3gKw9feo0eDqmJ1aqM2gkJ4+J8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747401593; c=relaxed/simple;
	bh=FFQKya71ZGk4ZxTqE7rrKh6qfWdHMAoYUXvaBk+YpPc=;
	h=To:Subject:From:Message-Id:Date; b=p97QsyBLhqrvihrAPAzfcTGy5jThPy1GElXYk3ZuQbgt/Nu9cinzbvu2ic42k6zPxHfb3v3DWhb8bzZdja1cHuprlaXa0Cu2gXbgknDCZchDQ2zeDd2lKXzt4LybBUvZBvBjegvH6PQqqe1Do80xy31Yxx7yOQUm9iAmIHCpyHI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BHa9Kd23; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BHa9Kd23"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A041FC4CEE4
	for <ddprobe@lists.linux.dev>; Fri, 16 May 2025 13:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747401593;
	bh=FFQKya71ZGk4ZxTqE7rrKh6qfWdHMAoYUXvaBk+YpPc=;
	h=To:Subject:From:Date:From;
	b=BHa9Kd230jBP82ZQHDJzxfC3x/NI4Z9UX4AVtW02CMxRmxK2GEwD+vftP9TCKv3K9
	 9SmOAsFzUzfb48PJAC7X0T/otgxn6Tp7wJF8wrhvnkmN5Xi3UjFQcMp0VCvFyHxFqh
	 pkGiFZ3u8ht+1pgTZXAQU04Do4OEvQaindYR7xgdUChFv9rX5RPW0OgBCKZQfKZ/7F
	 20MFWb2qiZUhCLy5Yz1iBfrRmWY7/z3m3MoaiAWdPuD2xCrRGpf4Wnx9ZdwNcic2I6
	 S8gXR8JK0wJD0x6R3KcuY+/Qt9mUdDEipv/ihj2nN1pBuhjN07X6wFe+NqayBzsGfV
	 u78tfpANlr0cg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90CEEC3ABD8
	for <ddprobe@lists.linux.dev>; Fri, 16 May 2025 13:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174740159358.21967.11393946625751549169.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 540cb7b6c3aabb052498dd2626429b78611bf2b5a4bd0a1d1815be81e0c2971e
Date: Fri, 16 May 2025 13:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747401593
