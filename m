Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DBC3D16DECB
	for <ddprobe@lists.linux.dev>; Sat, 22 Mar 2025 18:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742669994; cv=none; b=CiSjKMr6aLAFxmgTv7ndS4PQF8BZh1FIJIwhVT72wPcOLbQXYRxMg1KOiCI5nsEZqnwNofudXyavTM5UvMBV+RMHeFkfo+FvXwhKaQeYj78Cbt7ptYN6OgM02sbJKbcTej+ATJS+sHFF7HBWEIEORoRYhyPaaPhfF+87ew7GPEA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742669994; c=relaxed/simple;
	bh=yDLIdhJK/iSfgO6sIiVK/i0AuZeUjxLaV0Izg5SSRmY=;
	h=To:Subject:From:Message-Id:Date; b=as7FhgjsV0EWFeARjWKbC5nNA9sM9fAjMu9I0LywMQxTHN60bQ5joM14JPjqWLxQLOglFp8s7bEbmILLVtySlHOoTqzKI0CzpRmmc37lQSlBaMWsSOYXvhbq8uns+K6TIqclhCebVOQ/ZVquFsLnspLJPN4FQNiJqr1QIeSGA2c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kTox4MGs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kTox4MGs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF42AC4CEDD
	for <ddprobe@lists.linux.dev>; Sat, 22 Mar 2025 18:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742669993;
	bh=yDLIdhJK/iSfgO6sIiVK/i0AuZeUjxLaV0Izg5SSRmY=;
	h=To:Subject:From:Date:From;
	b=kTox4MGsqWV/98zYwxYmjh2jSlqlOE3A3GJ5G911yCRZK0cIb8ehTkZ9u6PloLsvq
	 Gn+o21030k+yZI7xTEvOczuh1ivAUb5kS/e+lHsjYt94BCv0G2G06NwLPoFMog8NgE
	 /aVDRVktlSljqn3EJG/59RMUSclMZ+Vqmw+zWIrULsU9F54A0jghZlQF4C5NFIf/a+
	 o82AsyymbIGUV05iMbvSOHwa04+6M37/xYqgsBtHedmvqIdUK0KH5xTquMAezr2fju
	 B3zY6z7mwYtYycOVM1J7ZIJnkLrG89T8U4Gv9Hh8qxDwP4M5Kvb+pqlHz4KkqsVEEY
	 hdcizFXMIvSww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 953BFC35FFC
	for <ddprobe@lists.linux.dev>; Sat, 22 Mar 2025 18:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174266999359.8343.7649872842714837523.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6876d9f67a8dcb60539a5f4739a380182908680416c24cae559f87a8793c3ffa
Date: Sat, 22 Mar 2025 18:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742669993
