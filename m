Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 097A028B4E2
	for <ddprobe@lists.linux.dev>; Thu, 29 Jan 2026 04:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769659434; cv=none; b=V6SMLdDbV/ykCJoLLj0hSwsaKttSqbPS0nZsjJFBfJnDU7D29kXalb53zSfWbZHshqL/Oc1GpeBq1ccxH1v9Bu+YIzVM/hbz+LLRFMdStgqBW1zjlC7ZL0D+RXWhyseT4dmqN4Zm35QbY19WpCKZDk6227Q+fVoWjeNUULtLvn4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769659434; c=relaxed/simple;
	bh=up5GNGwM5zs1iA5/aJlpZtqd/7c8X11jirxBBHQibzo=;
	h=To:Subject:From:Message-Id:Date; b=eHU73AsRNlk99lAvMDQMFrx7ycpY/Nl8o/h8Z59NMmH1vd3k5ebvWUnMHNoWIRzs28+Eap8PGJAYAqiycbPo4wNkdhruBsnBco8g+IFI9bjtrRk1iXAeDbqjWR7/kGBpZy5Y5mb237+t5wpD02OXRg3GrcmePFrHp65nAK0jdwA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VNE4ABkZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VNE4ABkZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F338C116D0
	for <ddprobe@lists.linux.dev>; Thu, 29 Jan 2026 04:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769659433;
	bh=up5GNGwM5zs1iA5/aJlpZtqd/7c8X11jirxBBHQibzo=;
	h=To:Subject:From:Date:From;
	b=VNE4ABkZCfZHd5ssRfggO4I85x323qa+ISEm/p8KipjdhHCW4knLoEW9DFjHPOC8L
	 tlucaDQUBXVhkbSN3KPgaXWQf2yxHhgwTDR48C6VqZp2yrGus2vYxj+quYtdCcPcjf
	 BpoeYYfLrUm5FNhiNXpLIM2u+EcJabsUypOnX3MkXoUE2fwEPU/Q2UC0keorEWcq2W
	 qCpoAFGgxAfn6SNNIC5+LvpSK8c47DOuEMNqtfRISMGj3fEEnnvLOhI2vzpSz24yrH
	 DKDuk7j/XJwpCsm3CeX3wNRyX7dJ9UAbmpzn8jPFvq0EzpnxEWrer/FhpZKv6tMTyO
	 fV8u7XItiZOtw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90083D3569F
	for <ddprobe@lists.linux.dev>; Thu, 29 Jan 2026 04:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176965943358.27333.5878909438461097868.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 15c76b3e1fccc8033006f65382d318b0f10eaf01cc41fba7162792bf93382987
Date: Thu, 29 Jan 2026 04:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769659433
