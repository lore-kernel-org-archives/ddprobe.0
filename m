Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5267017C7AD
	for <ddprobe@lists.linux.dev>; Wed, 12 Jun 2024 14:08:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718201303; cv=none; b=EkODoynzzFnZI9SrvJ94A16q8Dm7mXDyX8L9Vg3qNpO0a8Hizt5JXDFXfqBffJjAaM11ASA7ejVeQpX3BouYshQBdgoXotIuD47N+Ck7OxqSKLRaUBPvg2/ZXROQIfVPt0b3Dej2MRk2jDuO+sg2twz52dD2l08rxbMX1hCtZ/E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718201303; c=relaxed/simple;
	bh=SJy6flA4DszZunKmzopUnjeTazbf6pbVUq6/g0LZeq8=;
	h=To:Subject:From:Message-Id:Date; b=Cdp5ozB+rWjximFTt8QClWtdzeGzrzjAJUkc28Q5a9IUe0tz9sSpkR6cXw9ipM56ra6xy240CpcH1+mzFJpx1Bfm9TGiHG2eIeaTgAp3dHXyDIh2I0F47Q4btPTQp7qk7PTdbIUEeGez3y+dX+BGR/3+z6THO9YnwQy2DJ9zyOs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=f+qHHz04; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="f+qHHz04"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E538AC116B1
	for <ddprobe@lists.linux.dev>; Wed, 12 Jun 2024 14:08:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718201302;
	bh=SJy6flA4DszZunKmzopUnjeTazbf6pbVUq6/g0LZeq8=;
	h=To:Subject:From:Date:From;
	b=f+qHHz04KN3oOVszB+yRLDTujSo5OXM2/3MXDpMqBsZ8irEryJNOJETZUMWPDGrzs
	 myDOuDCnxUEdY/cooxxPS3FxSNYXHfCrl44o5+LGKJquGxRyO5ba60hUNTtpsgUYH1
	 DJPvY8iOwAfg2pbIbitFgdNCWOTWJfQO/xFdj2hnuuxeueatZUxfdJWtM2BARhJHnJ
	 1rDlln2UvnpRWimUFBEmglep30hjOB4ysp5HN7wVqF6V/EI94w4WFnhNQnJ4CaTgTR
	 DslbviXkWBa76Y2dCbrcPTMfdegGFbarQZn/kSYySvAO9sYH6hXnXI3s0E4eLB8bDt
	 9vYIHgObppVQQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D1643C27C77
	for <ddprobe@lists.linux.dev>; Wed, 12 Jun 2024 14:08:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171820130284.2596.4549645601754308038.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6805e6850aaa11a8b4e366b62199a8fcdcacd0c8b9709a15c18b90afb8e65f68
Date: Wed, 12 Jun 2024 14:08:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718201302
