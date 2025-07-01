Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 197BB1547E7
	for <ddprobe@lists.linux.dev>; Tue,  1 Jul 2025 08:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751360395; cv=none; b=XyqzSg+g6E01f/BgTGJ52zV6zQ991u5OwIVcD8YHRqDaKkWMD7/USOQ9bdLliHuP3NEa65HUhBePUW5d7OKL4C9wFutKWpLf+Mdkl/dvoSZYzX/il38OCntrzYw9hxph2rxL8mkpVClhlTwbHzbaV/kjtXCIuDNkSc2pra7ZKl8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751360395; c=relaxed/simple;
	bh=4MQadyiEAj3EMH+RLVdcTRd1KjiianFDBN5NR3fupfs=;
	h=To:Subject:From:Message-Id:Date; b=J+UevY8j/SC62V1cSuhpG/F8+50ALzXRWueq8gtiOTBYriSRX81+qlsX7te998njCsXtSVcSsxstQ4xmt7Mf36/3uFUjoM1VJl5ehl/zACP0CuBB4HUcI2ZovRW2cK2MeDX8xaRWLJ2zZwq/LXu9WbaNrQOWKGJww2LmBQ2fmoQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Fg6DExNH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Fg6DExNH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4DDAC4CEEE
	for <ddprobe@lists.linux.dev>; Tue,  1 Jul 2025 08:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751360393;
	bh=4MQadyiEAj3EMH+RLVdcTRd1KjiianFDBN5NR3fupfs=;
	h=To:Subject:From:Date:From;
	b=Fg6DExNHra85RkmL9TO+BiztA2gvH5eglHv89NJsB5FzVB8L2Ek7cw2eoPUYSnNId
	 1yoEgikSzHSJndYcShoXLSliFiUl9VU7+oN/TG6xYQJHX1gg8PLcKfaMpgRU6zBTl9
	 Zyds5ByUojb0OjqmwwEn6pHKJi9gOeBSiaWEC1Mgus49zIap3TSN2p5YhWUx6CjWFH
	 1LCETfS11jey9Se+TWzkOu2LeiNmwhp8wozJGoOkpNXNn9Om+0zCZfCSTYNrufcvSm
	 OPhEc2Ln2I1hZ9h34t8ed1WyCtibBhau5R9xrPY80CZ5DMbXLFJYX6JbSdZO55ZdxP
	 KBwexJ6Gd0VKQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 920A9C8302F
	for <ddprobe@lists.linux.dev>; Tue,  1 Jul 2025 08:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175136039359.15918.11984979469334304859.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 60a645342ac3ef808c7ff3d32cf2af0867b84d3215b645221c7b40b723913bc8
Date: Tue, 01 Jul 2025 08:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751360393
