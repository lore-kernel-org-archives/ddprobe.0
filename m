Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 61C7B139F
	for <ddprobe@lists.linux.dev>; Tue,  9 Jul 2024 05:56:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720504583; cv=none; b=H95+kikYh2yAOh8ZT/Ueqy2ZICb1MdcDs7gLv7wJ5mOM5/DZynN7R7eEoP8eepVd67pyQMKW8/IWGvesmKj/2hE6AbJrC97rwni16RkIFbalIxwArIvw+5OJ02tPcklpe2H3UH9BrQ4iCG9HzseCh6NJuu8/hgK7ozq687zeTlM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720504583; c=relaxed/simple;
	bh=AM1pvL0csK8MmgDdo2tCJzb14yltcB4jfcYBB86+TA8=;
	h=To:Subject:From:Message-Id:Date; b=d19zk186nnd2X6sWjnaaxx97tgD184y3ln2YV6HYSLh8zmwhymeaaZlER4E7quECrQboGQvXQFtCj9jk6F9hZuQ4z9rXxA1yL+eV2uchX5+ZNKG0LaGbzNEalDZGh1xSyHWWhuJsdabX8g3zayjrn8GBJdMEwdaJ4LEGw6AFwz4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UzvOiAD2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UzvOiAD2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E05D2C4AF07
	for <ddprobe@lists.linux.dev>; Tue,  9 Jul 2024 05:56:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720504582;
	bh=AM1pvL0csK8MmgDdo2tCJzb14yltcB4jfcYBB86+TA8=;
	h=To:Subject:From:Date:From;
	b=UzvOiAD2t50V9h6VJGjTH26WTuAFtDntT8zEzakDqylHDMEYecSek6Sts38FA57EF
	 jp8JRkO45RUZmsb13ubqTheAxiRvLtBafK7ZXh6mMToAEndOTEkUnWko07a9FmGEKF
	 QGvciqe06ucmhWt+5/pfZKlIkWex9miRMIJDiALl/T959d7HvK48ZXdMoPSf0HdXNX
	 nN/Hq29Vs7Jjn3aIOYvVJugRRsb+Gk0CPvg0EroZjdJewRbxW0H9PXRFyptnrf7ATu
	 AqDE6Mt67eNWUecdsS7aufn6HA66JtS6fVjOqkacFAyQpVt4pntXys6Sg1i0Wz8+eh
	 C558FvTlaAdjw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C70D8C2BD09
	for <ddprobe@lists.linux.dev>; Tue,  9 Jul 2024 05:56:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172050458277.11045.17744024209199927972.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6f884c69c378c1060438ebcb55b4c98628362b5d1929e027465deadd90df3134
Date: Tue, 09 Jul 2024 05:56:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720504582
