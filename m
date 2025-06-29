Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 335902BAF9
	for <ddprobe@lists.linux.dev>; Sun, 29 Jun 2025 22:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751235594; cv=none; b=HIxC9FI9sh9CEvgR2RSh0vgKDVF6IzLa1XD1Beau3UDdrOmes3sewWI8Y9RBtJ1e+UDtEYAGwNmnQnpWL/eqs9++4xOsOfpO5kjcGA2+N/ktmfk8jjtMacDS9CDSd3ZevshsNsyfSO8WZRBCcBY7ZpePDeVEzxlSCNe4YdqmBS8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751235594; c=relaxed/simple;
	bh=NE1qlUk8axc7EwsOWK65Dv05iTytkCZBW7gObKmN+x4=;
	h=To:Subject:From:Message-Id:Date; b=cw/3P/2cryoMBlWd0wIBf9y9bbKhwMjbWZPVbtTPM8fhWHu+WpNJnqxtjIZLPLJCbxNKgg5VKRRP2F8Lo808k2DfN09mL2dQBe5dg/7FzlSsGXWaZUAW5kGoZWX1Mf6vr6LescCUjpnzE5iCYlsD++9H+kApRvsa7U3NeAWZfQk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bn4n94M4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bn4n94M4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9398C4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 29 Jun 2025 22:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751235593;
	bh=NE1qlUk8axc7EwsOWK65Dv05iTytkCZBW7gObKmN+x4=;
	h=To:Subject:From:Date:From;
	b=bn4n94M4L2CfyKDmyX2JGUx3bIGkA+Jq43+HwXve0YtiesDNLsBRKw5EcqnaFab38
	 B+fOKb/Ygz5owQBRffk5n2im9ig1dRX3GSj22nxHLOSl5MfJSiVVvUFnGXpWFfEkAi
	 Nh8LeyGKjgL+xWuSeE1GNF6dzWhBHFeSEkviLUVaAFiHP90ZHNQGPBnMbgMsb9t64S
	 98tFp9f8vtFu4dJlmylckBI2Q+PTgp5V0ULuM2oHep//pbMFZojCqwedi2oJ0WPRJH
	 m4YXqv6Dx469BT2XJfSXUMoAK2LoEwdWiLtBOiB1Mmrz6thpUQrCMatUNmhEHBfvo3
	 oQyw67QSOk3kQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95BF2C7EE30
	for <ddprobe@lists.linux.dev>; Sun, 29 Jun 2025 22:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175123559358.28653.4332794833806893449.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6293a22fdf443949dc0c42c0dc86095d53a2d1e42a91530efc5bf77ff8e31bdd
Date: Sun, 29 Jun 2025 22:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751235593
