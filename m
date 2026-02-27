Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14D5E42EEC5
	for <ddprobe@lists.linux.dev>; Fri, 27 Feb 2026 15:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772204694; cv=none; b=rhZVVR0i6J4EVgA9ru+5y9LquGRTcSHkzOgcr1xZgGJlpPaRYodQKQTEj+m+k7flgzYvsXDpDaS1vbyjZLvCGvYF4XZsmq8syd/JxO2ssT49UTqifhTdtPXCx6XNbt0jCD2XG6IU2S/f9sNOTH8QJbDw6WSla5m3nGbffOBJmEE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772204694; c=relaxed/simple;
	bh=UVO2ffNxV2jAnN+3LMwW09TuXkGSVXuMk0YJZd9ljpk=;
	h=To:Subject:From:Message-Id:Date; b=U876KLyR94XuSoEHR3CcZUP8RwxWfCLUXCacf+muVVfSq6t9sAJEK5r2QZ38lPMONYeR/D3V1SpFG7JNCP8UsD5KOijyZWs/FDIRZ+Md3bWbyetvem0dNINLwOgZwZYmM2c0pkImrQUAfqNrG7kyJljOHQtQmsiScSLB3WrI/aM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ex6FOR/A; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ex6FOR/A"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0B84C116C6
	for <ddprobe@lists.linux.dev>; Fri, 27 Feb 2026 15:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772204693;
	bh=UVO2ffNxV2jAnN+3LMwW09TuXkGSVXuMk0YJZd9ljpk=;
	h=To:Subject:From:Date:From;
	b=ex6FOR/Aj8lgNNIwlHOpJMbdt3gNSQRlqV8/nLOmcEzeD0gDtsIv6DBcOVZXmqG6G
	 qRg8Iur9SzXNXiBHywzIkwIoofdbaE+dccgR2tq+wNOSOTZYAtdaVt4MX3s9tWAlm4
	 EESHCP8IUEX06GLRSuJxOAeJ+7aye8qKNkNXkTOfCJlOMYsQUay2ZuKEVHRCMY5K5/
	 UF6gM1fExcSfkdzRNcEUexK9xQDMtutM0EoXEVif9GhtVlbIFhMBd7il6ab+xPI95C
	 Xe0gD4jioiHhpmsing7vgYx3YJjoII4sAcILXJ9kkfkP7nkYv4orZGdF3VbcDksWZC
	 gemWWSLUdE7TQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A1DCFEFB5B
	for <ddprobe@lists.linux.dev>; Fri, 27 Feb 2026 15:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177220469361.5379.10236072290909907884.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5b34b6e063e3d0f009a8c2720898f72b770b59b77ebe129f510ba5af373d0224
Date: Fri, 27 Feb 2026 15:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772204693
