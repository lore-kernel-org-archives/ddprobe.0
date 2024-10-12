Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F280181723
	for <ddprobe@lists.linux.dev>; Sat, 12 Oct 2024 08:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728720354; cv=none; b=eJyxOqJVy1mVlSSGnkiq79WUffG0UfxuiawSo1Ba5r4CDY0+1pvylsauNNRp19h4Ib3u1HM7GfwfWJCvSiu0KSvdiV0EECHy/QKsojZ/4vtyyTwX67LkeBCW39JKGQlqyLHZ2oM538iDNdSAmtEo2DQHkO+Cq8TiAMjeHnKIlls=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728720354; c=relaxed/simple;
	bh=9oFM5Awxsrs2XtpjtBQRge20HxoYu9hYU4hIEkZZKeU=;
	h=To:Subject:From:Message-Id:Date; b=b+K++pRGsuDkG3Fi8RfisHrVA82z2ZjXSDOqoFuBYQu1sTLUvvuVriOx/Ks3GAvtnKgDeeRr6c7XLs2QMgpWVbVdWLs0YG3SP+ICcuGMAl1TUTqot1R69Mjq6ZthUFhYrhHOdtjvFARlbXSIuRS72nEm3aPRsBAWfvxu12wpU9A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=m/JM2cjT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="m/JM2cjT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABB9BC4CEC6
	for <ddprobe@lists.linux.dev>; Sat, 12 Oct 2024 08:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728720353;
	bh=9oFM5Awxsrs2XtpjtBQRge20HxoYu9hYU4hIEkZZKeU=;
	h=To:Subject:From:Date:From;
	b=m/JM2cjTadLhmQbGx1y4OD3cIQbQOQvg6gmpNsMJswDTLCrcWmHjhWFUdfIbIieTO
	 JtK4p2hqJv/QpuMZSaoKGwzsVtpQlKdym8Orv97Wlv8geG2ihrBTQQ7+XMAF6TqFIy
	 LEVmQWoBDNKwmFSgjQs3qN9iOidT6PUD16DnAFWNCmcOjbIKOLnT0EU+BcrIajV3Zc
	 94qI9eEev17ZMnj9jhtj2xrCiAqodMqaza7zT3qwCwqxQc7aqme5/u1tn6+tMds3Pb
	 6YgAJ8tvuEdjpC6k1shC7u8l9lYRUeA1MZYXSIzOr9AXrVb8LOdurLzkxSJuCGouac
	 QWElL8EmGw7VA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94AF1D1A44A
	for <ddprobe@lists.linux.dev>; Sat, 12 Oct 2024 08:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172872035360.10406.16408349985447155728.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 77c665f4ba3276fdaa6fca3b77bd05200cf87d9d1ed0d46f1ce51124f7bd1bcc
Date: Sat, 12 Oct 2024 08:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728720353
