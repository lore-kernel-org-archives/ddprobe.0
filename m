Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 643592119
	for <ddprobe@lists.linux.dev>; Sat, 22 Jun 2024 09:32:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719048743; cv=none; b=LS5EhBx0nP2Kj/+7q8CJm4HBJW6NQ5P4JnkvCF50Qi5XsdLSYdsdrlzIl8/WWjyPBgcF4ogTpKQfTr3jLEcQ6w9ZeZikCzsliugSoUmp6oFLehDnL/vC87Lg/A05omHithknp+jEbaPu6QcFk63cfljSe6+Rwnnhd2tQWBMYnC0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719048743; c=relaxed/simple;
	bh=hfcJxyfC5c3YQd3iiUVQaIIkSxgAWYjQ4qUIU8eG6JU=;
	h=To:Subject:From:Message-Id:Date; b=efEnwQg7lOqLM4BPQwqPtE+Bks4nKM31vBspTrlvo5x/XRTYY8ag3J69VI7xhu3Q2MTAzW7epIfs2VfUc2ESBnhXuMYHnOwNa65wcaMaNplfHqTRkkpHsRnq8BT+iCqG5YCmq4SHTP7Dtb4BZg/X+wEM2oU336e1RFZPqetj+dU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iB9313+h; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iB9313+h"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EDFE7C3277B
	for <ddprobe@lists.linux.dev>; Sat, 22 Jun 2024 09:32:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719048743;
	bh=hfcJxyfC5c3YQd3iiUVQaIIkSxgAWYjQ4qUIU8eG6JU=;
	h=To:Subject:From:Date:From;
	b=iB9313+huYmi+Q35IECRkrgih2XERwZwXnNBTRSYbKyrnCAxRornxxvkPn1SoAtp2
	 vUWlptaZWAYDEvZ1Lr6IZPZSYBBrSdTrMmLAhVh246xanLgbo0Ad8wAg2u+D80Kyqz
	 +U+9Ef6hhKXhgjNsk5mpEBgqIV8EsL4c53vj9a90gv2X5fmaccHBvzHLuMglUu5le7
	 s0Abkf84Eo4VW/bHty4GGO9ZzuwA3mI0Pg8k+tVWaKtw6ODuO2qbhAGi+BDVmMlZyM
	 rIJguZymQHz2jCTPhfM9S5FJzV4RWwVJhpfdRIwJT70034Aajth4iHkdKdeVATyE5y
	 jcQC4MqNHjG3g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D689CC27C53
	for <ddprobe@lists.linux.dev>; Sat, 22 Jun 2024 09:32:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171904874281.10548.17726327647470969128.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a609e71376583477241f4f1e50cf9e5b0be4b530105ef517784f3d7e808a4342
Date: Sat, 22 Jun 2024 09:32:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719048742
