Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 176AE2AE97
	for <ddprobe@lists.linux.dev>; Sat,  6 Sep 2025 15:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757171994; cv=none; b=YOMCbajtNu/rTSH/CamwvyadELYWeILTMsMOzhxdhKbpM6hKoTAdqUF4x5jBMizmk7EWmThwUueeObfEieeXOIxvP9PXlD11nhXk97dA0fclx2rLgNH8gaiI5O8eRDM+FRi5hiX3V1dUJQituZYHFhMpNI8s7ZzcAClDESKqH6M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757171994; c=relaxed/simple;
	bh=jcBVafU+FnbL6H09KJ8R4hNtS99r990/rNDRJmBFAZU=;
	h=To:Subject:From:Message-Id:Date; b=U5Zw53tSh2VUIJsnxB+iKIxIwPOZO69+PY/gIa4aNokMr8DRitIgBb20x6NF6InjxZtFK2j/xqiRYSVEyYf480eXdzuuBAbxMm76YwqL6pFVYC7U7M+Lh+JpS4zSo7/aC5g00lLnejz+aUncLpumhhMp5i2A5kQYjLqEbz0dFdU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZHOUs2yf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZHOUs2yf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A054BC4CEE7
	for <ddprobe@lists.linux.dev>; Sat,  6 Sep 2025 15:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757171993;
	bh=jcBVafU+FnbL6H09KJ8R4hNtS99r990/rNDRJmBFAZU=;
	h=To:Subject:From:Date:From;
	b=ZHOUs2yf6/cI9jaWF57IrG+s1OiMKkdOM8hGDDj4vJM7/5dD7X1f59PBKfmPfoi2+
	 P/AEYZYT6rR2xJaHQA4yMxjPeouoTMy+ntXRyXP43ZcPaAh+y+TTt5ShI5iSHHIsjQ
	 fHIlbvrfqmVu0Zt/FPbvk2EtMotiKg+ciw7mOH58Qx/GK78YNyE3LZervh9M7PVh74
	 7tk3Em4M8/P3d0AlrAULWIzuZi6fgMwJSynnot2mTfQAOAwOT2tGEDeEX/y+VRulY8
	 /5JhXLUUSuSD1LM/gHsEQ6jsTiYN95TlBq21dS4+T+PsvGR9hG2jnNFfpLMqBVDhqE
	 RNrcw+Mf01gGw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E41DCA1012
	for <ddprobe@lists.linux.dev>; Sat,  6 Sep 2025 15:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175717199357.8834.15912960542907992261.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9fbba2cdbc9386f7c7e6667cedd08572eb2ad8708e78e15c7bba3bd39674dd2d
Date: Sat, 06 Sep 2025 15:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757171993
