Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D6775175D47
	for <ddprobe@lists.linux.dev>; Wed, 28 Aug 2024 13:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724850353; cv=none; b=UOfQBMEXWf393NbBInQQi1YLSQV0joTZrpSezECIEIdjCNzugj/ezaTp0pIEjm49Os6X9MFdKZqrzKkxLRAzZS7K/O3+NrZaOFIseMmbQVq1osNCmNPSL+n+S8HKYaeaLAQA9MmqKChSXVGtWDaN1Ks0oarhIaOFZ44bbA5eopY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724850353; c=relaxed/simple;
	bh=fV6W7FOw0GCQ2FiFAJmiQYZ6OweQZ5O5/NdFjHHDifM=;
	h=To:Subject:From:Message-Id:Date; b=Ui9vB8pkKB4O9ZrXo4PpKsFFBE8szRSXVEDW+ZWgXmALVnRUBteUWK8p2eBrwoQoILGAIyz4mLm8y0dk2AaqZugFoyLECPx52M4J4m1+Io+pw6E7uTkkjlk9jkB9YW8JDnnbEX+6bs02K3ABWNvtUF/nTmi8kEWb+c0VdMxFH90=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=B94PBKuk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="B94PBKuk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA62BC515AB
	for <ddprobe@lists.linux.dev>; Wed, 28 Aug 2024 13:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724850353;
	bh=fV6W7FOw0GCQ2FiFAJmiQYZ6OweQZ5O5/NdFjHHDifM=;
	h=To:Subject:From:Date:From;
	b=B94PBKukll4mHMCdPT1+DoAbT/fctE6vi76xEl4O+tb829Gfvppf2wmkTpzVLOcTb
	 YVKvbLoqx0D4r/JUJDAJ0FnIIPZZLXV7WQS1uSHlR+g2PKd/qLvjTzGK9xyw+n4T++
	 CdXSaQFXfOrlTzFRQaekOL4F4S2HyX8pwYvOZ2k0zZa6NhWnbU3IXCS49g/Qf6O/Sq
	 Lf/JjnJOMf+9mha/lT82ktWo4wMxvpCMTnioDaQSPJ6azeCwv0R+PS+40cj4N4IiER
	 0XWiwBumezZbCALTMHHStHdTZsu7niimmhtjtLjOpc5gkbW0Eaw5veop+K3yUx4XDD
	 xq4cFeHRzYpvA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99C8CC54FAD
	for <ddprobe@lists.linux.dev>; Wed, 28 Aug 2024 13:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172485035361.17331.2326012442573211800.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 86c18d4f3ac34fd44534ec1aab39cb5d65e43ce6b66390c7ec6038e763dd9dc2
Date: Wed, 28 Aug 2024 13:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724850353
