Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E64731AF3B
	for <ddprobe@lists.linux.dev>; Sat,  9 May 2026 22:48:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778366914; cv=none; b=XYP1RUisHs2teM4bjKDiPQSNdBjKOEVEaSTaqm/4p5Fy0obUs4q2P0tYXRR7836fsVMQAbtLeEhD1NSyLIAsJe4BxeYvLs3eYldgbXZFjDCWODNzPrum1ATfydOf0p/N2OkjIOtXcKLYU9vqYktFx7V3IjBdScU4kFXcZarJQSo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778366914; c=relaxed/simple;
	bh=43ATGYhXbeFbVPYZvAXk+FQUhcPdTWreXMPOufoLwiY=;
	h=To:Subject:From:Message-Id:Date; b=iCkyRXc7odGtiJ7V+MDJmU2Ifr5DX57Mw7BaOJPLUkfhq1SqVQMwYOQrJOUdQb4L6vkCCuf4dqPOl9cjsm4/v37A+KeKQCfOy3yyGNN3keq9N4jqhjRU6RWDQplW7bI57UEUZ6ly7P7BHWosnuoEhQiIfDQn8ITJ0J+LEptEEVw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uXzyiZYT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uXzyiZYT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DAD85C2BCB2
	for <ddprobe@lists.linux.dev>; Sat,  9 May 2026 22:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778366913;
	bh=43ATGYhXbeFbVPYZvAXk+FQUhcPdTWreXMPOufoLwiY=;
	h=To:Subject:From:Date:From;
	b=uXzyiZYTxx1ZlMU4jzM/pahU20Hz03q4Fzoua0eBo+AqYoHphGxKHqQq2B2PUuLHK
	 HzGreAn7oMfR2DFwiQkUnvI7z8JCOjCIa/J6SzrojszMTpkfSdV5Zssc0hBN0ZILIo
	 sy3R2TIolPDy3lfDyKYliinSHvYY8B17zwbhzlTzKDGe8v4SYcHZPE0KBS4lFYaYKP
	 ZFxz0TOVJebY0NRUkYSQQVtzxx0APZ/hU+3GDxmEeE3FVC/gksRnwDPXhCufFzoaiH
	 dQd10PfFRJs9pmfzh8BBCvbXT3yUIz0D81ddSOvsLaQQHG6zyrQZBrVMnGs0jUU1MH
	 UUn1fpH6zV0og==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2D5DCD37B2
	for <ddprobe@lists.linux.dev>; Sat,  9 May 2026 22:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177836691375.12876.16203237758664794853.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c7734949bb7bab5ec487fe2832b592d0004bb73bec546311ebee0c3daa51bfe2
Date: Sat, 09 May 2026 22:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778366913
