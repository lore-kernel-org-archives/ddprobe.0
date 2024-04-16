Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3ED0B1272BA
	for <ddprobe@lists.linux.dev>; Tue, 16 Apr 2024 10:29:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713263363; cv=none; b=XJN5gXgd1KsO9LmyKqzkZh0QZYT4sVczllyXzw87DPkPr4OVMZL/2IdzmnS//edL4D+5dWnijKLDF9gM1nZhhR7ok/brX5XKAQWiHXVLf4Twvrk1MNUKd8S2npj92oh0tWIQDAIttUFRIgjYmRNMscjP+NR7x10z06jfMs4rIhM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713263363; c=relaxed/simple;
	bh=sh1PXCfD4fo5BciNNZFCrLMkdedYd7GioiID9O7kSqg=;
	h=To:Subject:From:Message-Id:Date; b=uA7AOW9ZKtpSzbyxiHnhjfuqdlKZGusgsymehKM8wabJTA+eXa44goYA7tyyWQeRwUO8UbNOfzS5PdlD5FB6h1DB3/wJsBmSCazyGGFfFAnS2VJNbJkcxI7R3Emu38s+xEh/LrHetpOA2Ne2eY53B4cpiVcmiHLykgimOSI00OE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FDVr4A/H; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FDVr4A/H"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9B63C113CE
	for <ddprobe@lists.linux.dev>; Tue, 16 Apr 2024 10:29:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713263362;
	bh=sh1PXCfD4fo5BciNNZFCrLMkdedYd7GioiID9O7kSqg=;
	h=To:Subject:From:Date:From;
	b=FDVr4A/Ht0ApzmEEszmYixkMhfAoo/r7VQFzkglqw1v5fU7ACleE1Go05RVD47ZTV
	 YERQDUofUFIn/34BG1uWF9wleTvVP3tetPjhr79izTEf0o82JnJuQrWWXswprCf/xE
	 eP7io9ERzuGX6NKmG2EvFi20AvJ3l5mgNmA+4GViQSwnDivYf/FQbwwz72ofeJOAeB
	 GgzeSndwr1Er3fTjDe6SpLT7wXKmJAt8JLQVeYzKyBnZMtVOpvMp/rCOnPs4HY1eJ5
	 Mle18PYo6APdYfhsJtDw5EiIqsCWfPryO/8oHoVQ8hLz2lvye8Q78G7cSKf8J3GnPM
	 8hDcyC4509Avg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C6026C4345F
	for <ddprobe@lists.linux.dev>; Tue, 16 Apr 2024 10:29:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171326336280.1661.13722850976814874980.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: de1f0e7cddcc1cbfd76cf3bb36e0e0138bb061cf8fc4646f4468c51ed25d465c
Date: Tue, 16 Apr 2024 10:29:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713263362
