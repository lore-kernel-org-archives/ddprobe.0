Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 11AF9270557
	for <ddprobe@lists.linux.dev>; Wed, 25 Jun 2025 10:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750846794; cv=none; b=XAaXcn4YJHdYzKylDZroJRyiRRAA3lC4XJnN8QN1YOETU/7NBUs6vFJ90+Ilxdy4p4fRiGtbUj23+TAmgKKNB/fixbbhYlj/s2qybsaNKfSW46E1aQS71KYhhtE3LN5gqxeiQn0BvXj5bCS+cE34sYPIFmRzqQW7z1Zr7oxS6sY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750846794; c=relaxed/simple;
	bh=0Q1i4RSa+K/UXogpykPKHEjlf0uRdxjtHujxCQMa4y0=;
	h=To:Subject:From:Message-Id:Date; b=an01UmITUmiasfTun2+k5IfA3vm8WrPtHyncUhvyJ6LDTV4vvGwB1EnSE9oKzpVW8OolUFrYExDlz6RnP6ZXhX6E2GU848WhDBnwOvCSjTbtZcsRn9oetTMF4Fji10S3GU11NRQQSQLt0jiJKeQ1J4cd46nrvgGiez0bnVOCw80=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nuHrbJix; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nuHrbJix"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DE4CC4CEEE
	for <ddprobe@lists.linux.dev>; Wed, 25 Jun 2025 10:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750846793;
	bh=0Q1i4RSa+K/UXogpykPKHEjlf0uRdxjtHujxCQMa4y0=;
	h=To:Subject:From:Date:From;
	b=nuHrbJixWA+vbQk308rvUaO1olFFjOpg6cCnmiiG4oNT2nrlHADvlCa0xblr6kf3C
	 4MFkTPbJGNpBw+TOb8Qt0yAmYgguSPFosGwlfPsBGATUQGvAGeZitrcdDOrVpdJBO/
	 wKu7+/gbsFmQ23JYoeIHBO44CnHliFN91Z+sSmvDd3y6sQ6TIO49G676Hc1hv0B/xb
	 XscqP/Q0OzdOhuzPoi6BlHgY15t2i+DPP+tuT4B6GiZ/wNdwpy92Odd8a3TFOXeQ1F
	 ZZn0MoffWOraxA7Ds6X99TPsI7uxvE74jX7unVb5U2KFrhgiMGBw+Suj4wzzIHsn1m
	 3gWWmacFK1Ugg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EEF5C7EE30
	for <ddprobe@lists.linux.dev>; Wed, 25 Jun 2025 10:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175084679357.27865.11671954216918781804.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 18d1e2965ea28a1230eed947f258535007c0013110a3cd77a0b66b75c4c04ec6
Date: Wed, 25 Jun 2025 10:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750846793
