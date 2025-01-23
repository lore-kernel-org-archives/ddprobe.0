Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 67EDE1D5CDE
	for <ddprobe@lists.linux.dev>; Thu, 23 Jan 2025 23:55:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737676554; cv=none; b=EfBEXiM3Zjgy4PUQxV59MhMEzsXIw6CPW8nDEzbe81NMAvW8B6aD607D9JF2pEwcgce61+m2C7Dk/ldxA8+9Nn002Nk2LVx7uQ1Vj3wwuPr0RXHEUaCA3Cmu9PQEpEgpoijPKHoOlSEFbsPGtqLa9Lry8Pvqiqv9r824iNhp7sk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737676554; c=relaxed/simple;
	bh=hPaH0X8g1GsAg/FiEijtBt5HT/NcYqDmV+2P+dvkPSo=;
	h=To:Subject:From:Message-Id:Date; b=sppz13J95ewmXZIzVN1Rodh4g/IfqtEw1TI35pEQE/JuKObbDCTHFlwJm0PjTQb85PqBPfCdt9qtqsw5kHQyWDrVSlez8ZHI1EPcJNfV9BTN2581FSsfxttVdk5PZ11OGZBoB7VYIZVdar1kiwZ+iq8jBVqNSau/lAYr8A15XCQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=L7F25IUg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="L7F25IUg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D523AC4CEDD
	for <ddprobe@lists.linux.dev>; Thu, 23 Jan 2025 23:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737676553;
	bh=hPaH0X8g1GsAg/FiEijtBt5HT/NcYqDmV+2P+dvkPSo=;
	h=To:Subject:From:Date:From;
	b=L7F25IUgNVT4epxvDz/a3SmeFYxg1MJrTHEzXJLYBn1tveuf6n1aISqLbGWbn2mVI
	 a9cOk3z3GDIhOdzIPr7IUryuqzl2AUD4NRf3qmMZD22XsHje7Kzqgl87d3Iw90EJe4
	 hvDAPH5ftENXQsyy9Roh62kMzJxLA/7l/2LrB3igiF89rLG+eFrlplp9SmBt6Ld2pK
	 1aeg6M8/UWptmkhL7Kj9y/chIz5ulE/BqGJUwqznrX0xzI68CSNhEEEfB9xtnAONQV
	 y2roaH8+wFWKpfrFc3/oxwNsQewlRu3xNNToiqWD/kn714Nr2fD8wDGgJpkVyjjDLi
	 d/eJTM6ACBz5w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B9E10C02182
	for <ddprobe@lists.linux.dev>; Thu, 23 Jan 2025 23:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173767655373.8475.2551446128009649655.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e434e6ec05821c3963dcf624ea1401d3ec80986896bae7c2cee345f5d088b97c
Date: Thu, 23 Jan 2025 23:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737676553
