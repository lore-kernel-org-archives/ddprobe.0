Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 291D72E764E
	for <ddprobe@lists.linux.dev>; Tue, 12 Aug 2025 10:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754995794; cv=none; b=V45cQvpuU2Nb0/MQCb3r/5CPXnt3Ik1T2BM8vk5kMm2JdyEbOLssxQCN1CD4K589+NaVlq5a47QPvL50/SVp7ZiM5uyqpytaaLK1lyUfu1jXWxsaKm2G33/Oxju8uyhPwJgEMHk5iLvg0JJKhEwL2h/OzI/4GwrxHbEbr6kaFUM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754995794; c=relaxed/simple;
	bh=9ajkqlt8TXnB11qSwPkiMJm0JK6COW8m6r+nRLoodKg=;
	h=To:Subject:From:Message-Id:Date; b=VOWM7qr3wDC38gKXsv6z2YV8RyvzYe9USxZb/8QIaLMKZ08l64YedynSjJdmKKPrQZnTenx/TZJBvhm6SKCbKEAvwEQVCP80JBDTjHMt3PWNaAL26PGQwdmaOjIDyOC8MULYbXXk58e7Xkl6MMqxWdSGEQk/+48UMEFkCC2mutc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dd4mklXF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dd4mklXF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1C10C4CEF4
	for <ddprobe@lists.linux.dev>; Tue, 12 Aug 2025 10:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754995793;
	bh=9ajkqlt8TXnB11qSwPkiMJm0JK6COW8m6r+nRLoodKg=;
	h=To:Subject:From:Date:From;
	b=dd4mklXFcQqtCMQPjlVRWF3vv1l4rrJcXY4zQB3ELRgPEQq3iEhKBzMTnsrG4AXV2
	 X5zDs+i6Jn/eV4kPISgc/o3Ss6/KbuZWChqYIoIsybMQcVk91Sa1RSjb1uwxMiR2U+
	 Ok9+JvWS1IRKbmi2XVAKF3H/zNLzwCDLRv9Ce2Ou9pIT1bxRb/dFMhrjC9nMuKuEiE
	 Rpa4AkHtdeqRusHMgz+eMtzEEtsv0OPXBvn2D5u76RpfeLM/VomFWjVLuiLvMtCr2s
	 Eny24pJUeERVkUdGWckOD1a3CWynMDBlqtq1ANes+MeHtm1+4iMt0JGTaxmV2/pefN
	 2S1kiJpGMUdMg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92DDACA0EC4
	for <ddprobe@lists.linux.dev>; Tue, 12 Aug 2025 10:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175499579358.25613.17882922736671115679.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4abf00c4681d4caae56dda6fccc00dc223f2961e1ca1675a7ab73e69200cdafb
Date: Tue, 12 Aug 2025 10:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754995793
