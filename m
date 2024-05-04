Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 57D4028EA
	for <ddprobe@lists.linux.dev>; Sat,  4 May 2024 04:02:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714795343; cv=none; b=uld9fGTjAOpiWYSYqtVGCHJ/ePkG5ElMQPbx8y5Z+WbrcinkzAWbOUI0UtwzpYWqBuh783waTB8+R5I8iJWl+c78fKznnE+jaGpGgR5wKU6V22SkvXfHuuraUjhDTSmYWlqPbkJ6ZrqNL3gNUZpSbUuSsmwQt9jBcBLQNEm6C+o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714795343; c=relaxed/simple;
	bh=+Nf5T02sH3B/l5PZFMJ2znT4FyUdTUi69nlQGEtyG/8=;
	h=To:Subject:From:Message-Id:Date; b=O0t3QFeFiH7MS1xmITpx0cbwSP2aflY1ZOVClaoLOIgOkVvz3Alnu+sO7/193497SMtipBgmlj44Jw4ApG0Qt7avwp3YRnc3N70TWW0jY9toPKErHeoHUJYW0+Oi5EZvE/Yo2nq0E2tvyixzrN7eFY/tNdyewpNZpkGNzsyXN1E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=X3CmVk5p; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="X3CmVk5p"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC697C072AA
	for <ddprobe@lists.linux.dev>; Sat,  4 May 2024 04:02:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714795342;
	bh=+Nf5T02sH3B/l5PZFMJ2znT4FyUdTUi69nlQGEtyG/8=;
	h=To:Subject:From:Date:From;
	b=X3CmVk5pQcscOHxWgsxoZXv+5Bb1vsAiQZ/9+v1KHfmFQvxEgpyFFij2z8RoWRFI7
	 +QR060o2t3ZPjN+vnVakC+3/QnFvGPn+p/8OGejBIQRKrVSVx6ih47FVH693Oq/10I
	 NaHjo3eXQxCADY6uXfKg0l7FKFu5CyqEkHcV9G74ULwQGlunHVTWDjRPU8dI9QezG6
	 nvI9/Mf8WaAcxcGgLa4oiimKQt+xFOCxGH05d8JyyeeCyj2MXgFlDizZEu6nOlac6U
	 e+80yKbS0pqrvnd90la/3y9oc2HebR4s98EFTi5MnV9GkaqDEmQgQC0//TfnB5w9Xy
	 TX3qgawqarMaQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C5F91C4345F
	for <ddprobe@lists.linux.dev>; Sat,  4 May 2024 04:02:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171479534279.6951.8933495053168206278.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 62506f5392f08b14d538e2e9318b566ff88b996228e373b50cd8012cd2854e3d
Date: Sat, 04 May 2024 04:02:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714795342
