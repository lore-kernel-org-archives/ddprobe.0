Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E218163
	for <ddprobe@lists.linux.dev>; Sat, 13 Dec 2025 02:12:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765591974; cv=none; b=RLt5ryhGfgI5wK9jzDyYpt1VFcsNSJTfOhd7YD4+ceDHkztQQ+So9lhx0rGYhKbmLnR9PPFVputD87qkOJw9ZqAhEtCNYPCtW4PYIrDZGEe+WyYyduaZr8nNdthJXDIDhKbr7u35ERl1B5nrI/HozMlJUMkkxOJz/pW9KL2tfVI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765591974; c=relaxed/simple;
	bh=MrG8IYhtN2umY7LPfHQHXiwS5dL7i+2vqbP6KRtBTy0=;
	h=To:Subject:From:Message-Id:Date; b=DBcLlSK5XpTVaqopidHj9hL9lXXEvZOqEHQ+qz80szmfYY1t2rtfHUSW0ILKAibZSRBCn2rYfuUbx1Zn0Vg+GbH6/RvkD1533V5F1E9IJXu+aJfdYwVjBVQRw1tAiA2ugkZG08X47ICeCTlcm5geOgBT4y0ZGpp5RF1pKM5pnYw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RlpjHQzW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RlpjHQzW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACE39C4CEF1
	for <ddprobe@lists.linux.dev>; Sat, 13 Dec 2025 02:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765591973;
	bh=MrG8IYhtN2umY7LPfHQHXiwS5dL7i+2vqbP6KRtBTy0=;
	h=To:Subject:From:Date:From;
	b=RlpjHQzWH6zpcY2sf5X1Ai5aDAosv70VCkPXLEMz6Oeh8KIevcVnCCzfr4ujPUHGS
	 ih1+PtAVeqZIuv5z7Y875gj2I3L+VCtY9cmNPYm7kSZUyx1OtPrdjBbUFgdMBveSso
	 rVb0Ox5jW2tGmh89Dp+qvhYIkU1Zkoyl345thfAw4hXh6SoERb66Ox57O4+Q7zm8Uv
	 a3ghm+JutVKSIKaFr/ryPD9kh2iEEssL4dODasjVLDMV5Tc2/d6ViP7zE+3qVb20pg
	 kpG2AYZZEVzagzO33ZN+gAEm0l1uunmz+sREJ8SgTru3mhNkHsGXp4pSSdvoks/69r
	 emHrGYr3ZNK6Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 989FBD59F60
	for <ddprobe@lists.linux.dev>; Sat, 13 Dec 2025 02:12:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176559197358.21897.8802376927468359286.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8c0c0609dca8714d67439365769357057e4827e00e8e62e0c21f3ccc691f4677
Date: Sat, 13 Dec 2025 02:12:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765591973
