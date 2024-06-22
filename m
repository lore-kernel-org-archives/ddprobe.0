Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6A3B316419
	for <ddprobe@lists.linux.dev>; Sat, 22 Jun 2024 20:52:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719089543; cv=none; b=X4Ydt3laf28ocT7r15KDwj152E8elxMix7p5HJysGIGaVnfXWi7wcypsZWNbTqgYWr1IXXhltK0+JzvOsmzNm7KVKCD5T1aQFdOF3vEpU7vGN1tFKurQl7BJQTbYstwLvLHjWcuYvs2+yvjxbxgt4o721+fCs7i5gipq5BMPtd4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719089543; c=relaxed/simple;
	bh=X65l7ipV95xML/rBuQJeHO7nzRNhNWOBPo+HkGgJGKE=;
	h=To:Subject:From:Message-Id:Date; b=Jq8xAuBxaT0nSBA4rLnCWK8x68qCOo9JKKHfnZFXMhLyVemf/ZPmBTRbZQ1evqFsfUD4r76IBbDAc3DrdRXX1T3SMBiKJP2SEwjE//Bzg/OntFo/a07U36NRBiAO0C3KVT5aFZpIKSVmqXDJGihMw4R+8kr8x+c4QxpepWp+oAs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ojiiWXw4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ojiiWXw4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E821EC3277B
	for <ddprobe@lists.linux.dev>; Sat, 22 Jun 2024 20:52:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719089542;
	bh=X65l7ipV95xML/rBuQJeHO7nzRNhNWOBPo+HkGgJGKE=;
	h=To:Subject:From:Date:From;
	b=ojiiWXw41KbNr1EKH980vyyoNg4OlLSXvk0M5yn1Y2N5mF+7G31nBcewMIaarmUXY
	 +j9HVyiOvcdnDStl86hLglOjGsGlkWMWvJ/EvHfHpU3FO/jDI7ZXdLG5+NNtVNP8qc
	 nfcNlAhvqA/jm9aggkBWCLBZQ37568zNM5adyySmRXRcO1IEar/xs5MMPb9PAKeGZH
	 p49POltqnAyol6suanz+3t8OQjNDlvO8xZrGUHU3Xsvkge5nReTO/UbPixvJ73HkwV
	 8ArvpnpTwu0Lu1mHJoIDov1o7p0H7rsin6GcfnnDkfemy4ZHRol9ug9MIEsb8MsxCO
	 WHgoX7CSUKckA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CF9BAC27C53
	for <ddprobe@lists.linux.dev>; Sat, 22 Jun 2024 20:52:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171908954276.1608.10306598059270218207.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6cb680f60fbd431befd8322def96b344b3af55f0d6ec7217cd73b3037b50e17f
Date: Sat, 22 Jun 2024 20:52:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719089542
