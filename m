Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0ED823A1D02
	for <ddprobe@lists.linux.dev>; Fri, 27 Feb 2026 20:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772225694; cv=none; b=eOsQNUXkU5OSEwBscrR2TzhHOUK0oxV72mxeDcB1TZIiLXi91ZlotYjDSEH+nN2b0jIr3+4ul92sbkGWD2kD5Ok1riCXePBRLhVGPFj5CYX7Ae4qFBr/fsypsa2qAxMxfSzmXnluCwu+SfuoSsIcbB2CNJxdhZ0fSDuRTbnzxYg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772225694; c=relaxed/simple;
	bh=wEDxltF1z9txEsY+YiXB7NhtROqnMK079hAe5XE4M2c=;
	h=To:Subject:From:Message-Id:Date; b=YITj7qpEdRZ69hPzaRZBPZWtrcnI4AhYkSlqUQJseYMZp11x5ZjBQ7StbRebYFvMbUn8N9YNNrmRD778Nc7X/nKgMoQiOdrF5Vk8gmNKEUaMlTxExIPgK5GIQEl+PkHq5DSVjh1J0sK1DLn7skOSeIpX7GMxS+aZHMBVjxiwJWI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=amLVGcgL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="amLVGcgL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAA7BC19423
	for <ddprobe@lists.linux.dev>; Fri, 27 Feb 2026 20:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772225693;
	bh=wEDxltF1z9txEsY+YiXB7NhtROqnMK079hAe5XE4M2c=;
	h=To:Subject:From:Date:From;
	b=amLVGcgL1+IhezydaJsAG1TkR7mvv0YapS5c6aT4X5tLz+kM47zDEby4GcbYTWFXO
	 KaePCgcXI8bGVIBkSL7O5B7CSSLIIji9YMFp+Kw2z20qcpbIjGqb9ZMYzgOgiVatVX
	 4OYlLkJFLdc137s8jdSX0auckMlUDPIY5SqZqhxNnBeCNKaQvCADamTb7AVsGlMAf1
	 DTHpytufcgQXEPQXfI/U9y+z4Ny2BdCQ5BorHnPtbQi+AtS7JzsNKUv/5wkORTu17a
	 WOeO8NVPYXuB+mJ4TC6GEUv8ZBq2+rNOpRKq5RjSO5X+5WiT6+xy+vWhhjiwgtrDFf
	 5JzU+7cfEdmUg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95EDC1039894
	for <ddprobe@lists.linux.dev>; Fri, 27 Feb 2026 20:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177222569359.22727.1535077540674419838.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 95c417acefc6ee1be88ea313e40a7823ce248fe49b1adf34cf50ceb4f58adc60
Date: Fri, 27 Feb 2026 20:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772225693
