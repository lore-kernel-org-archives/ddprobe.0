Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E0F236B054
	for <ddprobe@lists.linux.dev>; Wed, 26 Aug 2026 07:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787730034; cv=none; b=ZWt0sNOkTEpMck3Z2U+Ysgbtx7jwm47v1FE4Sq5R0JQWMoEEYzlkhDxydK1dr32eKKEQHM9V5AK73aWbh0Iul0f+CoqaDR2OZ+m3HnHIaQa6xSnCGoWg0dRxb9o4wqQI9RQDGdzWpgU9ckO88tVq4NUGrw0/lB/ObinizzIdLKw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787730034; c=relaxed/simple;
	bh=U6EYndxnktWasZ7Lv0uQszWQE22YiuZI+aklCpATYyI=;
	h=To:Subject:From:Message-Id:Date; b=WIeqdonhlSNCiwKSzaEsnjRzklXm1pOU9AtuepqN+1cTUNzRDcMAhzdD/0PljIBUIC+5MVWpYKL755BYFjoZBCqKIwiIgRqaNPhrBpQgKzClSbG6Ab7UM5qOVO6CcMuILnJLF+UUy+hPO0TA4HzLjNj6EQA3w4ms8PN83KjDYDo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AYPdwQ87; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AYPdwQ87"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6204C2BCF4
	for <ddprobe@lists.linux.dev>; Wed, 26 Aug 2026 07:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787730033;
	bh=U6EYndxnktWasZ7Lv0uQszWQE22YiuZI+aklCpATYyI=;
	h=To:Subject:From:Date:From;
	b=AYPdwQ87dzN8HSeUcngHfWUdNxSGaFqCbF3XKbrBU0RXe5HQzdIO4uBzDIKdg5nVK
	 +vzDP2kT6So1gFR++2ce7pbeMyZEFrRF/H3y4FjYyCQATBdqULzG0VuHUk86HzthjV
	 fbI+jtckPCjhfALPiil+6Q+V49AIAL36KNZ1CLFRDvomMlMDGGD3trsHgym7kpiOMO
	 sM2wHIQeX8JpkwUoxTDprY/VH76NavICskoDU7dBlVVPD5u0jy8rNRDubiO60z60xl
	 qC0rGWgt7nLuf55gdV7tqhuFjw/TjR9H6dQNke7cia+rKwL028HQoM9TgS2QTf1R8Y
	 2yqLu/A497ZTw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC607C61DC2
	for <ddprobe@lists.linux.dev>; Wed, 26 Aug 2026 07:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178773003369.13432.11229938782720545534.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d804d24e810514688a555a0fbc71ce824e4c822c97f17b8d567c7a19b5a15c8a
Date: Wed, 26 Aug 2026 07:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787730033
