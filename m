Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EB5C01AAB1
	for <ddprobe@lists.linux.dev>; Wed, 24 Jan 2024 11:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706094497; cv=none; b=dHcUI3m2GzVhAXochYbzFlwtMFwbTGfoTW1pLYmkpUegyfdoingJMsDH4R4a0VddgDWpPepAMkeE7EblwFgkTxnITZi7/nlpBuygyP4M+VPdPbeLm59Rwh42eBXdijYaikm8oioPXkdkYZC7yuJzFUr9NxSGZ2u5+3hX/XW1V2M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706094497; c=relaxed/simple;
	bh=Q+w5ML7zO+5P1r10w5UCzcgzZdM41iQWtUO1EG+cbhY=;
	h=To:Subject:From:Message-Id:Date; b=sCsZWNQG9rzFmtbqE03fVQlVsCa8OH7/Y1hdbh5RUpxiRTcpSUJsdQVhvIWHZ8NRwAEY6ihcReey9kS6lACjJ+Ps58qZdsIbu1C4ev8Wl+GXCS3x+FpqSXonUSjsqjW4ETIRDfprk7SM177eWJiowFxNPiwJQ2ptrPcEnyyGYx4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YX/kixYy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YX/kixYy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 74988C433C7
	for <ddprobe@lists.linux.dev>; Wed, 24 Jan 2024 11:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1706094496;
	bh=Q+w5ML7zO+5P1r10w5UCzcgzZdM41iQWtUO1EG+cbhY=;
	h=To:Subject:From:Date:From;
	b=YX/kixYyUj4/WjnR4qJeva9labtN886lF1KzmmAPcw161ZJQVG/6oadJgrlhARg1v
	 XpOhqofeOXtRgNAeWzS0mykNbc9bw4PNFrrbdv0KSteJdIrsIjxIqdNVJ0+KLPvkf/
	 EDBVptXY/+oT7nxI4cvMvv5V5nVOQ27aGxvHJKzRbHIUKEJnqyq5ddUSeFA/FLHslb
	 E8/2zrfBVizKfKeZFIGgS9wjC9xiWJYIjFU2jpKMkPqJY2T0siiDIdD7R8H5vVE8+/
	 7at3sHZDLPOVZ22lyQdryip0/Ye8xCYGUmlsi24WVrbF/xzs7310pXhuTliggQf1ew
	 /G6GFkE4hDcvw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5A965C46CD2
	for <ddprobe@lists.linux.dev>; Wed, 24 Jan 2024 11:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170609449636.5653.18377058333996197168.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8bc79a515a7b757104029c9cfc78b9b01be4a95f38943784b29147125b9d3533
Date: Wed, 24 Jan 2024 11:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1706094496
