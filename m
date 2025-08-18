Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E0EF27A13D
	for <ddprobe@lists.linux.dev>; Mon, 18 Aug 2025 07:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755501594; cv=none; b=nlqXy4s5X9b4E/WfV/McyN5f3lYRgj48LGqAWBttstS1ir4KTo1sDKi3c1+NVJWZGFLKSdVW29GAgLmKTL0JU15xPgzvFAU6qQOdbMC4+MQcDOEzI1syDm8AMVb2tqB+bghfo5psru164Q+xtAZmqwhQxEJI8MOH8+pdLl2FGE4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755501594; c=relaxed/simple;
	bh=fRAls0HsTfUwLI4zE9SdBwHrNY0mCFUmwgnaObpxl6M=;
	h=To:Subject:From:Message-Id:Date; b=ACyPOSIwjpfLlGyQDcOndSzLkNIJEpe7Lrd8QkeN7VQzOUnGeNNfhrMo+iwCzkDIs8xT15ZpBRbPuguAnStFY7VMD+6oTk3RoAP4sWBjpfst5VUuX1enA9wIAfDrIoItR+Mkps+LRmy6qbtuyw8GVH4wNWD88yBjOaje8eUU04Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XlYUcBNz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XlYUcBNz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1316C4CEEB
	for <ddprobe@lists.linux.dev>; Mon, 18 Aug 2025 07:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755501593;
	bh=fRAls0HsTfUwLI4zE9SdBwHrNY0mCFUmwgnaObpxl6M=;
	h=To:Subject:From:Date:From;
	b=XlYUcBNz7rFK9F+4oCiajupWD5v9xYCEqfSbR0+hbJV0J8pDKlSKyOJ1UI5xcShSp
	 Vs/kJpY/Qu5SGG8ILElcbd3D23JuexWjdpemns7q0Zlk2lFJfE/LUn+h3xkMmeLVd+
	 8GvUkmXTOZaHmRWlpLzXun3msUZirHEiJugyIohIS7jnwJ2/EWvq5j9s2XceVpY2Ge
	 lZzRH9Nq2gW3me988aRA8sHbtkPLWYpKRV/Xh8giZiq3D+8SbzsrgnEEre+Am763rl
	 pLzzhvEGf7n51R0Ph6N370/3lqXn+AWjfoil4XNhxlxmonhZ09aBHEHHq6VSiFEcOW
	 6ul3566x518lg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F346CA0EE4
	for <ddprobe@lists.linux.dev>; Mon, 18 Aug 2025 07:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175550159357.19824.962351010358519435.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 86b84fd81cfa304e5c92be91179e187a6f36114829ed96f3a900c5b30a329cde
Date: Mon, 18 Aug 2025 07:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755501593
