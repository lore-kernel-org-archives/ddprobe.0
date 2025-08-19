Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F408635
	for <ddprobe@lists.linux.dev>; Tue, 19 Aug 2025 00:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755562195; cv=none; b=kuQqPMBLZwQILxd+yPId1/rlIdWStEVi9m8G18CHOHTVc2xOrGYKJ36OjG7q+SUJVX6IzO/m6rTpqi5dC4bCbhqitJrQ/6IJuE2yd3/vRPJ9mLN0ZhQAH8Xjave1sCuROJbKMNUiXIez2Akpm2CmnBqxHANps22hgtrK24mlrek=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755562195; c=relaxed/simple;
	bh=JxRqSIioV0JDxwiSoVlcUSOmgXDoAcXqeG2iNAWY4ys=;
	h=To:Subject:From:Message-Id:Date; b=uG0vwrzye5U9qlVqdWjTPi51ejppqkq4T2H1Bv5gr2nLOOK2eUYWCQJAAYyTBwe9irikRr+MGHen2nfyDCBbgaGgp8MfzFTCkdjKc2t2VhalUAh8T9FfQNLvH4R+WvvRtvhyMQhg7KSET/s3LKHZ2sbZiPsgV7ERtAu4ooEd2Gc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Agd3h39S; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Agd3h39S"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9ED19C4CEEB
	for <ddprobe@lists.linux.dev>; Tue, 19 Aug 2025 00:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755562193;
	bh=JxRqSIioV0JDxwiSoVlcUSOmgXDoAcXqeG2iNAWY4ys=;
	h=To:Subject:From:Date:From;
	b=Agd3h39SFGrjnPIdj7FRIn0aOjIsOy/x1ciGyqXC9usU9sWEGcBrPWVkv1Plj1YpX
	 L61VPk6yEz8NvRduLgwMqJeNFz09qed5ahsGYz1ibpxVn5RwA8xYYY2azr687toPGM
	 79nByT6XSH4uKzsd3T2SoWC16K0tedLV6311se9BwjPbD+lF7peAo6sWnKfLpLNC7y
	 7wVlG7NjjBHpixyJJPjcCupmk8aDsgbwah//vIjq5769YxUjBvtwh+TZdFnlqrC97o
	 Z6V5J+hbYWQlfixNj2KLYDaDbn8Io2eHT+74O5tC+VCO4dQGYXi7nKPshJMdd0iM5O
	 eg65McVygjlsQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E27ACA0EE4
	for <ddprobe@lists.linux.dev>; Tue, 19 Aug 2025 00:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175556219357.7811.5980954152172886827.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eb8a812ebad143a7cab8470fb0dd070da483784380849a263e1b07f4299cba8b
Date: Tue, 19 Aug 2025 00:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755562193
