Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 54E813CE4BE
	for <ddprobe@lists.linux.dev>; Thu, 15 Oct 2026 09:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792056034; cv=none; b=CDFetPGEaIXepNP4thU0zoOQjJnNv4Fae78iEjtMhI7AZGIo0ujG7bS+XMFWI6jiHf2WAIbtG+5xcu9JX7wYcUiK8Cwt5BVEQY9+X/VJUI44vV3xEQOt0GYKXqRgFVRISDEskl/bX0/k7+KSrGh/3y4pwbPEJja3NjtWeID7EXs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792056034; c=relaxed/simple;
	bh=tweqO2Wrz9wUWZWUheYyEv9eTDsrgYabYeFeZL7OYHU=;
	h=To:Subject:From:Message-Id:Date; b=FGVhl+i00WS1uoVMeTEJOjPtQawfXk5E2P3Sm4a36uVO1x/YYS4MopWUO0zlxRcuoC1P3/lGR90WvwnCxmHCfaGPtT+WisS/DlAMAuCzekRv0dl6lSDR+dp10qrtKTAbywtfUaRJgAZW8ynIDn+qiCa5xxQ8TxqbVM1DZGa2UgY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QUpIjCaA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QUpIjCaA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0966C2BCC7
	for <ddprobe@lists.linux.dev>; Thu, 15 Oct 2026 09:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792056033;
	bh=tweqO2Wrz9wUWZWUheYyEv9eTDsrgYabYeFeZL7OYHU=;
	h=To:Subject:From:Date:From;
	b=QUpIjCaALa67WdR/KTLAg4A5lwGTZB8A1cRTsGsby8I0DBGVEr7ENKitUCBZJ0TgX
	 COBewpIh0NF8dH951fsvUUyIoOZ3Ja4Pzr17zrhZMmNBKV2iPMJDq9GaSbD4vJa2fY
	 Rdg4npBogZKBl0SfH2bHORMXm3Qx2Ec5xcQIFT2X9JYiFHeX3MYwCs7k4h26NzS2Wm
	 Rqb4ZAAYqU8snQHVMVALaN7scvHtYT2+u7Ot/M24soALRNuOvg8Gl5/vqc8lQ1wTy1
	 lrB27d8cA8GMvT7/BK5dMAK6d8MhBa1XaDLV7FXpEOzydAIYRbCnAsmDHpEDnyUbYt
	 bpQlAL+8vbWOg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAAC6CC6B33
	for <ddprobe@lists.linux.dev>; Thu, 15 Oct 2026 09:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179205603368.30198.2442015331841814286.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 655952bff6dacb09c1ea4c1637fc9ca94c03ae22502d01dcc0bd81de6a6253ab
Date: Thu, 15 Oct 2026 09:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792056033
