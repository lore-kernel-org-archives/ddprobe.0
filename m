Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C8033101B0
	for <ddprobe@lists.linux.dev>; Mon,  8 Jun 2026 02:24:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780885474; cv=none; b=FFZ1qoxULaGD5F7gsKScwDb6tvuQLU0QPHP5xOREE7oKtgdGgWk3Tot5qiiLYz0QR3Fqp5CiwIGU3OaG+v+ezskplojKMw8SQ0qLdRTH3VulTBFlfCwPFgzjs6K6ESMOsPdpweszUEbFs2UC6kUlUoBwelzZqPIMvMOGdvvFA/E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780885474; c=relaxed/simple;
	bh=qXWJE6zAowA3urR6FwoxlEzEx7Jei6y//nvpzVE/1UQ=;
	h=To:Subject:From:Message-Id:Date; b=sjAsIJKCtzfy+8XOx2/0YZQxe84BAxB2SGbid9sc5vtS0IQh48U90+9doellX3gt7fgSsp2nJCQmsK5ROrt+uJ/PjQEUNNgBO51/ibJ+42zs0kHqtDW9wgT2zDov6N2zsNFt6qkfkc429i5cyIa4BgTnMeGAXAmJJvv1t+y17A4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SOWNbQe0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SOWNbQe0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E4716C2BCB9
	for <ddprobe@lists.linux.dev>; Mon,  8 Jun 2026 02:24:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780885473;
	bh=qXWJE6zAowA3urR6FwoxlEzEx7Jei6y//nvpzVE/1UQ=;
	h=To:Subject:From:Date:From;
	b=SOWNbQe0UI1FDgvwUrnVYU310Mc1eOD9sn+JQdq84jAGPvB4KwKwcJ/WqkWhYohc3
	 /ntgvFBtPxyqCNaVPyZdB7p13ADFuJXZrABPbHFc2+FXI3aT8pM7W022k3AjsxMx81
	 ACdK8zIGmXWfax+QnZyOJzYka4JlLlWphryA8Lf9+XsMPI8fuc9SWHwMhLfbctp32g
	 FrgWIMZ0qoeFKy+0BmjYRszhRRMwTRJ9r8pEao78ceU1bS3fnISEuPpmaJWu//m9Iq
	 hVomLijRp+URjj+E7jVm6XqYyKnwiX/IAjll1lEuANVUZe7JSRsYU9Qxey/4Y7b7r6
	 WPHzhJztVg1ug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CA25CCD8C92
	for <ddprobe@lists.linux.dev>; Mon,  8 Jun 2026 02:24:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178088547375.9140.16280116871470020753.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cc4ae1e104440ed9dca54635ce5a299d6cfc4e04fd8fed83ceb2b6bc1404bef6
Date: Mon, 08 Jun 2026 02:24:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780885473
