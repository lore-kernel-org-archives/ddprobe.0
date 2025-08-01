Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32951242D9C
	for <ddprobe@lists.linux.dev>; Fri,  1 Aug 2025 11:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754047195; cv=none; b=BMkct8sjklkgi5Haq5QHe26uACP4tu3jadDBJ0P+ZKQRjc6hpWOrkJvrokHmk9uU4mlUsX+VmSbVP2BIMLSv7apWczYWC6qJXLBW0tQz+WUma4uLmFVV8XtOMjLZ4ZqUxqydpHCaZVGKv0LhYlIkPoaUD1EfLSEwYfaD84CrqUA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754047195; c=relaxed/simple;
	bh=wZ66EayH4cnKZIegBcKNMuUsF3MhEIcVcVnRR90rIPI=;
	h=To:Subject:From:Message-Id:Date; b=spauK3wav6iOvTV7fkph63BdyeAy1wU2P3uCay143rjh37Vswb4Fdb4GJqULdIe/IB5mniOg0xaRsmHD1mN+bWCs3he6b2fyejgXlvJF9nPHoYA800z1qNWSUmK2wA1ovSzb0ImabXOH1P0+6VHyv/DPErRDxqN2crPTR/LqZGA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=b+v/kRCm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="b+v/kRCm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A83FFC4CEE7
	for <ddprobe@lists.linux.dev>; Fri,  1 Aug 2025 11:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754047193;
	bh=wZ66EayH4cnKZIegBcKNMuUsF3MhEIcVcVnRR90rIPI=;
	h=To:Subject:From:Date:From;
	b=b+v/kRCmv72rCraHB7NKGL3l3/+q4za0+5kVDjoiy8gvwiOKubVrhgvPP9iP3wqYl
	 xrrA+yewq52elIN41h9Rufbe7JFQU4XW1kz6jGfRucXVseAbk9UCg3nW5q5FIv0U5k
	 eALoxGiv2eSOI5dcQs5R4g3I0sd4ajWvL09p4Iv/BuUlFAqN99/k0QuZkms3zpD48K
	 uUPAzdqYg9p0q9rg93fKl/cCQzZD2F/Gw+r1Ru+hk/si8RKSZ8LTTgpwOn9S3hA0zY
	 tpdVQqHzpeOMVzT2OtucnXCPTz4bK5EJ24ih5Zlq1rVpGrsa23IvyoIXR20vy71eTK
	 kPW7mwINlwfwg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92843C87FCB
	for <ddprobe@lists.linux.dev>; Fri,  1 Aug 2025 11:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175404719357.18040.16228412624089089332.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3eaa2c9a123b141b0fd6a27588aa1460beea6bb330a4ed67c0df63a39fea374c
Date: Fri, 01 Aug 2025 11:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754047193
