Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 496E11D5CDD
	for <ddprobe@lists.linux.dev>; Mon,  5 May 2025 06:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746428394; cv=none; b=gSXFtH8NLwCrFOe+r+enNCpyR172RSeDFIBZWaB3yYzoCXkzmtzUU6OeIdrTBIqe8yya6DuiOTjl29qlemZEaO8I7H9znn5xEL3z/FpgrYbZRcPrVLVS7E0dVADuEXJmON7sgZzC496nCFVkP5VYmippVXoT+D5ZWklmTmg2l1g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746428394; c=relaxed/simple;
	bh=QRhg9VSACvKSdNZ5cNeS58/nj6RhwBjbyQbemsBaqYo=;
	h=To:Subject:From:Message-Id:Date; b=LYEKA6CyPczzCeL+PDxtDTHF3j2u0nXYq1fRsaKTPopQoQi1g9OEP+RRZG4XfmejMNIYpqPef4dcX3YqgJB03hKcSG8h8omhYHYoK2Wu1gILQKVrRtWv/6/yRydNousN+EBzPbWPmJejbzCc5PYgE4cM58WyTDWBvyiWDvuzclY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hmBDiGJG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hmBDiGJG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A19D8C4CEF0
	for <ddprobe@lists.linux.dev>; Mon,  5 May 2025 06:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746428393;
	bh=QRhg9VSACvKSdNZ5cNeS58/nj6RhwBjbyQbemsBaqYo=;
	h=To:Subject:From:Date:From;
	b=hmBDiGJGnZugBTpbC8LDjT4TldnrT+yoC4h387598+Vz01/yK4V/dIa9brCFeOPa4
	 cgRlTQ562fzqJJGPevgSBfafe82y88zRTb2hcYm+w3utDjaXBSY1a9USnp47xHgpnL
	 GxF1OZT4Ir1w87lUdl9/AfV5cXGi9g8ougBwaLyGY7YfP0+CD5hv3tM8EJtYj2yTt2
	 WLh9AJvbwLx8h24pqgwLbtNk8g5dd/r7pFhjWCIJmw+hYHZbbzQEblyctmnnd7DzVG
	 pWjTPFK7lzfBW7qydtSV2yZYn3CKMdmY4Aj6+hTyP77mGTNKtDgf30/NRgKoQ32GK4
	 mY1it0z7tj70Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F40EC369C2
	for <ddprobe@lists.linux.dev>; Mon,  5 May 2025 06:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174642839357.19301.14990570653156307394.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9b446a647ffb331f2fca435df08557d556bd8c3c8a09a7d4a5e08e19ebb8b75d
Date: Mon, 05 May 2025 06:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746428393
