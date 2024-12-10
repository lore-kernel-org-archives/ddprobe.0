Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E20A79FD
	for <ddprobe@lists.linux.dev>; Tue, 10 Dec 2024 04:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733805954; cv=none; b=QZMd9dn5TDeRTIcRjvHEHfmltO9ApTRKUiPJzTR/JGmnKdJSz8rHtkMwI8JktBUPA+BD4Ekjguekyy6TBtuy/sDIcOBuELK0WPGIW/FVf+n3WOJfaN3S064LZc7JpHqENhDDAlR1FeDgaK+NTFdLQsJsoHLh+OiDbLpBvXXilco=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733805954; c=relaxed/simple;
	bh=0IDVH6oCuuj+/E0sGJXykZJzzgAwdhX7XYjIr9D/Ooo=;
	h=To:Subject:From:Message-Id:Date; b=IOtMHegkRz26PTMLyKSbIcu9b+fky5vFnihkfMWejG7PaxsBt3BF4gQ9roU+BK3R9X09uGNRcYACd2m2IHYVX49HTcoR4KVV/AkLTSGn+mcTULrCknotuGCkJxKcShaEFHn7YJ1QXcrgj6FpQzgQ4H4w8nYLUTHJc8Zz+UtaJeY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KUeC7dAf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KUeC7dAf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B09A8C4CED6
	for <ddprobe@lists.linux.dev>; Tue, 10 Dec 2024 04:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733805953;
	bh=0IDVH6oCuuj+/E0sGJXykZJzzgAwdhX7XYjIr9D/Ooo=;
	h=To:Subject:From:Date:From;
	b=KUeC7dAf7DmGmjsT8hezDVUYylMAcp6WogvKVMXisF69CZhfd0IoORLhmOx/Tpnmt
	 ydDSv91QcHwJQRZFNj6GqhuJk0lBR0or6WGAZgkLPcVHytSJyvx/KUefJOnukRWhyX
	 /EoSApQP20A5LuBPAeZxZVIKvHkKpVHYS1AAV/Vlab8yzPSoLxOcBZPnPOcKAYFmJB
	 0xCRQ4FUXNc2jYMStJ/p+6aAG46Ke2TuCyVJgNyKECl5MNvPICzP9UQHos/FuI/EdC
	 NSPp40MRAT4+XFtNJOpmS5DBIYU1gNtUOqQuKdqZbsOYDkA6GKj/M706P3Faex1KJz
	 vWmMDjlzt8kEg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 980D5E7717F
	for <ddprobe@lists.linux.dev>; Tue, 10 Dec 2024 04:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173380595360.368.11531464668998867670.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 860e5f21ba2c8188d0053a565b5daf415c124a19456a4ce3a1a4c32da6d9cb39
Date: Tue, 10 Dec 2024 04:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733805953
