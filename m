Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 322382DCF51
	for <ddprobe@lists.linux.dev>; Mon, 27 Oct 2025 07:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761549594; cv=none; b=mq7xccgPXtlXcz8pcRIJXx/WquDxJaTw3gZT4m3Ku3uu1QI0WKdYRy/x3vuerDuU85GR0g2E51AXRtlLvkLlB+BCq+IRZYkXigMzqsYCw3ZHcPadPJziHlPKmodMKvzqAx/DUFSeJansvtZlvelhOotCc0cIA+X7vL9pIGXguOA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761549594; c=relaxed/simple;
	bh=JbZIjVJO/or+fltUXjMcz8J2igAz6TRBQ3aGH1xr7mI=;
	h=To:Subject:From:Message-Id:Date; b=V50XnoBo20jiFNbmNb5wFTm3MQfd8jZ/LrQWAQtbDA1JY6SaVUOjZo8SWLH8qTnivoiisfV3eRsqm+wYlXO+JxnsFBaxjN64S4XE+00+8IX2qi6aIQTsqZF3WPWPC7xJKgwZf9NWIdk7RLuIgXF/UqQgrb5yGalGSmeqehBX7lc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qdCjjqo0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qdCjjqo0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B168BC4CEFB
	for <ddprobe@lists.linux.dev>; Mon, 27 Oct 2025 07:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761549593;
	bh=JbZIjVJO/or+fltUXjMcz8J2igAz6TRBQ3aGH1xr7mI=;
	h=To:Subject:From:Date:From;
	b=qdCjjqo0FXkXFzccTi6BQK3F0F0J9NNJzszq93YRIRmQFwkdPPRqXOTWSIIkyKY/S
	 rNqZ/gxioiTx8N7AWrguuVI5jEITcozkKTDYjMVN1D9NWmyteumnHKPcVdTcq5af2J
	 FvR4JNGmXFOlNssagWWANd2KtwRCuLXdGzqdy4HIRukrFtYHeaaWu4EOIrBuutqspA
	 FyK7Ugnd+myLbI4qM5b7A7OPVUz3cTRuKZz0uAHmCvnq4xVL3ms6Y112VuC0wUEGEE
	 0QRMy/u1wIoSb5biVjPaP7079ly6ZKbHiK9SU7/A4wRfQecu4Vi4ykq1CHnp+iznPj
	 6l8Xn9EFY1iYA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99F7BCCF9ED
	for <ddprobe@lists.linux.dev>; Mon, 27 Oct 2025 07:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176154959362.17028.12726798022599040113.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cc3f1ee2643b776099612c64a67c3a30e5b6e9a3bfd9cac21263bae5fe78fa8d
Date: Mon, 27 Oct 2025 07:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761549593
