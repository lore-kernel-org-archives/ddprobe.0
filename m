Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A5CC01D54FA
	for <ddprobe@lists.linux.dev>; Sat, 11 Jul 2026 21:58:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783807114; cv=none; b=H332bHAMHkXS63zjTbm+qaqkVaTllKFVszTzulIrNzIVAV3PIScRq8q1N5wcsNR40kHbcROOhsp49Yj0tO6+4ueSPBdRCIfkbuui/DlpJLTA6BiPohpwlWyccYQMWNQ3QLcOmQUkNbexCygYnkxeX8AFaghyO32XNVcDEUxH4+o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783807114; c=relaxed/simple;
	bh=vWpk1LrZEhGMAzLHxGiOJhLrqiLt1Mc+FkhgZ3cfh5A=;
	h=To:Subject:From:Message-Id:Date; b=PH0RqfaqaJai7AJ5Doxk7gUedUA3MNsj8QAieRL8MMZGPSwIQaHUm9Gmc9bnaXR/SLb20EG0IpCJJLyq7d13aRFiS7SfoZBpjFwREi4+ziwOQI1jZsBCjPyo5SOOIbYAEUhvMCmrJuRJKvAvCVbF6qtsol8ESgbTDPi4AVHtziQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=d8wPO7hN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="d8wPO7hN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFE7EC2BCB3
	for <ddprobe@lists.linux.dev>; Sat, 11 Jul 2026 21:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783807113;
	bh=vWpk1LrZEhGMAzLHxGiOJhLrqiLt1Mc+FkhgZ3cfh5A=;
	h=To:Subject:From:Date:From;
	b=d8wPO7hN0hKI2g/nuy695AujGOF62J8MCBtPTLKFB1xEjGXVwcIEAK9vIPN2uQcxS
	 zwWgrJEbvLAJdJ1JmahSVs0PA+5a7GK+wQp2ZAXcy6vKeklDtp73u5BCymz8Wu2xb3
	 AmNGQnMzK6kWMohsfb1htC/cvDXktsDTdjF1T5Q2gO423AAYhMrR9RnEmka2n+N2kl
	 RuzA1+YyUIvAVaRGQL93iKnGGNDJin6oitjNOqqn0yCP3G/iNhINMrkoZ5VALV+TBq
	 Z7mYCDsnBcYfsfvZmsKxnGwxSYB6ZGaLUleOq2plu2RtbJHRFYrezROYphRt22afBn
	 aIs4JlC6KrhYQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADAC3C43458
	for <ddprobe@lists.linux.dev>; Sat, 11 Jul 2026 21:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178380711368.10861.3856233254633594017.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a276ce3bae760fbe67832dbd5a8818e72c1c1c9ac3114441e56caa8aad350f1e
Date: Sat, 11 Jul 2026 21:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783807113
