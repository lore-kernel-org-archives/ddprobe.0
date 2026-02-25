Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 148C529E0F8
	for <ddprobe@lists.linux.dev>; Wed, 25 Feb 2026 07:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772004294; cv=none; b=IpCvc35ihzRMG/vcvWV3EHm4nItBJVSGipGcGUn2rgd6D4J7K3GZxlN+G0wD+BZzBJl2wfrS2CGqYwQnlBc+OfwuiXIWo9XhrNv7oC6MrjwKdm8+ctm0HsKciyAncR8qVpouiMP5sCHNpcQId5C69KgqOovw+yAUqE2iryiCSkk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772004294; c=relaxed/simple;
	bh=Bv3bGzWlNit0FYLwthadfUK/mkZXiIzx61UfFJTp85k=;
	h=To:Subject:From:Message-Id:Date; b=bYhgh7xMmbrgJjoAYJDcBAr5UtLZ9TstnwpDN63QLs3rdMoImeo9BIIxF0Ilqo8+MMW4FhBfjkoNWOkBmFYHbBF6eA7CuzjJjdkKAcSACRbjvqKZvOhR7VZXQxLlIf5cgk8bk5VaA2QIcbgB7PceiwiFpU/6KC3qEkqOFD77nSY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BNQyi3Mn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BNQyi3Mn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1D33C116D0
	for <ddprobe@lists.linux.dev>; Wed, 25 Feb 2026 07:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772004293;
	bh=Bv3bGzWlNit0FYLwthadfUK/mkZXiIzx61UfFJTp85k=;
	h=To:Subject:From:Date:From;
	b=BNQyi3Mn1zAoIJk34z+kdhX959ZMIKgRQPB+l1HguXwm0zSgr/6bn+4QoDOMX4fTz
	 ysHDX+hg8/zhe4TzfkcZMCuvip3FYgw2nfrG7PD/ClTHOzOot/Vp6y6uc61LwkWfFK
	 SGkB+rs1B4oN3yFoNWWcY5RlDgpROrqvqzVXVQ+px+VKsne1sziY9P5qW/pzqijyrm
	 b63VeNFUtHo8gIGTeKK+6br/eWFzfFu/LRBCFi0tGYoNrNrNM4hLBj4cA7T0++mt0K
	 ejTMUZp+3BClYsgANvbDj/ZZvnYMy/rA48+NihKJJye8qEVIiLWgXsEAxa8K8LHK3Y
	 PQpHFki9ZMmzw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 903CDF357DA
	for <ddprobe@lists.linux.dev>; Wed, 25 Feb 2026 07:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177200429358.13901.18434577661766462685.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 37ffc21570b3b95ba1d2deaa0d66be5ce8926a1ca1069d6997bbe040d2b0c709
Date: Wed, 25 Feb 2026 07:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772004293
