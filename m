Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4252D1E5B83
	for <ddprobe@lists.linux.dev>; Fri, 21 Mar 2025 18:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742581194; cv=none; b=L/SC6q3ab4FQLYAmCEgzbUy59P7Mj6ImbLi7Pbg+aE+gKuI40fEcEcXtgfJU2pBbGiS10H/ysN2UTU7TZwdDpzf799rkZUbi7uh4KgsqyRSjWfsbTd141aHpBbO5hvHpe2taHGe8lcvZtrjB5n8GlYpcWdSHXk44XyvMYeKLQs0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742581194; c=relaxed/simple;
	bh=rLIf0VnbScFgvAbaLgdVeEllDdoycirv4gCRDa63b4Y=;
	h=To:Subject:From:Message-Id:Date; b=gjF4rQJPTDqtPOpxwMIx7WN3oSetI2D9MR9Nad8ozU65UV0l4csog/zlIOWAIRsquLTdtL1qVxEz0pIppW0tnHbnRwj76ZHsDSZWc6iJSKeAnb7/MB4cgcL1BNEoECItXX2nqpQdqjXCNJq2zbNIoOnujiCjRRQeJ3I2YBKTs6U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AAY810GK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AAY810GK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A71B8C4CEE3
	for <ddprobe@lists.linux.dev>; Fri, 21 Mar 2025 18:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742581193;
	bh=rLIf0VnbScFgvAbaLgdVeEllDdoycirv4gCRDa63b4Y=;
	h=To:Subject:From:Date:From;
	b=AAY810GKNNFPxqv8QxNSOlQ2VGdMMrNODt13TxN1qyJClMB8IBiHP/NPbYN6CJRFD
	 N576I2bzBGldEuJD0RIY3xIPI0fkK11IEG81t2chx/BmNQtD0wZo4CRNyDMY26s7Jk
	 KblEYmFGx6rNCZNlZfwy9sSBOe8NehSNrJO74GLab7XCPGHrJ8cO75FFZ8iYOlKUq7
	 1mwq38N4LDKhT3Hz79v2PLjSPirmhHiBBw89h46j/shyb4CmbLB4tOdJ91dU/O7iDN
	 EQLBJR99xYkxsN8JYXXMGfSa4mwVwZoyx/p7AAVUR5gm1PZxoBwf9FPPR24xlyrMRh
	 SxbbAis/vAUTg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90090C36000
	for <ddprobe@lists.linux.dev>; Fri, 21 Mar 2025 18:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174258119358.18260.10127813408468015493.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f09ad4d79866280519c2f8a55d3ae09de0e9462fb31b2798e5b2d72dc546be12
Date: Fri, 21 Mar 2025 18:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742581193
