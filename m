Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BA8A242D88
	for <ddprobe@lists.linux.dev>; Sat, 23 May 2026 13:12:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779541954; cv=none; b=NJR+7zohBcteE3P0FhrkUn/uZobTZ4NSWFEk3MqfYOVLPo9GM6rmG/qqOACMqhnwrCR1Vwj6gFPM9CsvMPffaSFJzDozZOm6rpivqWYo6xoxbDk2yDQZ2eI/M+7Ss5boU8Z/Ifxwiws7QeqpDu+8nyIXOv4kiUg3oaUcXViPVu4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779541954; c=relaxed/simple;
	bh=lBzjYB4fHXgOnuuMvNI03rKfB3GuPCREbvFqLQIIt0Y=;
	h=To:Subject:From:Message-Id:Date; b=JZfEPr8WwRkP4eMAyRyoSZiXAw5er9/ycMZuqPHkQvYr06N9/RD7H01c7ewQYly4QIRPBhCO5NSFTcGhQ/o2gUEh/UeqVEzS3b3fUhIii8TlfA/ofb0R9fijw3P1lPV/cF6LI3c708khOcfp7sEVga39jWkMMnGQNwWzH4I2uJI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Otefy01N; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Otefy01N"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C00BEC2BCB0
	for <ddprobe@lists.linux.dev>; Sat, 23 May 2026 13:12:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779541953;
	bh=lBzjYB4fHXgOnuuMvNI03rKfB3GuPCREbvFqLQIIt0Y=;
	h=To:Subject:From:Date:From;
	b=Otefy01NCH9gRUAgOCDGifEfLzWGENT+f3C6GO8kxtt7JlNgaiHrC7zbZ3aEM3DQF
	 rulvyVAnEyR5bd1pbrMgsu5rq3MGhisMFhPDJmLrvgnGjCvucNTmyAMaeP/GShOgYB
	 2tEXqROMGAw5tCJ6ELMUOBlzo4+bcfjj5DwX2gY43gl2YK5nmDn2dRrkRajtChgheq
	 7uLaXzmKJ5xwWjyZC3KQq3OraatiCja1+7b5oiJHfWrg9vyv7Y7kBEBy33jI4rOevX
	 mV1+tZCJ4PiORonWYJJ2yMocKRp+UwtVrsxyCKKh0Wz2EmZ1Jw0Kl33qc7cteEwM7D
	 31OPqh9CXsReg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8627CD5BAC
	for <ddprobe@lists.linux.dev>; Sat, 23 May 2026 13:12:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177954195368.17322.1331334468382671188.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4e6e66bd268a86d53ed0857176b42d650bd182f0d0722a36e10c7ae7045433fc
Date: Sat, 23 May 2026 13:12:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779541953
