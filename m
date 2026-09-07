Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 522C0318ECD
	for <ddprobe@lists.linux.dev>; Mon,  7 Sep 2026 17:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788801634; cv=none; b=IqMM5yAGT1D5Lry+NMaPhvOjb7tRal8auGUO0tb+jc4jDXprPs/hHE2f3R3RRQTzItRp/kyWOG/Saet0D7plrsfhHCBXd657GWN7s2Ky3PkWDkW5i+su24MjnECoBzh64letwUAM/QuVqv65IbY9GjUAM9zMZS2SAoJrEwFSUeM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788801634; c=relaxed/simple;
	bh=EBNJzV2AT22LT3pl4Uf6oFyup6YsGSoJ+1OBK5kguus=;
	h=To:Subject:From:Message-Id:Date; b=kXowst1lUf7y6tAh6BXBn7qWmvE67BzWUY3A2jfg4wwLjDz6jwGUWOIMstlfOuhu8O4np4Xhi861OS9IgUwzOX2kOMrFrUwlHn9Cirl1g9TjXHJvVptS6mbd5VCFZf9scf0GOqMoYzuzKfU+lBTrD9fri7YXuQlIVs2/FxdfZHQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZSEHgeRw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZSEHgeRw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4BF5C2BCF4
	for <ddprobe@lists.linux.dev>; Mon,  7 Sep 2026 17:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788801633;
	bh=EBNJzV2AT22LT3pl4Uf6oFyup6YsGSoJ+1OBK5kguus=;
	h=To:Subject:From:Date:From;
	b=ZSEHgeRw1B7VmEnjyH/f0s48pr+pLntmAAzHqOi3PjRGnBKWRa4woqFWVZZb2gKEn
	 6zobDfwrwoHt1j2nUnsB8bLq/T3zPP3Fbh9rg+/oS0r6KbhftOuy1VyFk0jWtocpM2
	 wEH7GawXcZzlusxa5uTG3+Uo0KLBzJ9FB5jx0ELzcrzuasX/EYGFiCvjtI+PffOh+5
	 RrIyhM8t8QL5A6PfKC3vinZCXCKOo83xJKp2+61cWKTwwEoIXjTvgiKKIiT8L6vsyd
	 Howk3FolwMTA3fjN/0kOmwFKC+9BkmWmC5aPOSdK9B//y5iGabcwtj3kKmYJSxoNvq
	 rkpnyMwyDltzw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1826C79F99
	for <ddprobe@lists.linux.dev>; Mon,  7 Sep 2026 17:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178880163371.27953.13315372205671659111.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8dd4ea04d4eb6a04e7dd200e1aadd5bc83aefa8d6eca17f14c6a7f675e1ce786
Date: Mon, 07 Sep 2026 17:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788801633
