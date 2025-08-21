Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23A97335C7
	for <ddprobe@lists.linux.dev>; Thu, 21 Aug 2025 00:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755735594; cv=none; b=Sm+SlyYdmrUXtO0GHSd59X4o85QxX06zItV/eEBaX7TVZu9Dm/3CwVXGbY18UGBCLmD3PaPcn6cbnHJZJKcNaVaga4PqHB1lVXCnvvbwjoC8gHOkXE1WgWsp5s3KZ58imfhdetFGDiXWNNbNDwGS37lF94uPPTwjBSQWfRvXDDg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755735594; c=relaxed/simple;
	bh=Us1FIVNKbvXxdxpdEftj2bL9Ps+Pbz54GHP2YqWrS3M=;
	h=To:Subject:From:Message-Id:Date; b=UHn8CdFPHafAWFn905V7+djaCAjONiQJ07qW84dpRNwAV81d3br1cTF59nM+G3d88ZHOBHOOZg3BhpV9IcCRvUQDwkoKnbY6EHIrO6BJ8faeJjYvrR65J5uoyWneJxPZMNgWx33kuiBoMbfRysaVXEiMRsdD8dIbimLte8kQDkU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DX5hH4Fl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DX5hH4Fl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1ECCC4CEE7
	for <ddprobe@lists.linux.dev>; Thu, 21 Aug 2025 00:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755735593;
	bh=Us1FIVNKbvXxdxpdEftj2bL9Ps+Pbz54GHP2YqWrS3M=;
	h=To:Subject:From:Date:From;
	b=DX5hH4FlwZXLGkvA/8WViBWh+6ePNov59EQB8V3/1VWzsuJk+/yeOfCWFe11kqzmT
	 hDXqtf2bznnDN2AKMeruGTjUFz1HJ8htVz21keEWqoI1tXhdXMtLE4v9a4xCrdE5hU
	 6iejigX8B/4Bf3huf3VXGoQMkpNnyOCz1XqE/9nzvhcWQTmYhkCTT9lL/p687SP1zv
	 OKbxW5W5EtjbKTWfvxsrlZo1dSz3YMoU6i4ibn6h2TmQ0mffJ3/XRA63UHM9glVn+r
	 SlFhHdDjeNNTJ2OjHglk5DSDZTUfS+kZT4Q8gy/vLqhR8ELG6SCJl4DDXO+YqgSP2I
	 juqmpXSneiXDw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90190CA0EDC
	for <ddprobe@lists.linux.dev>; Thu, 21 Aug 2025 00:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175573559358.29187.14705488141041061748.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 599bbbccdf32a50d72ba783473d8b2efc6e056e2b883e6ecd6a76330bdeb4961
Date: Thu, 21 Aug 2025 00:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755735593
