Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 006F834D394
	for <ddprobe@lists.linux.dev>; Thu, 26 Mar 2026 07:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774509294; cv=none; b=oIQrx/GWos9PniqDQADjth5JFJgWzrqgl9GHzyl5rH0lMaEkGB+KXMdMgKTaMTAsaF59H8WPw73IjXjJ6AI2f4s5OwmSSWH1hvbNL5jdvw9Rg/wxcLqBZquVOmY9c+bev6shcrR00Mty2vaob8/MnpiHGzByWpVvxktclkoIpE0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774509294; c=relaxed/simple;
	bh=2ZBBCRgLz4S1bodYwayK/W9Cp6SWRnwcJ9LSQFPKgzw=;
	h=To:Subject:From:Message-Id:Date; b=cpLolENhlWPDcPZ8GMtA1CFbArOqJ7AF9vBjRVtDX1bPc4JXZDEsVkpNiivgqhmueF4oJS+EdINfF+nzTW/vpNfT2hw+TIvsKjriUp1I//+MCqCUj62CFstyTFX5R8RBmXN+vwAzlTA6oRKPmaEtladQdk4Qt+rtFPtaGa5pVew=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HZIauLCB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HZIauLCB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A44F0C116C6
	for <ddprobe@lists.linux.dev>; Thu, 26 Mar 2026 07:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774509293;
	bh=2ZBBCRgLz4S1bodYwayK/W9Cp6SWRnwcJ9LSQFPKgzw=;
	h=To:Subject:From:Date:From;
	b=HZIauLCB5zYZk2bOwKG0J1lYOv93ryn+O92RoEFb89Vu12QoxfnS4WIjTOSg0hIkU
	 +s+5NGiue9vaFs62Z5AUM8aaQVk1+AS1kl+qp0Z6sCxwtwBWon5u73sz7ruKerh7cc
	 fqn8YdJ6k0/iZwe1K00GF7faIebgPdSPpJaRtHPU/n9fvV3FnsUOT500YFxE6R2n3w
	 i0lseD0aM59gbWKQqaDiQs6gi7UJ1tK3gfJaqXgORLmtizutDJUq+qap1JFZJK/txI
	 GGiqtAauH5KEun8nwUQ2McyNPzu+JTxIO6btq54Nz28XDGibv7dA5GAKOKSU50MVzw
	 0ODWnvdBaOHmQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9275D109E556
	for <ddprobe@lists.linux.dev>; Thu, 26 Mar 2026 07:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177450929358.4295.2622266369928996189.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b57189c312b6ce1670f37108903995808f9c718219d79cd32e080573e5c9f291
Date: Thu, 26 Mar 2026 07:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774509293
