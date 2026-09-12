Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48E3D3CDBB5
	for <ddprobe@lists.linux.dev>; Sat, 12 Sep 2026 18:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789237234; cv=none; b=YMgffKvZWk4TrX/0MY5MWSY1uCZVaUs5cty/zVgn9Zjdo5dUYkPP3GDJXkQF9p6+hvB0W2zxpmfM7Dk48u5kHNlN1VUbbU74tOWm++uF4Jr93SfidZLP36TzttzwRHPXLhYyrih8d5bfbHMFAwwkuNr7KflO1mdPWF0ZmoTHXbk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789237234; c=relaxed/simple;
	bh=/YI1Iv8u8h/6gr53BMHWXHfBIk8T7yS+97heS5hX0Xg=;
	h=To:Subject:From:Message-Id:Date; b=JcmrCLl4jIeyC3zRzj41Ftad9rtTJBb3wtAuuVz6rculudV7i73Br/HHYFRS8xI+bbFsq6VcNtR7J/YDAbPTD7A0AGYuGqugZpu8KLgVouE3efT5vrv3GMrsdAFYSdu0M8zRyVrfrDWqPHMP11zwOpn8sxDw5QMaOWDWBEmHxCc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qo9fTFe3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qo9fTFe3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D333EC2BCF4
	for <ddprobe@lists.linux.dev>; Sat, 12 Sep 2026 18:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789237233;
	bh=/YI1Iv8u8h/6gr53BMHWXHfBIk8T7yS+97heS5hX0Xg=;
	h=To:Subject:From:Date:From;
	b=qo9fTFe3R4Nq9Y/NBQnQOmcCXAlfhcacPF34cxTUjykn3gXJDEKgFiEGRkbMG9z+L
	 VbPkpS+c53lpjGVN2SvubdsMTzBnDAImup68k/xFG5OZTX6OuEkkp832pOZAeicLQR
	 BHB/gXOAjSt1/9MYDGaKLfWyHsUsJz57rAMwhHKPuWnDmaxHfH3eRpoxxhHNUXCtpC
	 qBpCWYRkeWaq9tHsiBK7MNsJ0y5D+WihPvLRt14iO/vkeIciMtghLWGG72rJO/TV1m
	 tD8Rwv1tZY8d11FLuMgCtjNQKVvMyH95Ga+S6m8WB4uBfxwUJafAVro5sc6CdsIIQu
	 dX5lPyqh34lCQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A95E2C88E53
	for <ddprobe@lists.linux.dev>; Sat, 12 Sep 2026 18:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178923723368.4207.12776934757981915444.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 12ddc1e440c76bd4582b6dec63706cf4c536cc6fc5310dcd6db609dc22aacdf2
Date: Sat, 12 Sep 2026 18:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789237233
