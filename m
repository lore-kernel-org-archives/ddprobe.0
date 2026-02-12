Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0222F3161BD
	for <ddprobe@lists.linux.dev>; Thu, 12 Feb 2026 10:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770893694; cv=none; b=Tzq1JECA/ejYRuTXSHlnRfITHbznPEi1T4ZE+GNm4EsCsghclsVDpjYrPCS/z/WwKz1EH5VEpg61WbbYXFFkOx9GvFpI8ipMqYU3fnqTwq/5AxzVu8FlQ3jQhePGXVin7HkccqVcVYi1sWDX1KaPN7JiJh9cSc8uUHRz1or+a5c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770893694; c=relaxed/simple;
	bh=FJ6biGh9bcvnRJgp5OgFOoGHnav5gN8hUhSHfdcqJF4=;
	h=To:Subject:From:Message-Id:Date; b=JZ7CEL7oGhqRRXBZZBxCByXEZ30O8l2yDVirYBswuhMV65h/VV6Ag0Maa/ptozBhIcUChx4BWxKrMJwUXDWt9LoKupHETpdsjlzCTSW5BtegXGN/C83VQ/MllnbBayUe+Jn9ZB4LQu+iBaLn1P419xOdDOIDwTteHOVxAqsYEPc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gfQYCx39; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gfQYCx39"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B07BBC4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 12 Feb 2026 10:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770893693;
	bh=FJ6biGh9bcvnRJgp5OgFOoGHnav5gN8hUhSHfdcqJF4=;
	h=To:Subject:From:Date:From;
	b=gfQYCx39KDg8Grew6HF6wLTj8/ZXHx2CyR4ZnU3zaBr8zzzxpimgYS421fVtT+Gal
	 1yc00mUMHelgxxxKLd6rAVD62QJeCAX6wwWEy0pzO1s2MvJTWysBLQKy11Egv90Dul
	 fDtyRCU9KUwfuplVlzrpEmQyWHWyat9AYhXAMyYicyFYIElQ/LNfRPyFa4STsXY5lO
	 ZkrnLkNB2LTYmsnPB0cLF9DUyoRc3bP2F3ZHxcaOJf/WvGfjpfTyFocIevR+fH1bBP
	 F1u41CVPEhxTV06F+Rw+CBdjlK/A9KKpw0cAYr2M/dE299MB57pFVi2LvgbfGF3phr
	 zlzlOl15UqunA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99F90EB4901
	for <ddprobe@lists.linux.dev>; Thu, 12 Feb 2026 10:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177089369361.20463.6049630488318611347.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7106b499955459cad5a3b58a98219de6635400317980a8ce4c2372eb4654ee3b
Date: Thu, 12 Feb 2026 10:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770893693
