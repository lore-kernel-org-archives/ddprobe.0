Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C48C17C68
	for <ddprobe@lists.linux.dev>; Thu,  6 Jun 2024 01:57:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717639043; cv=none; b=EX8KR9I+fcgYU9VTnaeK1Mz9v4n9ql682J11DxqJS5FBCDMQpHZ+kyoxxAYN+92rulftziyr18oqkxo3XcGsNyJtiSnjo7I+FjuocE7aPzKdG7UqZ2gweQ4YKBOa2L6GyEY5BJa80+mu9Zw2A0Ki24TMy14TRXi7DGvS5tG58w0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717639043; c=relaxed/simple;
	bh=TPVX/sAouyIRLajEEFHg4f2CVceqJDa4kDR/gybHlNs=;
	h=To:Subject:From:Message-Id:Date; b=MtZzIyCjD+FiQqj1gbHhyESIn4+FytuXQPH+/oFB7bQx1nEqo16ndj2JiD14CG1grdykBl08s+TkV6ldn4zts0Z7ovcM8ZaqV1aTB2WdhjJzMyGRJqu2fFhTYrkJlEP+ElRz4pvieKc1PAkOOkTpzmI346PO5TTwi5hp4sIw9DE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ELkG5/sh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ELkG5/sh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4436C2BD11
	for <ddprobe@lists.linux.dev>; Thu,  6 Jun 2024 01:57:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717639042;
	bh=TPVX/sAouyIRLajEEFHg4f2CVceqJDa4kDR/gybHlNs=;
	h=To:Subject:From:Date:From;
	b=ELkG5/shdoy6lzaW7E/EsOwwB13Ihhhh8OuAiIySYchvgBrY8uT/eALkrQ1l7ZHeU
	 /FdnBnqd8A4Y3vyxMM4aB2T+MlNP20q4JAy0NZU7RhcZ9DPBFdMLXuFxCkYDkdy2Ke
	 jb2chDCKJyxFkvVK1ez5HQbbYJx2fnHS6JhcJenTHoIV9VGcrCieTtfSmsdZjel2mX
	 2RCMCCmmAKmhu6rchJjH+3l4ge/5epPuDdJvAtjPjr7+MBapxQ6Rb1O8dOrDNoHMQ4
	 sU20QTN6D1czx8DMQf5lefOy+UHQO87UouQMcMQnc+hNjHsb1U3ljAfMcPZMqjw+VL
	 Q5nvgDh12wyFw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C3C28C25B76
	for <ddprobe@lists.linux.dev>; Thu,  6 Jun 2024 01:57:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171763904279.18721.11760433125565191411.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 868299e3b02f7ef22e2325fc4084efd058bb770f569d1be93f3c5790d25b8580
Date: Thu, 06 Jun 2024 01:57:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717639042
