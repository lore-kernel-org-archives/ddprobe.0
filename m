Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D63E4F5E0
	for <ddprobe@lists.linux.dev>; Sat, 19 Jul 2025 13:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752932394; cv=none; b=Z4tmDwYg9pJPmjfNo0Cr1W8ncYYHpDjndOmPh2jnqWcw/YZn6WqEX5cEh4GvKiuO27c5UpV0KM34IgZ8EzY987WPLO9pb0qqY8cxq30Cya36Jz6/BkjzksDUoGoG5Byxvb7T+CWJvPQXoQDSHhiDC3wBVwkQaL1u6HSyr4hZTN0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752932394; c=relaxed/simple;
	bh=tEqyBkt5czZ2Gh66LGKW8+KLXFWVuAoc90vH6EjyCGg=;
	h=To:Subject:From:Message-Id:Date; b=efm2eHFJWDhCWCZB4y8fF9bFx/VDlv0fa6sQOQyO2F0BG3sODTbsmgTAoPTxG7OvVICMVNCicsxDPf8mNA73Gzi3P3evUFFmXg2IBi1z1gmKzweRNv2mng7+KodgK6BpcCkhichahoOwxUNDcvFXFl/j5WGnx4NIFc0UkbB0Lug=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qkVqVk3t; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qkVqVk3t"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A364CC4CEE3
	for <ddprobe@lists.linux.dev>; Sat, 19 Jul 2025 13:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752932393;
	bh=tEqyBkt5czZ2Gh66LGKW8+KLXFWVuAoc90vH6EjyCGg=;
	h=To:Subject:From:Date:From;
	b=qkVqVk3tKHjyrAJ6JaobZj6fKFFldRkU6qKEfo/4OxNlX6kYnnv6qtyFjVPsIuY66
	 ezyDQ3F+H2Hmd0V7V8hapQErbMmbZzjpbx4+nsd7GuMjnAakzcNMUWuhMF1VXP/Zmp
	 d2ktLng4z7sM3xMGh88ZGEjtX9Fyea1CcLE1u/Epgg/GmUOb6Ixk8qUH9C6wBEAeoL
	 C5PkqU72O+LuFhv8zADYQvdc9GOQ7okE6rVZiKdc+vChlNQXWfWMTu/gcAGC0nzap9
	 ht3vfhDsUWzgZgl12piWStHydaecbLvfcJyxEf81mdNNYZMXLpc7o+w+2GLTK6eoyT
	 pt89T/E5ZzMZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94C8FC83F27
	for <ddprobe@lists.linux.dev>; Sat, 19 Jul 2025 13:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175293239357.20072.12783604212191615028.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e5f79e1832a222b2e99ecc36807f9597afbfbeda74f1cccb010a67fb7cd0a1a8
Date: Sat, 19 Jul 2025 13:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752932393
