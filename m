Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CBAC134E74D
	for <ddprobe@lists.linux.dev>; Wed, 16 Sep 2026 18:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789582834; cv=none; b=JbSIFMjGBDkwVkQ3gaai9+NljC92YzhZ1fjgeQ2oxRyFlJnyXK0fPfPPzs4/mlJBseSeVgkhOxFvmq4SJvnQWv+WT8wsT7+D5QiYEpgpgNd677lcoPXZiJx03xCePDt0IQszP4Z3LWaQrNlwsHzo5OG1dS47/JqyNjalfJAU8BI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789582834; c=relaxed/simple;
	bh=ETo1BHdkOnfQ9eeGuhQems/qkYgQIX0h+nBvKxX4r3w=;
	h=To:Subject:From:Message-Id:Date; b=uz5J0YTJHCt7pBXxYbWENRfHf627xM/+wNDXuZpwpRHcpXjEgGwUuvh7Dw8Dj2LgVUuKhmUWqgNSEB+IJaVLxbMAmU/2rh0DYPeyb2AJh68qk45z3s684x4vUIAY8+U+z5cbBej1CJtQvKeXQcwTeHO9+UtjfsUMTrk4kmVNmK8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=h7AhwGfV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="h7AhwGfV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC006C2BCB3
	for <ddprobe@lists.linux.dev>; Wed, 16 Sep 2026 18:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789582833;
	bh=ETo1BHdkOnfQ9eeGuhQems/qkYgQIX0h+nBvKxX4r3w=;
	h=To:Subject:From:Date:From;
	b=h7AhwGfVTEE3HvEp879kgcUXt/4Yn7pRh/I5XFWLD+weBW4mwvZhcXT3IAHU1ok/d
	 y7HFQPTqqUHdI4uO3YaSDYJ6I8CAisSOVAUBIVUprTuWkdIrEappVZ5ClO17GVYWKd
	 b3nCjSCdDDI5LNVZ1+YRT+uOtpHZ18u+u9cEDe9z1CBPhJ0V/v7jquE7aadQ4/q7JM
	 Wu4kTTW7q4JoIRtkQf2AzfUntOAz+LJxuNc2aq+blJLRPnkHI2uUFXTRuo/J5W+Y8b
	 2CEC3v6BUWGnQ4rcfroCc5yLqMtmE8dLa4Oyd/QwUm/FsZdOact88VblvcbmsV/gYz
	 JHWhDxKVl6IPQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1650C982C9
	for <ddprobe@lists.linux.dev>; Wed, 16 Sep 2026 18:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178958283371.23318.17132064694508306936.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c643f91bc0c126d2e016df986bcc68359ae0bed5cc04b6bb6d3c518b627d4d50
Date: Wed, 16 Sep 2026 18:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789582833
