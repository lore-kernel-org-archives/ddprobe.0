Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FFC3191
	for <ddprobe@lists.linux.dev>; Sat, 29 Nov 2025 01:52:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764381174; cv=none; b=oS4cHYp0G30PaLRqQnatJ5shiRHrdFRjChXTCx+/At9IAi9YECJqywW2L9NLomp4tuZPrpUqnbLFHnqfQhgfLUbafCVdmDBsYmYzGTnrr4MVva86eMZOYgCxtT0y/rCoKTojXHbS79X9UF24bOF05+o+luRdtlkLAZvTIQwV9b0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764381174; c=relaxed/simple;
	bh=YGi2G8k6OcYds1dm8MZNa32Aa/eCwpFrKKWFTh88yMg=;
	h=To:Subject:From:Message-Id:Date; b=U5/KSbwBwpUZRanoWT4BDozTVvbpmD1Vl3l6BLvMvLIMgiENYaQXwneglRuDTqOw1aEz+Nc/dQEo3FSHPRLlYflHNxIvHuZWLe+CSysmUfL6b9Q3uyEe0JxSeWi1sj3LMmYFkt1NPTxfW9NaIVXjSqXJiVoQ0V66tbX9TuISGiE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=amrpjvYY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="amrpjvYY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3B78C116C6
	for <ddprobe@lists.linux.dev>; Sat, 29 Nov 2025 01:52:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764381173;
	bh=YGi2G8k6OcYds1dm8MZNa32Aa/eCwpFrKKWFTh88yMg=;
	h=To:Subject:From:Date:From;
	b=amrpjvYYhsuRWTwHU4gXqP7Sj79OyRBCtFLbtVZ+oNmleREJ04v3AaF/+OvW9aEVs
	 0drzqxsTU4+X+Td+pwp7zOcZfasU3WsQ8d9655DfnZMqSk63txGnVTyvgFgvjniUax
	 C1Bu99GexVif+Qa3+OzMWA+s2x6Ecv6QGkDuoVJihVwjVF2zWJOzvvBA7Zgk5vFbOG
	 /hRXoarpek/HPqlJWzQTfdYXf8MPIDjnJl5ivrEYKjS98mSLawLAMQ6keetZZXVXur
	 XwZvjr3oCHetpw5oZh4PCFdIqwZAbZ4f87ppw7urnNKNFPwk17izOhIXB3HMXawTkp
	 ZMZcdceUaHlFg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95914D116E2
	for <ddprobe@lists.linux.dev>; Sat, 29 Nov 2025 01:52:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176438117359.26711.10460684724627994705.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2028adc318f0a1e933bea83ac7244b4cb74bab55eceed7c04696405c9e126318
Date: Sat, 29 Nov 2025 01:52:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764381173
