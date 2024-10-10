Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 242E518DF6B
	for <ddprobe@lists.linux.dev>; Thu, 10 Oct 2024 22:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728597954; cv=none; b=Mp9BLDhc6YMZDtuQAHaxhvy14am8GMdHri4BVfPKeGw5eJe8hJgekPfRhKZ5X7yjVZB62MJIC7YmtFfXos2dIDh5ydMM9P0RZ66wnWFVp6m7umWj3BmdtOw3y0wMcgt6I7GRrgs0S2ARwkabmZx64QBURQ3PEZFo3s1YeN7QNkg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728597954; c=relaxed/simple;
	bh=dyj//Vw1TwA9wWxNYKRCbZhA+HJfj6GLPieZ199KkyI=;
	h=To:Subject:From:Message-Id:Date; b=idCjzh6MMosKr0jhm5jn6hNPh2F7kYNE4LGFFAjf+jJei3Ehk1yagEGjd0z0SuuaXZSST5fffinxmnIKA/JqnNs9sfoidnJ181cahvOHjmsWftHVDN/FkcjRnyZ4Y4LhpUnLH0D8x1yVXt2BxwzhigMuLcg/SpROJA4qrBofAqc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jwl4ljAI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jwl4ljAI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4F42C4CEC5
	for <ddprobe@lists.linux.dev>; Thu, 10 Oct 2024 22:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728597953;
	bh=dyj//Vw1TwA9wWxNYKRCbZhA+HJfj6GLPieZ199KkyI=;
	h=To:Subject:From:Date:From;
	b=jwl4ljAIe6tKcj0+vgS2AIjzBR9+v4WnzWiMfW3CQ431Q8xJucOZnc+OWW9PbEixl
	 0p7AHp4LJ2wMizW3T2WIrhcvPhKaR7lh53YB0eQUpk5MTKpj1hbNicRL5mlRzvLetR
	 Ex0dY93fxSQdOxV1lfDvHdVlkCjyTXxiLapAPh94P6zvSuu4SdRn+7P2QvSOUb/K5w
	 q1b4sTkVWmnv7TmZTlP5J4emB0jSY9p7OGxo/tMqU+tCBxxCqdzjV76zfldQwfnqaA
	 GBuZ1yoOI2GHY9lJYmxWO1f8OE6d4eBqZaha4aQrOClUTk4ohzEvjKAMCPNVimxzcm
	 sCFTyFc3NHfOA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92E8BD2444F
	for <ddprobe@lists.linux.dev>; Thu, 10 Oct 2024 22:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172859795359.25784.13008722617754523827.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7627f25f3532e2d55e090d6368d3ef5d16506517bdf423a915cc335cbebdb2db
Date: Thu, 10 Oct 2024 22:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728597953
