Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 303A3189
	for <ddprobe@lists.linux.dev>; Sat, 20 Sep 2025 10:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758364794; cv=none; b=fK5rgD7D4A0Awc/69G6vR7Gaz6pxukl+z++q/PqkpEr0PVKGZYLApIyh0DqsC6iHVVamuWfF9TUkOkQszD2V3lG9czOE6pFj0FzwSGyrh+ENPF81AOGfYokGbnERRp1OS39JhWYH2pbhj0IVDLudrVbOOR2XxNIXYwkD2H5+vQc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758364794; c=relaxed/simple;
	bh=JF5twTNKUVKpHNz+T9UR951zosem6gRTXhnyIo3Ex90=;
	h=To:Subject:From:Message-Id:Date; b=PVFGT3JgmwyEamP9+OE/IQk5UC5BvHSLd5h9ZO/1D0bEOkkXKBhRXUP930coOVULweT4qQyIk1nOkCeQmSzqH4tw3kelQqosJHETJjk7uHauNR68cy4W6D8+TT1jVBqZp8VPdEnoF6Oiz1G/5kHtWt7N3d0b0YXSGfPKkeilPAw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LiPPGR6V; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LiPPGR6V"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9065C4CEEB
	for <ddprobe@lists.linux.dev>; Sat, 20 Sep 2025 10:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758364793;
	bh=JF5twTNKUVKpHNz+T9UR951zosem6gRTXhnyIo3Ex90=;
	h=To:Subject:From:Date:From;
	b=LiPPGR6V9V6O46uoEsnrAdYEKue5ddFR5okb33/v+BN4hzXpUO5u86x7IMg/aabGe
	 6WjMeWr64eaf3fw6PeYAk1kTrZTJ2j0W5wGZFCUcQla2HcyGUbdMQCoPNHmcN1YYNL
	 9Ixv2OkEw/9MNIUbfl2xRejnLVAzIK8nD9DbB3nyONaneDrP7IF+6lUq7TlavuJden
	 9r0jo4UuAry5TZaeZAvzKrPvucQW2vliQWPfbaa4z7DQCmHXTNh7LmIOlVXQRwYPcL
	 UojnsIXvcKpq4Y74ImXtV2SHrCLfl1S7Glc+g7RIVtv2/r15aT6x6+/pMdXtjCqSRO
	 bRURjUYXQ8+dA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 959D7CAC597
	for <ddprobe@lists.linux.dev>; Sat, 20 Sep 2025 10:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175836479359.10975.14463326010757585275.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ba7077c9c9cea86659e95aa7dbfb668472702fecbbe4dcc1064b7391ff1c4ff8
Date: Sat, 20 Sep 2025 10:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758364793
