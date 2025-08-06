Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1937928C014
	for <ddprobe@lists.linux.dev>; Wed,  6 Aug 2025 13:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754487594; cv=none; b=OMulWC5eo1aX6I/fcPZZb73V0gczl5BVA1VHnB2N5ET/e++Jwp5bZAO214gXiZWHWMTfprNvL2WxPcDxyso3jzd/DukA2JYtFEW9BrDAwDQysBo5K42lO6YZYJXrDgIKnGtpSI/JtGVYzmPbQEQDdUhhh1TA1qp0m3o4JoGIzkE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754487594; c=relaxed/simple;
	bh=dQ62hPtRz5XFrSXwH8rooWFVl+lgDyurlV4uFIj6Bgk=;
	h=To:Subject:From:Message-Id:Date; b=FVYW7FYwUj6vJb6h3h0X6EBuXXvSaAESPtIfnSGtBK5vrwGO2OsBiVfItN2lGKImyxL3jLxI8wL0y9cu0YVENYX8MIf9HLJBIjq1d/dUDVtcTRJDTociNAtExdupqak78Roz/FLYYQmi1Q1Ahpt4GcEsXyqX0kn6QdT9ZQtoK7k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LEWowcoZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LEWowcoZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FE0AC4CEE7
	for <ddprobe@lists.linux.dev>; Wed,  6 Aug 2025 13:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754487593;
	bh=dQ62hPtRz5XFrSXwH8rooWFVl+lgDyurlV4uFIj6Bgk=;
	h=To:Subject:From:Date:From;
	b=LEWowcoZJtjN+b36Z4SN9TzaiqVuRijsI8jYOVcFbXrNtRq/l21CfZoDnCipTiMob
	 HJ+B74yhagUrCsEINVaAR1zweXG4S8yx7LeFcnl281hRxTlVHZN5qOBj6PcDAoBvxb
	 UVDX5YcWNtrUDXpuu6SCfUguvX/IAZjcCaxteVVhM/CBTOTSa4ZxzLerSjT0+4DnIJ
	 s4+UatAxNxiws8yuSutka86XwXwpR2hdk68v/qtrsfdrYSfMWgsTJbfvCWaCu7nwhz
	 zIBobrneGxoE3blzlOXqqw8JkZazhQqvR5FjA+iu7COVG0L+nYHIssjuoZOkC/sf7C
	 lhs5uwSkHBJGQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 902D2C87FD3
	for <ddprobe@lists.linux.dev>; Wed,  6 Aug 2025 13:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175448759358.5825.4064292323078508767.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 246203f30f5c810c832701b2c3ae15c44bb536eb399d3ea5c3c7dca88ccf10ca
Date: Wed, 06 Aug 2025 13:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754487593
