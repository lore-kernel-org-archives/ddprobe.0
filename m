Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 422B2339360
	for <ddprobe@lists.linux.dev>; Mon,  3 Aug 2026 22:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785796234; cv=none; b=OD77SwFRY2jBaAZTP4TqHK+qa47QDkM7Gdl67IqqnNmgXxzE+rqACPhzhvoYSLqsZpps9artV4OQw6h/mZsgRqQI9Y51ZAsJvQQfQYUdYNN14nlgiynTXym3j/kWE+WEW1IOkVuV3ewr/Ik4P+Jea5c2tSd5igt7MsJjz3stHdE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785796234; c=relaxed/simple;
	bh=l7PN8x10UaD3krxkx3MaBST4LVUKsM7roY05yy6alC4=;
	h=To:Subject:From:Message-Id:Date; b=lIFYQiYWEifLDX4T2ERkAi9Fgi4e6/jwjsC84BvfcPFTcJe4hisNCsW9HTxq1xngpbOQRqo8ZfEtXRzKRMvgEJ54Wn+hvDrB8VS1uAl0+U4DwFH5/A5YFVSVBB1FbiJJrll8iMT/jXCVVDvbPWXt45S+uGbTmSRAg5wKd8S9kQM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XSJRpUA3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XSJRpUA3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1BF1C2BCB9
	for <ddprobe@lists.linux.dev>; Mon,  3 Aug 2026 22:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785796233;
	bh=l7PN8x10UaD3krxkx3MaBST4LVUKsM7roY05yy6alC4=;
	h=To:Subject:From:Date:From;
	b=XSJRpUA3NLbLC9ubVEOuNyD7O6bVuKdONZSwpwpJqhu/5AYW8HZ/bI9NCdwilduR+
	 pYqAcLEVsq0dVCOns2CJSmcXlCqgAFwM9aqrFawiKtwjjWq0yRJDVqNbho0++9Aqed
	 abeN8meZn0uNcqtsI+g8EkxORMSWfWILGKyEw8atkuBt2KlzqW9rSAgOrz7Lur1CA2
	 TcL/94AeJPu79hOvzCgkBIoy1avaGQ93epc228HAEa+N7U0mmTXaZCMm8rig0Bw2to
	 mycX/TCDk6kfHPAb8G2gBdFFTjoWPjRX04+Rwet9s217yYrNfOjLuK6XZX1+kEkJv/
	 fR0HzXBXBJANA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC910C55196
	for <ddprobe@lists.linux.dev>; Mon,  3 Aug 2026 22:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178579623369.27654.16952230531250350489.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 15b4640d2926e11a7c04d4d69ba903fec7999dd79d3cbd2be1ce2c97a27a88bc
Date: Mon, 03 Aug 2026 22:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785796233
