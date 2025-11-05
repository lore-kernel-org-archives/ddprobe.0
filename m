Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44F2E258EF3
	for <ddprobe@lists.linux.dev>; Wed,  5 Nov 2025 19:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762372794; cv=none; b=SIwAhL2g55gEgQue19ZGagWJTBz9aHm21wy6r8j5CveO7asr95y0LLKatYnC66z2Vp0yBWWEirQcR3YR/Ei0ZWHs4vWgoJYwB/uKaQLUOmGgYjnuDmZusCjBiNcmVumytAr6+ik64Do1sj/VpV8OjJFwKUa9AhDP/d26+SNMBmQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762372794; c=relaxed/simple;
	bh=jcGT5V199UEBYHuPT31KG2OtUpZFDDBWWWrTKfh7vOA=;
	h=To:Subject:From:Message-Id:Date; b=KO0G176diqAbZ7ZH3zDy6xSRlLSzHqKVkUkM20h8wcMbqYonLMV+Rr1nhyT7jn/Y6AUbwu63T6eeLRkRgMCG0Baew4pjvuFM0cpxhfiTzmZnVKIDZr2XBoF64KHOtiQvdX6SdJZVktKSWvZEBRkmja3OTD3n3O0YUxC1K0dpRjQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ah8jgNwl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ah8jgNwl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9BF89C116B1
	for <ddprobe@lists.linux.dev>; Wed,  5 Nov 2025 19:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762372793;
	bh=jcGT5V199UEBYHuPT31KG2OtUpZFDDBWWWrTKfh7vOA=;
	h=To:Subject:From:Date:From;
	b=ah8jgNwlJ58F7Yk+57HcOdMnQDRcVQ7wGOLHbjLjzOF2eytvk3tTnQeQ39/kraLN/
	 jaFSu6/byJp+FZMZKrX7YsxOpMhN+s56tz3zviDoOx9pv3YsLVUh5zYEsLfVkab822
	 EVBm2R+jwFd2EkEPXOKpaggI1qFj9AeRboVgbIx+08mdZi2/eePITbd7Bx8Zlpz8IY
	 j6k+kxedwvOtw7K/QkwyWMUTAq4Im6Oxiq++jVkYzEsS93hbFQWPHcgB83JalGUr08
	 HfDR9fc+UbIDTMYXciPB/SE5RE0KI6cySlcSddeSf3qaJ0xRDhiGwVAm3NTijK50DH
	 8JKSAekPVvgeg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FAF2CCF9F8
	for <ddprobe@lists.linux.dev>; Wed,  5 Nov 2025 19:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176237279358.6671.2606035291725900743.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 125387185f9895fa5cd2d12d89a6d3e28d3cf9714753cb104dfc3b1816dd65da
Date: Wed, 05 Nov 2025 19:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762372793
