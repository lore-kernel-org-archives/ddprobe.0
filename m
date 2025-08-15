Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 00564288C1A
	for <ddprobe@lists.linux.dev>; Fri, 15 Aug 2025 11:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755259194; cv=none; b=nXUhHJytF4RAX71MuMdDf1ugU4WP/wGy7PiMQ53F1g4phJ6YDrzSD388003vqKxxicM/O/DqFg+FABVfLYMzDCP/6KwAmE8VPUOlJ/NdvlzX7EfyabUFl+nB5WIz5fww/qtan9m5qQXiKmhcsaBLEhsT91rS9TwmmvT7+bHxs0s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755259194; c=relaxed/simple;
	bh=BpLEaxjd21OM6+fFdkfVoTuLorCw4cmqDbedYiQYW1I=;
	h=To:Subject:From:Message-Id:Date; b=H91nSTGsEDokA2mu9hjn0LflHZrR9IwtdiLDkHINdNSGSxdYfFlWDMDycr07Sq3Q72RIYXl3VIPfJJHyGynY3CP5E7rqi7VtLbkWhdj4oNzDK8FuelzCxKe8f9yhBzcOrVEq77Eb51jr2zQi3Sl8xiSQEdF68O8WsLmazWpcFMk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Dy0lfxL9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Dy0lfxL9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A617EC4CEEB
	for <ddprobe@lists.linux.dev>; Fri, 15 Aug 2025 11:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755259193;
	bh=BpLEaxjd21OM6+fFdkfVoTuLorCw4cmqDbedYiQYW1I=;
	h=To:Subject:From:Date:From;
	b=Dy0lfxL9AO5bSEvZybTqa1IT4TwGdZQiDA4o1HM6F8ZCdWRK2JBEPnGpbMPy+1t8m
	 aAgGWBiZX2DGblp3GRWm5CI9s/suhCbKaX6BdAFZpQPRbau2haRyR7UWtnekzSgSEB
	 6F4yTiGKb+dCT3qNh5Kj8JGCvdFt6INu29MgLh8Altv78NTSRO5PTj/CGAeSxnaPJr
	 a3P1K8KYPeTdZCEZ432umL87gt2vTneVcTZMbOIZWAKUSrBo/a91xYoN8Dwwzy11mR
	 UKyUEfIgNKjOGWo9JIpZGBkU6EyrUwdfZQaGpGmNdmhZKHij5n8TfvPinBvn7eqSFn
	 3QPGBjzx0XtrA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 928DCCA0EE4
	for <ddprobe@lists.linux.dev>; Fri, 15 Aug 2025 11:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175525919358.29799.10775446989006509213.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7387c5af0a7b461d63f01828e2a6794fe616d9185193d9f2d534e84db4bf008f
Date: Fri, 15 Aug 2025 11:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755259193
