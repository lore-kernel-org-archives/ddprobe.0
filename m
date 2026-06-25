Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5FBA83546D8
	for <ddprobe@lists.linux.dev>; Thu, 25 Jun 2026 22:07:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782425254; cv=none; b=GrskdDoTASGPMMJfnsy+AwHHwpUzVdcf3bIDH8iw0R2yrnDDDZ5YIJ9NlL20VDEloovaaQBkXXS6RfCWqnbFZgoynWIFVx1/hSR+WOQsSTgWr/NTOwm2Y7Tmf9FoVxDiVbLhabelK0D2d2zabqqQ3voVQKNpu1fLa+ihXT868dY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782425254; c=relaxed/simple;
	bh=eb/TuVRFv9/NgWOMhlYWZmXk800MUWlGdcT2GJbpTus=;
	h=To:Subject:From:Message-Id:Date; b=HLO/NUo4X0nnw7dX5blomHK+Q477I6ooQ+hUgDQ9WmRIc4RFXhKgbVV7zMZj8nNnuw+6fwPFqW4IMoBmuUq1Sv4zarSF66YfJScFSjkyMQNSbmeMO1tpoDNMTWVNwRVxdrOEhtgEk3/V+icUjaRHdOtbjnwjQIdy7g6Y5kfJ8uY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qnF3Ej4P; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qnF3Ej4P"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 0C05EC2BCB3
	for <ddprobe@lists.linux.dev>; Thu, 25 Jun 2026 22:07:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782425254;
	bh=eb/TuVRFv9/NgWOMhlYWZmXk800MUWlGdcT2GJbpTus=;
	h=To:Subject:From:Date:From;
	b=qnF3Ej4POrkcfqsiQQYcCjjmI4mnSx2Z2ixGXM2YfmhlwM0Fnzf7oMFiE2H/S8fdf
	 5oUVbdCnmuB3Xg86p7R9rNMP24F8O4X/z69E1X3S3uKMY/pqYTXYa3TCqDpnve2YiN
	 kByR8L+LmbV77fEv64i7AIrmxhOzZJRHABdCuzHyBQN1Shb1rVYtOvzdCitFtEu8Qd
	 t9lLxnBDw0+dP+/qnj7iHYeKOzYVqmlI1wg1xzjWhxQagewCBTzaRwdGmAWqfu81qn
	 5B6lhw1oMbD3hC548E96f99Gk8QbzY5Td7SnSJpboGyAcKCvS++FRpi1ao4VeAXNrG
	 SJqKA3onVM9Ag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BEFACCDE00C
	for <ddprobe@lists.linux.dev>; Thu, 25 Jun 2026 22:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178242525370.24038.5768607079577325074.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 72c030a0c614e4a1d87f7362bd7f002f527ca805d11b2173aa47ca96cd9dce75
Date: Thu, 25 Jun 2026 22:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782425253
