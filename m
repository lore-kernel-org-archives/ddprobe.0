Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A79614D44D
	for <ddprobe@lists.linux.dev>; Tue, 18 Jun 2024 23:09:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718752163; cv=none; b=XsVjTng0qeflDxrFx7fO6cgivLKkb8Vx5EFcW2FO4J68OQCwKNnslJf+KgyOmakUwgmro5zMdBF466XNvUDU+8fQ88Gumg1ffHuucrXedDW8M6G8a3pGZxPJHmEXl49ZcFIcS5PJK7cIlM2v5OWcw5emZVG3cdn1G0qj+yKrfK8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718752163; c=relaxed/simple;
	bh=kFS88do3K3aCXsBUUtw11e1xzApU4mn99Hv1K+iJMPM=;
	h=To:Subject:From:Message-Id:Date; b=E4qRn0ZOywQa1X6lY1M7YeVc2gsIdquTR1+spFm1l8uh1lGEN3PFYmGclB9ImdjfyhhMGDH/H8sR9z49p7JcdPUCNpZn+E99u8URo6T4CUQcmmysuNeWTKiK1l/mbkbqS5qKj7iJon38euZROB1HzCve3X4BY8ME6M9lANQhpnA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FIj9ZqiR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FIj9ZqiR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E4CADC3277B
	for <ddprobe@lists.linux.dev>; Tue, 18 Jun 2024 23:09:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718752162;
	bh=kFS88do3K3aCXsBUUtw11e1xzApU4mn99Hv1K+iJMPM=;
	h=To:Subject:From:Date:From;
	b=FIj9ZqiRuq/c5DpP+LVFOZCuEOwqgAnofb/ZdW+1GNVC7Wzos94VNtI3n006jVj3A
	 OQ4sUjUjEv9VfdWJ71Q1enRWIFjOGOao0gVi/6X4lYR+SUjMq0Rqf7jnXsIRi58RUu
	 jVsfycAm95MWRhHes8BnwEB6+PwSrQB3yplEWcc6l3Lw0VKlaEvFLM9Q8K2J0rupqx
	 GZTYn70WwZguA6TmQois9vJPhcJr3Grf4kEuLQIPsXlpq71gl15V+8iXNfVzOMMyP5
	 XFgPFUswWrl0OP8elIXpxMuz4UkY7WFMXPHFZea4bPIgHowZviOzlaHfTVSJrq9wLU
	 8sgt6NYO5emXA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CC708C27C4F
	for <ddprobe@lists.linux.dev>; Tue, 18 Jun 2024 23:09:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171875216282.22316.17961097416492466795.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d9e44d25bdaca923bc6ed20c4b148a0bbccbc4f9ea7ca3192f8d17c4798f604f
Date: Tue, 18 Jun 2024 23:09:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718752162
