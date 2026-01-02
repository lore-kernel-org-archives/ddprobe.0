Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 058931D54FA
	for <ddprobe@lists.linux.dev>; Fri,  2 Jan 2026 16:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767372834; cv=none; b=A3bQdqFUw41TdcJGWTKeE+Innrdu233ZbuCr3F2THF9yVngPJv/HTcBopPKh7N5Wio9FtFuYxvR55vdkOSR4/GZ+1vUq6nGUe+y9uX8i6dj2l1K3EUr6otvUAdqe7b4PXY4oZRkMW0i/NPA/UQJmy16VobOPJKt4V36zh43YqJg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767372834; c=relaxed/simple;
	bh=y4Pa+j+nTsGSAwCbveMYV6flkYqmrZlKT0AC+MqoqW0=;
	h=To:Subject:From:Message-Id:Date; b=MtTo/exBBf+42ef42/CsHKsm5Et2/YXciKBbt5Tr9o1u2X7dwWHJAYtuNDx5XIBCeZQLYkIHY97qR6DMtIQddx7ZUTK7R9dR0lPtTMCeoIiU8FauwyvsFbQs6mpQcMHWYEE2hFujug0dV62fe/lgfRi8IY4K3mfSAqEMxT9Xzdw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dVGcodrD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dVGcodrD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C980C116D0
	for <ddprobe@lists.linux.dev>; Fri,  2 Jan 2026 16:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767372833;
	bh=y4Pa+j+nTsGSAwCbveMYV6flkYqmrZlKT0AC+MqoqW0=;
	h=To:Subject:From:Date:From;
	b=dVGcodrD0jR+uhBzUattUrn4B+PLiXh6eD67hognOWJJROfyDKcBaJqhR/UDkxPrB
	 RsWx1nNlr/dazZgFoiLKdatkXQy+EiXMyomFij3PX9os5xJrbgQOF5O3uIvG81XBcv
	 NWsp8DAvwhwXQ9BsaxkqU8SfqN9p1Q13uYBuGxIzpMuVgXU/ay+CipHU7YdcPFEWPf
	 I9+XCcFreOyNTKOpVFpWqdWj+HfZibIOsSpsH79WuXWwCnNr669vV0jymFysjCSjit
	 WBgUXbs6lDSgL3geNquF+Cq68+Ds6YKBRBfJlkmV7sn1fXaEnPY7BcEs+M3PDIslo9
	 ZbdAsRHgP45cg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F16EEED628
	for <ddprobe@lists.linux.dev>; Fri,  2 Jan 2026 16:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176737283357.19337.1898363840448275220.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eb4efc4c46370e11e8882501ee0fc51ccb22b6c96ee430bbf3e2c407b5deea48
Date: Fri, 02 Jan 2026 16:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767372833
