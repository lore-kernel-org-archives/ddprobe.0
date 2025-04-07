Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3ECE94A02
	for <ddprobe@lists.linux.dev>; Mon,  7 Apr 2025 17:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744048194; cv=none; b=Dp1kY/nvda5kABpifkDiJODA4uU9MO+OanyXX3dOZ8SOyfhXRiB9JgTxD6dh7MStEsfDDkiBOekXVwpRyFqxS1NYf6jKW2iNTRJbs5a5UqZCEzg1Bk4ro547ONUVMQbSxPoTScmVqkDCDiGUpAnPz7z254O9gefkdtxyvtbrBuc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744048194; c=relaxed/simple;
	bh=xFIgaNda6qF+tMcgK2FqNnf5b+VADP9HW9G5A86sb3A=;
	h=To:Subject:From:Message-Id:Date; b=OfXjIIUIXPK21rOY/X41+ib9kes3AAK9Q4H8fhUF1T9loWu+YbrPluuq8x8qbvhgClFmt8K2crTZU0MyHH01Wb9igzGTcKCQpsFEMtzVC3Q+9ErOMXQDv8tNCeQPvDsWJT2kee6+8sGRbs1BRG2e032krlPn97xgD/7mYrfP+6g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Hzg7yVty; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Hzg7yVty"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAFD4C4CEDD
	for <ddprobe@lists.linux.dev>; Mon,  7 Apr 2025 17:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744048193;
	bh=xFIgaNda6qF+tMcgK2FqNnf5b+VADP9HW9G5A86sb3A=;
	h=To:Subject:From:Date:From;
	b=Hzg7yVtymNU1aJBggX1WMvKDu2gMThJRMP7akeIuFrGREnQePkT8l7KhMQIZAfEjq
	 X4sUiU68rLQ5uLhHTQx9pdJfU/k0hVmqLfMzcxL0kDaT0dbs2mrOVWvdn1wVUQGrw+
	 QxF1QOec5L/Set0TcvnukYnEVix4/qAOW6imSKJVPlN0yBy5mlFEjOR5ZKmfeObpPh
	 nfpofY4Mc9+z34HEcY7QETlKVc83hEhsFKpp1Yand2PvMXZ5Yfpa1P/oebs3cNx89V
	 OSvVMm8xHJMEMYBK/xbaZfj+z88Rx4DIa2weXcNQtJEkjOaPlBSAj/C44hTjlWnJXI
	 aKCoEBvi0oGsw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94F0AC36010
	for <ddprobe@lists.linux.dev>; Mon,  7 Apr 2025 17:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174404819360.7061.5615543196915098282.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 31c2e234c50f4645cf1e502b760539ad7d3b8f3548784c723e04c03b7499722f
Date: Mon, 07 Apr 2025 17:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744048193
