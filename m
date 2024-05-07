Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 330CF156F24
	for <ddprobe@lists.linux.dev>; Tue,  7 May 2024 12:52:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715086343; cv=none; b=ap0olpUTkruIVgAn1dWus/vnRTv0CeNSVUtDR/mlxuR/a2G9ujAcbSvvIBjB6VXqbSoNGodg/z2hrd5YxBesznc9gGqWw36BA0CgfPVEotx/3OnlHeO1st4aB7t6OkPSLa50c3FYplHxZogXJgSeGqiOR0MWQ5DCRFA9iy0FjnI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715086343; c=relaxed/simple;
	bh=lmbPPXxesWC1ukw0Wx9ddJ5z4zASc8nl4mPF1iofYDQ=;
	h=To:Subject:From:Message-Id:Date; b=kbZeWzplg3EUDQpa6v3aplRCSwcrJVCzEYPHxxuQcEUmpGdODsAiuhZQ2NWU5UoNsKM1MZXcmMWPuFJyn/6augbvRr0fsNDdq5UzQh/cVVA1yJ/KReSGKL33RvQ1tMnwV6waDhw5aDJXusGwIf4DoYLgq4R31Gh8j7F8RM0Ndj8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JG6pmvb9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JG6pmvb9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CBDA3C2BBFC
	for <ddprobe@lists.linux.dev>; Tue,  7 May 2024 12:52:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715086342;
	bh=lmbPPXxesWC1ukw0Wx9ddJ5z4zASc8nl4mPF1iofYDQ=;
	h=To:Subject:From:Date:From;
	b=JG6pmvb9882k38tupyu4DlhNU+ocxpKJur7dmDtKoMw8U83+hNzEZLDzMT1FFDrGU
	 zz9J7s5jSfk1tEMXP5uPWEjo/HvAwXQfUy4/CdVGbB5JJVl9elcmOR2TCiLkfQ3nu4
	 vo/Dfqm1uWfIkE9DYiFh18uoi0TeXBD8Gj2icGl/kygv0KO83x9Nu0EZadbvwaG52B
	 qvxv1moFshKg4LXrrl+cabGCIZQnLk8/iq8pay2AsO/a8MhWCNj2kmDArfta5cgGRL
	 LjyWOR5vCJtjtgn82/2LYvlsmxtUmoBT+hUDGpPJYEg++ZkSPcadtvtC0D+rpXodoo
	 g52tHOt/90hHA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BCC85C10F1A
	for <ddprobe@lists.linux.dev>; Tue,  7 May 2024 12:52:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171508634276.9341.7064086380710111979.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4832d66b7c1ac0d16bd98d478975af31e2c3be2339877845b77c31e7c8c05534
Date: Tue, 07 May 2024 12:52:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715086342
