Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 64D204500E
	for <ddprobe@lists.linux.dev>; Sat,  4 May 2024 17:42:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714844543; cv=none; b=NZ1aTPKKZTNZDCHYe1KBPnLlY13Pfe9gRUtkQkMd9JIKACm4OpmYb3gRm54ns846MX9ZTY0lgAWV4goi/dGGtQl2i2UZAI6X+rNlz2vFRzpWGT4nDr3wm2jRTppxy8MCzIt4O3g3YWR1omAi3TJgqR8q1IzLY/JxTf33VQ1MDnA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714844543; c=relaxed/simple;
	bh=2512RxIDSCOdgKXSMOYAxmP3Q2vZu03DUz7mzyuNfUc=;
	h=To:Subject:From:Message-Id:Date; b=Dr9NMdSCCSPQyEjNdfMxo20fcOW+HYTPD+3pBMBp/1Npx04a/R4ZZqinXo3JBTCSF54jgVIrz67u2um+aZnobQZBeA6LhKev9On1NBtdWlKfyFZRcEaHMFH7lGpzJhTLlp/RPSkZ9AUJMvv/nAcsUEtkvsbrRdPJ3TC6WTbmbE8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ozrlp5La; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ozrlp5La"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E0FCEC072AA
	for <ddprobe@lists.linux.dev>; Sat,  4 May 2024 17:42:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714844542;
	bh=2512RxIDSCOdgKXSMOYAxmP3Q2vZu03DUz7mzyuNfUc=;
	h=To:Subject:From:Date:From;
	b=ozrlp5LalDZlDLFRLhxGDpODTqf+hFthZLS/g4L4I/M3fBIGVsBK693/XyRAfPNyR
	 1n9ol1mA/L9rqalCESRlMedwSTnx/xh3f5HJ9EOjTxN6YFKW3jfT/SPfx42OtZzbqo
	 J71+yymIRBTl8hv1TENsH4DLel1P/7AXMRkeGTRUFj3kVlVuLJUPl3xNIQ8bZaxTD4
	 Y3XYCuMP6lCj0WZG2z5zbBteL6nb6Rr4m2B6PEOLYnqWsYF96zsBBOs5mj5eRR4CyH
	 QEuSBD/xgpEgFJusNkSfL18OkOyWus9Rs6dhibC4Ir8F+/BmTVwyv5an6gk0goeSVP
	 x9fnf8MwPMPrg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C998BC4345F
	for <ddprobe@lists.linux.dev>; Sat,  4 May 2024 17:42:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171484454279.12617.15781594351214883856.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b942047cb0b99b1b097c72953a4cb771a5147cbfd448ce86328875dba1f3036f
Date: Sat, 04 May 2024 17:42:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714844542
