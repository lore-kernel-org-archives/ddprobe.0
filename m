Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CF8A48C1F
	for <ddprobe@lists.linux.dev>; Sat,  9 May 2026 20:07:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778357254; cv=none; b=BjTueYGxJI5cGBphWCjXSIg5L7jScuHToHo1gPsZjDTiVx3KhYyEZk1cnN1PPmBAkFmwVDXGNX0uyl02GicQC/flwvGc4WRP+lD6JnOOv+XxtQ7oL6WTUijtVJ+7ZEfoqUIoCTj3YHdd/yRFDqRrrjIvKMjVkjY0Lh8n54kzLKE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778357254; c=relaxed/simple;
	bh=a+aKNwPR2T3vOqCc7HXqlLjkDji4xawzQaFRdGtScGA=;
	h=To:Subject:From:Message-Id:Date; b=IzGMXcFCj+tpWbRfEJZb9YYijl8zQXVUahCA9LkqXAmO5zAX89Co5xMrfO64gUmYRP9RkheQpRvd7ojZaYS35qL9rfmsMFCf0g5V+2oKxdRIou3B9Pyvee9r2ajwRwaME9oMNPrJFp0X+6ya1No7NmUJNuzt8wub8IQ2J03ZYdo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vFDuUpXm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vFDuUpXm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 520E3C2BCB2
	for <ddprobe@lists.linux.dev>; Sat,  9 May 2026 20:07:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778357254;
	bh=a+aKNwPR2T3vOqCc7HXqlLjkDji4xawzQaFRdGtScGA=;
	h=To:Subject:From:Date:From;
	b=vFDuUpXmLfYGyGBALREA3TJTTO6ar0nIHprAQ/6dDlvfbhKubCTnERBo12iEPWvzx
	 zEaCz0Tklv49s+3TiPYjYzGbBDLhHQo+yu9GuFCtHFGxvfo1nj96jhTgRyskEs/Vy1
	 Fh/f5R/lg742DHB1R2M7GhMl1js+/zvRG44rFIl8+nGvrtJZQbl2HkTPPsSb8rthC7
	 EM30p35JXArqbVUevRSGp2NWCGcOcUpdZEf4XrKdsEHELYuYADmmhQlGbLyzSi4gfU
	 rN+s7A+w2oKaJRiI9106pPYK/F56fphZrer7LVKU6oszNgY86KSYec4t7dvSqiqm/q
	 +gMsWaMZ00a5Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 05BCDCD3447
	for <ddprobe@lists.linux.dev>; Sat,  9 May 2026 20:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177835725392.19930.8093061173912120759.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ce574604d30b6d0e10278dc0abefe4f345523f370042c93087dfba014d762fa2
Date: Sat, 09 May 2026 20:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778357253
