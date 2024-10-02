Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3921516419
	for <ddprobe@lists.linux.dev>; Wed,  2 Oct 2024 23:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727911554; cv=none; b=CvFKr1N/p9HLhXFuMfyvvFPvxaufmN4x/VgpjvtrUL/7ft+h4Ozkit2kNzHR9LKatC2zlmk2oJrGV+5zjYimYQVzJ0U5ybUdfhUr9O0l2Ufu8UUTa33oStp3N6kRIXHGJZ9ex4LsIOVxxNy1H95Wr6Torycw+x8TWMNmOyg1VVk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727911554; c=relaxed/simple;
	bh=MXJr0V3D3Ymot3po3zWRzV9TfJ6cTq91QKnwiXmMwcQ=;
	h=To:Subject:From:Message-Id:Date; b=p2Z3NLs/+XBkolKmtUXBMMaxJuIYfELc/gepANaOUHz3bnuaafjQ7wEW6sqW11r1yXZSqx2G/IwbSYdBAjl9aRJBakZcTzw+OGw2KKFhy66IrzzgZ4KsavWBvgowa3jb18L7jzcpTO26ImNom85GFITkh7x5ohdAdlBTszQMmcI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=soBdEfSN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="soBdEfSN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B98D3C4CEC5
	for <ddprobe@lists.linux.dev>; Wed,  2 Oct 2024 23:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727911553;
	bh=MXJr0V3D3Ymot3po3zWRzV9TfJ6cTq91QKnwiXmMwcQ=;
	h=To:Subject:From:Date:From;
	b=soBdEfSN6PdIeriWau9lwYDTHVST+zV1baieyLS5TF34JW+MU1ppgsaM2J7Cy8Nea
	 fbXFTIXjF48EgPhzcLLXmqRJvjt0cniO2vAN9wXFxNNVEl14V1KxdbGa9MjBO/f9xt
	 QRHnFSR6vmNwkn/k30O1BTtH0W/A4Qljc7ALvDOFg4Lq600XYqpp/hfxlSoVaA0mZ7
	 tLSXx2rCA8C89Z8tCiZ+rMgFr3VUE24cnwyOzPA+jejO5kYSkbF7waiagHuS119Hrx
	 G9UdLqpgVbc+JQudihAMnsVtD4PVeBvRxR9LOFLgNKwHo/aJqj3I/1cKR66V3VnodX
	 9fjJUP250J19w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A3D13CF8548
	for <ddprobe@lists.linux.dev>; Wed,  2 Oct 2024 23:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172791155360.15310.15096996292520933908.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3a9a9456679fb8950ebd14072d1240cab52ebd067d6bc7ceb88b21bcd8737492
Date: Wed, 02 Oct 2024 23:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727911553
