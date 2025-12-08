Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0FC0528D83D
	for <ddprobe@lists.linux.dev>; Mon,  8 Dec 2025 18:42:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765219374; cv=none; b=afxOa5MCRZTfr8JRPe09d7iKVx3W3q7RhjwP0L8HnahrnGYIJwTZTrmX5SEEggABcLIjviDqxXA76ZTYWYy5gU6OVEU1++MZmVEC7R25oqgDgtFC1HkAchidWYDJgoB6JoE39uB6AHGxxiZMTUKgr9PXC2zrJyBaNdfKjbeTdJg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765219374; c=relaxed/simple;
	bh=sY07n7uL9HNRuK+tZsfcRitTDI3UnqZ8cCLH/DxaQsU=;
	h=To:Subject:From:Message-Id:Date; b=TyOViShICRYDr/TSEb4gzElmgr+mQy7Zcj7hVH8RlUda1RYWkq2RzbK1ntYJm6wmuAY5hs+X0K7AmuQhl7+uX7n6F12/ofke/Dy3iG9Lgf87zrN+vSHU6YihcGq8eJQJ2syFO2cVRUpos2oYL1OxTdqBVhzXesMidiyaFU++IjM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SpD/Ez/M; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SpD/Ez/M"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACB8CC4CEF1
	for <ddprobe@lists.linux.dev>; Mon,  8 Dec 2025 18:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765219373;
	bh=sY07n7uL9HNRuK+tZsfcRitTDI3UnqZ8cCLH/DxaQsU=;
	h=To:Subject:From:Date:From;
	b=SpD/Ez/Mqh5Ya/Fz4Ix9sKpNFuN/z4Q+HQyFY33QwHWEO11NvqyLE7kn2E9vGP8ni
	 yJdOre0p2njec87OlNUs1zGpcaKbboiUeJ1kbsn+gP04RtmmwOp+ucUgFaH6XUtrNv
	 V9Zm7RoQeGKfUPxRgVH/cZvzHwTijgSXF7MTkTMIHxUalyN8i/sKw+5CI6NdqshJtt
	 SuD9FyyJ53z9Dv81kJWrmgwF5nnck7ADBzi4+CWK9ssJqM2Eun2BhitCDc0yH3t5bJ
	 tfoRwDJCm3L0P4Scozvg7Yh9KuxqGEzcuot6tDmObfX8eav9rLfjWxlE4vFwRs4AuV
	 nLxGbOKFIBvzg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99604D3B7EA
	for <ddprobe@lists.linux.dev>; Mon,  8 Dec 2025 18:42:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176521937359.14679.11239282157248416470.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2ef19ba51c59ac5f208fa533e7f6d9bff27a4ba857110f486f5dd985e8e8d99a
Date: Mon, 08 Dec 2025 18:42:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765219373
