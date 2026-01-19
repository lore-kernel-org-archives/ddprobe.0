Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EAF32361DD3
	for <ddprobe@lists.linux.dev>; Mon, 19 Jan 2026 13:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768829634; cv=none; b=d6rUlLQ5RWJaCWvlUUPFPJclrBAyb4CZWpHa1TMIj5nxoudqhsyga7MdDBRHeX3wAFk2RdXwaoPigjkkMkjs0XYa9VoZxcN6kW9hb9KdCdlHUn6RgdsynHLLdUuP/IWSz6P/YBSqpLnPb8iWdbWKPzRL7ljTUswjIP3ixRLjZ60=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768829634; c=relaxed/simple;
	bh=zc9fmCL0EpQVKpu+R2IgR0FbNb7kWCkuH6lavJ8ktQg=;
	h=To:Subject:From:Message-Id:Date; b=f2KTKILqNFctGpK7yz2aoDcuqdKSX9fG0NZ8xQLHEqmT96EAbrJyVMR7U8GIqYVAxZ5LernEDQo5n2+OkgZQuf6RSmV2wsYICCaya1jBsr5zPCoiU/sTAyYrSXGaJjgwbeXasnDYnXy0smpAbNulExh6J+KpX/Ex3K3g47TLMhk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ruvAK/sh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ruvAK/sh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A267EC19423
	for <ddprobe@lists.linux.dev>; Mon, 19 Jan 2026 13:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768829633;
	bh=zc9fmCL0EpQVKpu+R2IgR0FbNb7kWCkuH6lavJ8ktQg=;
	h=To:Subject:From:Date:From;
	b=ruvAK/shij+oHQX8PEzvkRlP9wp6XSZqZnipT/hv2KIVRSyaPPtmIMnZnFjxZCbxX
	 IGp9tPO+WUo0FaxqwgjOQsdAsNDHkELjObf+IAVFoeuvNP603qnJPBzW0DKPJw0YM6
	 TWupfBUt7I2XJ9Dx+bATsqYJbzHololNHmEC75qhr3VSPXYlwPKRFOx9U/Bmsa+sB7
	 aSaFspaw4Nbxh6wo6ijz7AFWNn7aNYgey0JcYNGE8m/VPEYEnAhh+rRAqudIDTM7ZT
	 Gf1HdVLx5cs3nBE9ORsrjPF1JTsTF4kUYxg0ng52KkrxrztUeFIQlSRLtOt3e1auPn
	 ZftiPs77EDVxw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90DA4D29C2D
	for <ddprobe@lists.linux.dev>; Mon, 19 Jan 2026 13:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176882963358.13545.5877340921184069946.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 60fe5665fc6f11ed125284b1465a7214d66d93d44c33773e8febb20b8f484b58
Date: Mon, 19 Jan 2026 13:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768829633
