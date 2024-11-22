Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3EC5418C020
	for <ddprobe@lists.linux.dev>; Fri, 22 Nov 2024 21:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732312554; cv=none; b=Yztpasof5jzVZQPZM1dcfTHwyXCrpjEunQxYk7CeIzJdWAxc5HrZFjHmuSkV1nIuHnAORekoZO4KqNjabWIfbcbMT57r9v8f6QLjNchNzOH1q9x8GTAmxjZqsomLU4XgV5kejlta8ro7G/nE1158/zr5IAqtqLrycW1dNauOKj4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732312554; c=relaxed/simple;
	bh=6wQvrUHdBKSjD5Q2uUKWB9iEuF6ME+yFhr7gB3YN8Fw=;
	h=To:Subject:From:Message-Id:Date; b=BbIq8Ahix9AhIsOCTFt/6yr1GQdUgEi4+OKEzn5P8EN6SW+jvr3s+az1F/HXnNAj4Iba8VLObbuFqTYZT5L9iQzmvk7cxGDSKQb/NEvxqEcMZgBUlLgvemdIOF0Gbz5tGi6Sz6vhOik2muPZ0RbkqbCcHMgiJ/FxSCX+t+kOiD8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=f9QREpyd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="f9QREpyd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF99AC4CECE
	for <ddprobe@lists.linux.dev>; Fri, 22 Nov 2024 21:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732312553;
	bh=6wQvrUHdBKSjD5Q2uUKWB9iEuF6ME+yFhr7gB3YN8Fw=;
	h=To:Subject:From:Date:From;
	b=f9QREpydMom7EHCkYNPihTYHXQOIoQc76vA1OeOVPHUOdyxzZ1P4gd6FwBfkPgrao
	 c2PMTwdpIBff9pWJhszbX59aryAplZ45oVNI3l5ruRF/vcqffkmxjdp3mujzS0PIes
	 f8tb1lBf3Imuuqyw1GQFF82jOPecr8IVvO3f17+YPazRXOhEV+orhHdA3rknczLO3D
	 bmkiRXo6JfLbrk04rm5cEP628SLjucsC5df6HDx5QToaLr3fJFkdg29wzzQ2Ql8onF
	 6hf+4nwYLFAdjmnb5Wu3HV4OROum7BWxWJmouQWQ5749bpRElQ28UGyIeoROireOhp
	 /eALZw6LlbGPA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99F52E6ADCA
	for <ddprobe@lists.linux.dev>; Fri, 22 Nov 2024 21:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173231255362.18718.3915601124025768655.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 169be5452e6e89c60b2623428ff28adc9316fcd043a004652f03a94996c6a7c3
Date: Fri, 22 Nov 2024 21:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732312553
