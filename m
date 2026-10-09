Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E3C73B38B5
	for <ddprobe@lists.linux.dev>; Fri,  9 Oct 2026 19:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791573034; cv=none; b=EEu1cChaIqGQ5PQl+SzzHlxNvFXbY5b2OZlDgN6IV7R9hdbSVRJVMF1gRIJLG0Ztajy6FWQFGI8eWl8iA31y5Xl5S+/t9d82Rdj/XusHg1wSF4w+9kVy2TOGHeN0vcibtk9Q5bAD9iKcKG2tEBNApWVZ7nRjUl1+ezRFGnZxvoE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791573034; c=relaxed/simple;
	bh=VfM1zHbO26r/SbDJfLzBNzziD35Fn5vGDMgh0ffKmXw=;
	h=To:Subject:From:Message-Id:Date; b=NVcFPUGZQ6hmUAAmwGHsgJw2XHNyTqRa9DWzPwoGfwoIw7eIrQ09CLLSAySDWwoyLq+2n+4d83FRcMvE2XDov3uMj7MNgnY8yDmzXFuPDJW7tpBkTzHYU06aACbCTC3eGzPSEb6iTLi3y/HbTwz+r8jDUNrLCUc7pJsqZIOrHaU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jAf6pYc1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jAf6pYc1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D48D4C2BCF4
	for <ddprobe@lists.linux.dev>; Fri,  9 Oct 2026 19:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791573033;
	bh=VfM1zHbO26r/SbDJfLzBNzziD35Fn5vGDMgh0ffKmXw=;
	h=To:Subject:From:Date:From;
	b=jAf6pYc1nJ707/lQb2ZVOzEz16AiUEnrWCvTUJPkNCC3Kh+nphygNlvufxGKS1Mlo
	 q5mcPneDaZqQXdcUdCS8KZlKCUFrFQvcIX8qr3sUlt7fu4mrq3qNag0UDWd7KxeU9Q
	 jnnoWmedAbQ97YayPaQWC9wRAWwYF2BM1PggHk/WZryCGG5rmAROBN/cpqJ5CXrm/a
	 fqwIHSlmbIby8IqlbVTmByFZ9+fnGGxBxxZFL2Bv5fj85eMKefdrLOFgu4JssvFIOY
	 qdQ0eyDoHCeL17NlBcRs8T0OD+rIwW/VCo6Roy7IC+8VMQPcnE+noDKqiij4yzKNIR
	 E9OZuyQuq2xPA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA039CA601E
	for <ddprobe@lists.linux.dev>; Fri,  9 Oct 2026 19:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179157303368.31797.8790297067625984131.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 951aeea00809167f21ef711d49bfe4b5927a47b4cefaa242846da658711fcccd
Date: Fri, 09 Oct 2026 19:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791573033
