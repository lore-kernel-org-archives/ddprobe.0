Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F4981D5CC9
	for <ddprobe@lists.linux.dev>; Thu,  6 Nov 2025 04:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762404594; cv=none; b=OBp08Z3RArJlh7gmDxKo5rRNTeC5tgXWnpKSkxEOSHBT0SMr/5twSzZGImHwTmA1AMwizmj82q4bJqHbPwNJ2EbKR6FoJStn39Pj1BiFf9vRGwi5YgZ8C72GrwF5Gxhu9r2xRLfnM6HHdyUuGwo1JC85JG0h4Lm0quHHz80d9rk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762404594; c=relaxed/simple;
	bh=rC47nhXyWROvKixWYEs4Xn/RLRbqk+X1yiLLUavFR+8=;
	h=To:Subject:From:Message-Id:Date; b=GNe9EtOlSGB2IA2FpWPRQ32KqaZPQZTCdeioGoC+YJ87x++d+2RmzSR8K2wSmTsKWwg/gl+aKL8noP0yDJIisZvssdm5ffJRyt6AoKh7PYZpokOzNXoTGTQDSGqGNJPvpzHvv3KLHW8ZNxFLzq4aeYMPqBofYCgJF5+CFE+yotU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZtCWQDad; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZtCWQDad"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5DE9C4CEF7
	for <ddprobe@lists.linux.dev>; Thu,  6 Nov 2025 04:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762404593;
	bh=rC47nhXyWROvKixWYEs4Xn/RLRbqk+X1yiLLUavFR+8=;
	h=To:Subject:From:Date:From;
	b=ZtCWQDadChcFYQSgmoZT40/FvMqPcriu+1zpDpzZqRmGbRsmQK042ywAR2+hjK1bm
	 zd+GcrOIyomKA71fcu6yLxkt/6wYkaapNCkP2ARmb5ZEeO5HLn4O1VcVt2pnn1073C
	 K5lccaOz5KEavBLDZm1xO8cowZ2z6Of6D0EJSXqAc+MQ/TyqBrh7Dyiq9dDzW3EMMj
	 +BZefTSIFKnRXcG1pgChzpBCiL0V4wyix+3tIIxWsokO+oMzzYeRS50S7Il17aarxz
	 2qHUQ9F5l8TfyOkxtMIFTEdLitfmlmkkBpxv+93PRagvv0W9a0ggoaMlRUY/NuQJF3
	 xH0V5ev+Dcq8g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96DFCCCF9F8
	for <ddprobe@lists.linux.dev>; Thu,  6 Nov 2025 04:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176240459358.12731.3674229876149967304.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 59f91e2a9249a6dee5f7fc4c7162b33fdd4e51d97c02abd2bd7a75d94af2c92a
Date: Thu, 06 Nov 2025 04:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762404593
