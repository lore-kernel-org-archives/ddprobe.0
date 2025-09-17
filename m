Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29E13371EAF
	for <ddprobe@lists.linux.dev>; Wed, 17 Sep 2025 11:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758110394; cv=none; b=geRcaUwnO+dYUVgnmYrbUU3N7XsP8qyj2m2ElNrqyHgnwaRwzuJSw+gxqK8w5I4LwhI4D3Rq6ggbqYhI9C69XOCcmYzuP/HPTtqNqDyh0AicnsBo3Buy418Uo4svj0X40pZvAWLTcAW9p/gCrEFy4CX1gXH+veZSdU0xnZ7P8QM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758110394; c=relaxed/simple;
	bh=GHYArnq+IRVocBj+j2HBJ6cxFV3c4qoh8V8LjaPerF0=;
	h=To:Subject:From:Message-Id:Date; b=jtk6pH0ioQVVDG57eDbaDqYpMVAQ31PiuiZ7qymH5viq284v4s2okROLOhM/0RzNknt38sK96OJ5PSuNexY9xaX40UOctQ4ewNtr5HthP/kjkJmaA2jEfZfiGW66GD3OB469ajTxIG/ihCIGEd2ED3DyLOmN/gDyIVuim9haDNs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qwD8URWr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qwD8URWr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1B7DC4CEF0
	for <ddprobe@lists.linux.dev>; Wed, 17 Sep 2025 11:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758110393;
	bh=GHYArnq+IRVocBj+j2HBJ6cxFV3c4qoh8V8LjaPerF0=;
	h=To:Subject:From:Date:From;
	b=qwD8URWrI6+qUB6yvI/0xpP6kAgHqt70UkGXgDRP3ABGI5DABIH5N0x1hrJiGEqvy
	 /IU5Bm88gy27lHQnAdKojzE72dIUIaEa6ErcwdAGis6WhZMNdWlxAzRxEMQ3b+8yCz
	 ZZaku4VbnGRYCWSRyASWFPydMbe+Okq/G4TSuItD+EtjJyHLrgDco2uc+Jud7r1wfI
	 XVw1ddWNlmgWCbcWe+J5nPJzD0DgPalbTTm6sYnD2Ipvr6V1mQt/Oq9nKEiziWzdSB
	 MQvKOPMj9sHc3U8egenD4UR3rLP4zg8LDvi3MwEPil+bQ2mczgQLOTOmtYZfBIJUTN
	 OiH0s1ZOTfW/g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8ECF0CA0EE8
	for <ddprobe@lists.linux.dev>; Wed, 17 Sep 2025 11:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175811039357.31392.18025757100812153785.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 87f9c5464e0b6c3f232f6fb5e5c2bf66afb817f3250ece405324b1bcb6082168
Date: Wed, 17 Sep 2025 11:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758110393
