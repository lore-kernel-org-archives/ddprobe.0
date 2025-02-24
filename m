Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 320B71A76AC
	for <ddprobe@lists.linux.dev>; Mon, 24 Feb 2025 19:18:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740424734; cv=none; b=qy70KTedq55Dizr3nfvWFRaiGL/T863ymA5yjWDCM+huzsgVECbPu0rtf40q/SMZ2kqqRXE3E21uDBewNFnzNHJMmTjIII0ajyAXmnPWVS2cNUDsyLmrfHboqtULPLuG0oj8SK7e46bj/+pifunmjnrhF7+vaKMAaYHu0vSAoqA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740424734; c=relaxed/simple;
	bh=Qdvq3GKTUBCgOCpnLmCy09ScqXdg6KynVxARswLCKvY=;
	h=To:Subject:From:Message-Id:Date; b=jC0c0gX+Fr6ffl0q/diWqDo5zKRhXrOgCwM31HVUSH+4xm7KYUZm3kpTgwWcJpfZYEMrxeTbDTS1xRTlDNgoOLWqnWBF4HB+pUx0TJar96ArycA+Jgb2L742lsL53Zpy+mgg5WmEcUzX440tzYIdsi9zoq5VLj8C3mN3E/ZNayk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZggEbn4R; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZggEbn4R"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EFC1C4CEE7
	for <ddprobe@lists.linux.dev>; Mon, 24 Feb 2025 19:18:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740424733;
	bh=Qdvq3GKTUBCgOCpnLmCy09ScqXdg6KynVxARswLCKvY=;
	h=To:Subject:From:Date:From;
	b=ZggEbn4RYofrfVN7BMQyDXzqwrWO029UAzZvW6RxERF7N+d4SIKs3Y1eXohDLRW2Q
	 j71yQst+oP8oDMDNZn3aot8/ssUOHkORRFubFYf460V7Xgu2R9jkyUnaguQ2Gusaxz
	 xaM0F9UxQUTt0rhfDaY4pLxDiMA2rJFOyJKW4lSVegSdNcufJpOqeAwIm+pmGFL+hS
	 VbE2QnmKZTydgsW5XU3sx6L7+kICkmvmWqaGRluiWaAHv+1xc/i2nuRV2QkaQMn34Q
	 Uv5jrEkrS1s+PCadokuD7tSelRFVhQJlcrwR45+1kC4GG4PHlrDy8dAaj4qMWaHWWN
	 49v5aNBayiIuw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92E63C021BC
	for <ddprobe@lists.linux.dev>; Mon, 24 Feb 2025 19:18:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174042473359.2175.14951742674442002256.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6298c84aaa4c00db4cc5aa43861235259b5b34d782aa6a38c4d130713a16e665
Date: Mon, 24 Feb 2025 19:18:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1740424733
