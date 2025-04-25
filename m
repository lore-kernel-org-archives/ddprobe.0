Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48B8017C98
	for <ddprobe@lists.linux.dev>; Fri, 25 Apr 2025 01:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745545794; cv=none; b=u+xRynBtB3HE5NX76idC4QRTbxkkUQI+OtKOxHZ54EaW0oH5YyZ4jnq5Hp1e1aBfdOooVpv2RVMKPiFYqdPuunAMsK31nvtEYinmMGty2NUabhKcn0tTBn6+K+IgAQt+akMN+bo/lgOCYWwTCSCSIni0E+h0o8aF7Uvhz0dnGfE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745545794; c=relaxed/simple;
	bh=LvoD1QveZ7TgCxEwklSpZOQecfXmhe9NsPvyKL2GCuw=;
	h=To:Subject:From:Message-Id:Date; b=QijxQ3pd/w8/lE8db0niWHT3WAvzVDIEQPeyEd3KA/NdY52cKGrZjpDbom+z9W8Jm/NBKBn5CERYSQw1AjyIV4Rotr483ITDo8x4uM1mLhXdtP5yhHostvIEx14WtSPHzh9yUTM2lkjHYTZB6JYmB7MUmSUWOtZu9gyntFE7q3M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SK65vQeQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SK65vQeQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F26BC4CEE3
	for <ddprobe@lists.linux.dev>; Fri, 25 Apr 2025 01:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745545793;
	bh=LvoD1QveZ7TgCxEwklSpZOQecfXmhe9NsPvyKL2GCuw=;
	h=To:Subject:From:Date:From;
	b=SK65vQeQpUFPCqq4mT1pdFaLdGPo0zCYIcD6Yn7Owse4leEcg0NWC7gZI99WbVDCT
	 cqChgSaY2hzvyUBdR5KouKcUDF510cRitMyvXMWCnXEV86js9dROHuCPgpVs3HFGfw
	 QdwSvljy410rmIW62IpHJPHr8dht3R410SO7D5hx+VxT1qTQJwaGH5Ozrh4Z7iV0ty
	 6aquqqUuSikFLcXEoNgI8G1/0iE6RYVDQTeWQo2k6n0EWFAjI/sHeJDzGXNwq/IsKf
	 Zzwurmxf6+aJAYP5SwO86o1iwsvKkWGMmqn/StkdN3tb6mYlhwqwePIqiBrKZf0rJ3
	 0Jj5uSKpreNxQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EBE0C369AB
	for <ddprobe@lists.linux.dev>; Fri, 25 Apr 2025 01:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174554579357.15506.16295520579449515115.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c3ccc50e176c6f1da3fb3a439fe355fff6c784b5985a17221f4dc0aaf87bec61
Date: Fri, 25 Apr 2025 01:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745545793
