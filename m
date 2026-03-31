Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BE6D519D89E
	for <ddprobe@lists.linux.dev>; Tue, 31 Mar 2026 23:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775000093; cv=none; b=B20lEQytnT9zmC+4GcxJWKe5kRFTVRJN1WOMrSmm12OIq0SNDwyznuLtrgKoZO7VPvo0yztdzcMh48xhIO6oYBTT4A/p1UdEobktqu/FE9VqS4Z7wm16bDbaQtXTTM0qD6budaif/UzeQlYELxn6mgeSjclC4GOkUZnl8kLwtG0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775000093; c=relaxed/simple;
	bh=q8SzEd5VwXRaum5nsWmHtkzD2/nsmIkg32j1gOsCQ4w=;
	h=To:Subject:From:Message-Id:Date; b=qplHAVNt2XIbpYmsF1gcGG/PvHbtVvy/X6O8dytMCk7dfpyGfPdCjUivnH/ggREEPfYQiSdEnhWgE40cwlGifGNqq6bIC+xkfnVprT1rvEc5htO4n5aLuoUSBT5NRVFI2Yf/7egaVsZhjdE5BHVErJUdcF9/NdYVbUFSdDgqJBc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MM2FZ+4o; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MM2FZ+4o"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3808C19423
	for <ddprobe@lists.linux.dev>; Tue, 31 Mar 2026 23:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775000093;
	bh=q8SzEd5VwXRaum5nsWmHtkzD2/nsmIkg32j1gOsCQ4w=;
	h=To:Subject:From:Date:From;
	b=MM2FZ+4oV8IFJT6TI/j0i7QCyBtgkmot94RkPqIre8eBgKWT2FWMRjOM9C4Y8jkAK
	 qZo2M21RZAOEFb33kfWae3+p/HR7qikGEDCetGTE3Nv5j//c/6saCQGFQxuYy5V9Xh
	 c2cJurbpBUdWXDDjBkMEUDOoAeXf0kVRonUyHF+IZgkiC5EW7t8mBN63pUOAkmuPd5
	 IHDC9hUk6wR5e04w1OF6FbsvGDxt0VUKQ2qRF5zEzLOqm6bQcm4zzulkzrIgE/RrzS
	 Sx+0jG5zQvPh5a9zn6eU8N0foYHoJafZYGmWgKh8cibudYd/Ig4aWOkgbBpFD62zGy
	 WKo0CRkg99YZg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9246210F9307
	for <ddprobe@lists.linux.dev>; Tue, 31 Mar 2026 23:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177500009358.23929.6085179799946774340.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7da7017748bf583c53f7cdd6ff90974991e686fe797b21440fa76ad5ad38a3a3
Date: Tue, 31 Mar 2026 23:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775000093
