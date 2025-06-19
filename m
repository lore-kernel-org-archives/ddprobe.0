Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 346F654764
	for <ddprobe@lists.linux.dev>; Thu, 19 Jun 2025 05:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750309794; cv=none; b=bwoGkY3U9dcPIFTOBejoaopIsD/NGERoRWl+oKTmhGJ/R4CH3BGUTxfeUttrDCYH4z+y66kV65SG+CovFPYTC+YUpG9mqOn6HXCD97vBw6l6AiVmbn7Bfwv3+IRjPGH2YC0PyiwDBeeirO4FBa6FhMHjtVypU3u5Er64w/Tr5ZA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750309794; c=relaxed/simple;
	bh=vaJhrz4aFoKiasLQUlB0dhahPrSpgGcV0Q/JJDLjE3A=;
	h=To:Subject:From:Message-Id:Date; b=Cfb+K3fqrdeJA7RsweuPeXH8PD5a/ErcqsbgaA8vl93hUevw/887OxTAJBTe1UYAWedNdQuytfqW+4V8N4t+bcoKYKxjU5VrASFTlhM00AfKP6uHTGNYmpMT/57QrRL2iWEYnm/LrIDayCSontJyZxq4llU5ZYePVi6ZSchX/4M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=k7OUkHQ4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="k7OUkHQ4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAA2BC4CEEA
	for <ddprobe@lists.linux.dev>; Thu, 19 Jun 2025 05:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750309793;
	bh=vaJhrz4aFoKiasLQUlB0dhahPrSpgGcV0Q/JJDLjE3A=;
	h=To:Subject:From:Date:From;
	b=k7OUkHQ4tcNrp2CxV4b0HCDQg6uV+PDpMeO7LMQkANnQJ1GojJORFt4xgHn2i4Xud
	 agvL1xlX+p3FVWxGpM3WuceUHrK1s+dZOJA3JxKdfTb7Xukd6TcLusDN81b44MUREI
	 h7sdZLwHPO1XLnJOiiahODRxiR7/iUf6DlI5IVh4zAvtQWlY3wyL/Y1VXcpwR+X4o1
	 mnTbthnmrJC4VktWPobfsjjWqz8E9x4prvftoQJ7m3+KIR/iEbxFGWNQ/KMehoatKQ
	 z/xuRgi62cIDeCeCdnvGIx7yRlUc4ejApakxH8uDzoc4F1zLBQU/7bzS/apaxNFVte
	 oHlTlUHpZqeow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9180EC71159
	for <ddprobe@lists.linux.dev>; Thu, 19 Jun 2025 05:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175030979357.5468.5020290415337610686.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 62dac6959d759ef23fd10934fab08fdc26d1089792c7fe845ce7192f8606ce00
Date: Thu, 19 Jun 2025 05:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750309793
