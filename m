Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1608937F727
	for <ddprobe@lists.linux.dev>; Fri, 26 Jun 2026 17:58:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782496714; cv=none; b=ergiiJnsBDGr7ucqt4OQpgKsc+mR7+PGUEHjkHTs30i2dfCCfZwBc7oVf3DJw1zX5M6g+32aL/hP11nUBJInD4oO2RMmtFWm2wu+/oVqjQ7LIW4Mdcme9/Phzl8mDAZTUJOizmcWGQz2p78ZSjY38yFFwde+Y7Hwrz8xY0vbyTM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782496714; c=relaxed/simple;
	bh=bYjuguczv3iQJIM2v6vnCmLc/ixFTGIkZMtA2wtnY4M=;
	h=To:Subject:From:Message-Id:Date; b=fzP3/8NpmxGVqjrUCGjZvqROxojIWknTWr0HARjDrSGKGkK1p+G8sAElUFXsEB9+XlJ+rLD6/lLIPL/sdBp69NqgvkT9DX4Rt45ElJNbyGxH5SCoJF/wVT/+S277JlbkpS9oIRA0kfY02qhnpBzuC0DXao3Xg5BCbeN+PPr3Rx0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=O+wBhyta; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="O+wBhyta"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D440DC19425
	for <ddprobe@lists.linux.dev>; Fri, 26 Jun 2026 17:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782496713;
	bh=bYjuguczv3iQJIM2v6vnCmLc/ixFTGIkZMtA2wtnY4M=;
	h=To:Subject:From:Date:From;
	b=O+wBhytaLbwFw+UeCrptV0jRCjuvau8vdexZTCEpCY5Jlc5wjdry+E9g3Tswvjgiy
	 4h0xUB0ghvzRRr11kWG4/jyhGtr8QeoMVYt3R0oUz82N8Gz5N5z32arLsOZ77tXOih
	 4dq6eMxZGMtra1+w9Eii3flDxs1+JPh3kkTpHQzxi77ubxuz601GnYKlHaqcDj7EBf
	 +k0L0BS8Kn8mMUq8G8O0UAC67ZSoRbBj1YKajtOj++Dr3vRjb8X7OoWlvPB9WaXCUR
	 3/LvIep+atqZXpz3lPvnBVpB2jvyYPKlJme1dVmMAT2/nPx9Vm9GLUDmnAXxzyaj08
	 eCSudHQeGtieA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC665C43458
	for <ddprobe@lists.linux.dev>; Fri, 26 Jun 2026 17:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178249671369.2883.7881840061234256890.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2385d6e551e4d15b34966a72fd8de0b9e1c0c1d88561d16dc1ced9231978933a
Date: Fri, 26 Jun 2026 17:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782496713
