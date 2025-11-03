Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CD3026F293
	for <ddprobe@lists.linux.dev>; Mon,  3 Nov 2025 17:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762190394; cv=none; b=f2vmVG+B+FfyWp4SUtXCPyGB0q77fniA2zv+uNq7lag+Fn9l33mWU8d+oYpdXE6eBps0SL/HEe9As/3TtcJURJEAervR+5j+FmDD6iVv5F6mQYYVtMmk1l4BXRayAdDgtKUucUs4CWqMMA6wF5axQ33/3XqrRtPFJzKPbh0j/5k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762190394; c=relaxed/simple;
	bh=7BMIV2PBeAUe7vNIe4BiUIg0lm6AEH7cpQpy4DWoU6s=;
	h=To:Subject:From:Message-Id:Date; b=gAuCwmDe+XUVCBkV0UtXrw6j8QD3tMJaOwXHivzzYo+8A6pEeyTzvS0YGVLfLZ8R1nqKONgVrxWmf6QGCxHJQawsqfaXX+xqRhc2Xc8UkVVFQKiMJeOQAL1Fy9fnRWHgLzK2/H68v3vVChZENEkFuVXu+7HGCgUeooO98AhwNxQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hzIVK7IS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hzIVK7IS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5EE6C4CEE7
	for <ddprobe@lists.linux.dev>; Mon,  3 Nov 2025 17:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762190393;
	bh=7BMIV2PBeAUe7vNIe4BiUIg0lm6AEH7cpQpy4DWoU6s=;
	h=To:Subject:From:Date:From;
	b=hzIVK7ISu6X3kOoxfBn//ZbMvOez2iJNz/GXLMxSVdvzMm8gsjJA+ZU/GXAYoZMBy
	 ADTyyLZUrixgVJ+ymlm/a9NOSDkfpZ4BuuNLdY1EK3npFiQyjv1OBDsf9klmV3Cn3v
	 SVIWJevCK8YjYUi6DFAIiKxDmjI9+2L9uUwCURwoMM0y9qMgMpO9HmjSQKEzsHSlye
	 G8jg4dthERBtvFfCHFC0nCWKW7+3tCPSQMwSWS0JmZAvsugcwcr1QPNALGEbaIOXSH
	 1sbupQwEA31SteOun8itrwlhnhkJ/G6/rkzg+4gd8JKiYreQnUvyJPA210Bxv5e/CH
	 CR77AJkc1Bbfw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93760CCF9F8
	for <ddprobe@lists.linux.dev>; Mon,  3 Nov 2025 17:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176219039359.5051.305882244621472312.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1ebe0d40f6b7cbbd03a9bae3d0d01f3ed06fce324ca734074a27cbd9c2e93df7
Date: Mon, 03 Nov 2025 17:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762190393
