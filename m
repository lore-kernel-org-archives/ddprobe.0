Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A34A161321
	for <ddprobe@lists.linux.dev>; Wed, 15 Jan 2025 18:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736966154; cv=none; b=f+4xmzCBmw8l419VVFoThkwiDOKyqjvuUthDpa3jCZGUgR6s5k2z3W2weZ4Z07xSNpo59Z+IEQzumSEhvKbYB0tv6viDZjb0aTuDY5xoyo1t12vopL7eaF3lzJoJQbUu7QwHRSlTXL/jramvonGGXJEkpqek9L9eca+H/LdatGE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736966154; c=relaxed/simple;
	bh=EX4k9bBBn00qFyp2FtFx+5WHHo+MySovndZ1fY5KcfQ=;
	h=To:Subject:From:Message-Id:Date; b=p6kcfeOY871nBlrErgsFG/vwV3sWOiCLiplF+NKxnqlQ9AG6qb5eyWHhg4711vJ2eW43e4tthfDHWFSAsfhSUEWT+ZnjaGbKbca47KQqvjSkmSOMN+DPrWnzzIlVBtz2ffKPvYfqcm+Ge0hY2Fs93OU1el5q5SQcTtzI9U8tWys=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hxs13DS8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hxs13DS8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6357C4CED1
	for <ddprobe@lists.linux.dev>; Wed, 15 Jan 2025 18:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736966153;
	bh=EX4k9bBBn00qFyp2FtFx+5WHHo+MySovndZ1fY5KcfQ=;
	h=To:Subject:From:Date:From;
	b=hxs13DS8bR3X2Ux0pQYrdS6rze7ktNugh/0HUJpZgdekT42YCEM+XkkmCDfE9eWSb
	 Lm2gJ1HRBtT2CauB3T1fLpMVB8SfpSyafWNR0X78njuxvDHyqnJ1PaVEfSJmOLyU2f
	 DI/sUtvfd63ZX02z28BqR51HAHDfeWv5q92UGUMDsbNWWtJu2UN5XR5QTZuzOgnAI0
	 +1bYwP0uHppzJ9W1Y1TjtzP/aVZXPwWfzKUAwYmO90SoyjgUDc8PIKEHAHlHrzXLQs
	 VtIYT4dZ6ANB4/Jl3yWGuXDPX40CN1CiRBJ27zHSbqJECXGdV/ya3He8TKUE1c5l1J
	 W9nab8ABpGjrw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92CE8C02180
	for <ddprobe@lists.linux.dev>; Wed, 15 Jan 2025 18:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173696615359.13141.3429930162095187430.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bab2fa08f15426c1f0f7e9f31410af8af867306a7b4200aaee4814463089845f
Date: Wed, 15 Jan 2025 18:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736966153
