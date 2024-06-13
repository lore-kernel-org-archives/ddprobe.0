Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4EDB938F
	for <ddprobe@lists.linux.dev>; Thu, 13 Jun 2024 00:18:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718237903; cv=none; b=Tnnij3qhnISv8AFciZMEOawsqkSs47ZGwPWIWZATu9CUl2k6x1iufVDQCiJGJbZKutLllSQXNE+tnbb/QK0IQnb1K1dnbwTVzFJPJsRPhFMBG+JoArPrJtLMkWgyFKKwvO5GeoJKXgIXf+GTUrP72nrTSiVjbcc9LTcoudT4/hs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718237903; c=relaxed/simple;
	bh=qdnC+ZoGSyeDnH2zQwZt+k8ZRBPxgcNaBeu9dY+m5hY=;
	h=To:Subject:From:Message-Id:Date; b=CS8bJf+XkWgHmapaU/bpZIC70tVfP+9ZfT1jwst4vghv2onB9q9vv00swcg/C+M1Rt1VefOlGd0t7P5A8MwQK5K8qwd0PIsjia+O0fz1KV/ZkV8rKPZRhxAHTevm2zWpFntzzfHvs2SKJH94ms56iZMKShbL2cgXzepUAvszD+A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=V7Sd3FPY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="V7Sd3FPY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E478CC4AF1D
	for <ddprobe@lists.linux.dev>; Thu, 13 Jun 2024 00:18:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718237902;
	bh=qdnC+ZoGSyeDnH2zQwZt+k8ZRBPxgcNaBeu9dY+m5hY=;
	h=To:Subject:From:Date:From;
	b=V7Sd3FPYwSGtqjKm6z+boHwcHa03JNUvHaqm+Q+TdlA1MAMk8TqhBvyyPDmAsTlA6
	 wupMlD4nDW5jAZKLoUfXn9axkB+b8rgMlAuvTL5b16pjZkBhrzg0vAIn0cBTrz+OOR
	 y2v9eCEheZ1MM5LMaX9/9338x8RypKDC7GU+Ba+Y94NnM3HI0nAyNY9jC2wgLZ05Jk
	 2M2vFm7GJq6RWuU66zmUiRUyiKdc1EqpUgu5VYgPTlnTHWcnh720y9pYupa9Xlrfqv
	 1+8zyP7cZhF+27ORc8z5cARrKpb+8z7UYSIMEhK/2jbF4B2Ok4s/JuhfoJqJmFvQth
	 oM3C8inWYr5Hg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CF50EC27C53
	for <ddprobe@lists.linux.dev>; Thu, 13 Jun 2024 00:18:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171823790280.11078.15661871152736984471.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 26454f4bdfe5ada7c4060b1ae4bb1b1476ee6f717c042f16d2dcf30fbb4a4824
Date: Thu, 13 Jun 2024 00:18:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718237902
