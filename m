Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4FE59EC4
	for <ddprobe@lists.linux.dev>; Mon,  1 Jul 2024 00:34:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719794063; cv=none; b=U7M/j5Ve430KOBU6BaahljSCpQe/fp6RXDehJvg8nLR1KI04wWNXd8ZAVbJOe6VccAxHcyZa96vj9ilzhMh6v3QZWrbEB1LpU2WdqND3TczbNmAl9fuTxLoCpSznFCXBeoTKrIu8tX6FV6auYLnK7rLrBCKMR/ghDHhb0f7Byys=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719794063; c=relaxed/simple;
	bh=pYc2lrzT5MiztZYKWsEqzSXUxokS7hG+ambcIJsmrx0=;
	h=To:Subject:From:Message-Id:Date; b=Bsb3Ndq/HhVvoD2lbbEYPIGmQ15KAOh7G+oFee65gh2/xk3ODMatCjjS6L3wZU76axhu0FwJhbpI1RHenBp5Xu+pSGi65ayDRdqaREcitM0bteOlg/G8CZYtLN7qSLRJpxGoHbqWYgUGc9b/LkD67ZFYtGg1LvHp6DFg+6nrAvw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Me7ShhqO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Me7ShhqO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D909BC2BD10
	for <ddprobe@lists.linux.dev>; Mon,  1 Jul 2024 00:34:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719794062;
	bh=pYc2lrzT5MiztZYKWsEqzSXUxokS7hG+ambcIJsmrx0=;
	h=To:Subject:From:Date:From;
	b=Me7ShhqOrm33sq1dgOQ1EOD0IdNYR0lT214evE5abizObd7GOjbfUUAV+PRw6QY5w
	 nGzyQrZpfEVS22JX/VOR4gl/H515wXbJS/BgNwQQdxbXfEcU7wzHAYa5mMzPIJplUi
	 0f03mmHcBWNy3XsbbvZ+2AMSA1nlkWs5pgRqaBXfQ10Tjc+YdneiMDqCHIpaTBuVn1
	 9Xj+1R5ZltfecpMp0+VQXtY5BUfDJsPBrKv5sU2gi5JcWAJaHP5ydsFsaUusJNECn9
	 Styup0HSePEahPj31hlqm0Y6Y2NBMmCMNbEcbTdfTt2CkLXWJALGyy782UtAB1v0x6
	 +mSr5G+bbW6kw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C540CC27C4F
	for <ddprobe@lists.linux.dev>; Mon,  1 Jul 2024 00:34:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171979406279.32475.2765899029754779731.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bc080adf5a4947848366cacf53e8eb89ded20ba8e4f581429ff9b1b0aa5df598
Date: Mon, 01 Jul 2024 00:34:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719794062
