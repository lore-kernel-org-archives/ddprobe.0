Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3535519F135
	for <ddprobe@lists.linux.dev>; Sun,  8 Feb 2026 01:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770513234; cv=none; b=UMg6QpfSWbdhU9YgwBuPdneTrf3ya5uYTHDen7rCfE9kbrNa9hbZVg84ApEB8C5WCjWE75zkk3xnoEM4uAlH6mdQJX/xYeJOfR8xcy1wEs6OY77XKCPkqD04KngeDnxGJa006RJgKB7HD3Gv6WkhKnF/ZlfQzuXDcL2Dn+sW3eI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770513234; c=relaxed/simple;
	bh=c+uuoyhVbXqAunqgU4jd67odmeFrshbGI3kp/6TSgiU=;
	h=To:Subject:From:Message-Id:Date; b=kbij1Borv6LWHnsTaT8/JwGqnheXM9iUDHSByH9sYzqs+LnY+czeNREgJB3KYkL4bvHvEvjqGmBeWLbGZQ+JY1b8DeVHceCVMPGW+fxoo4HR5+wFB+RojTNol9LTtHmW9xLfXt/6G3wLJ49AufA3ehc2qTYj9RVC72KwnJ7E0qE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=spB9UJuU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="spB9UJuU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BCD8AC116D0
	for <ddprobe@lists.linux.dev>; Sun,  8 Feb 2026 01:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770513233;
	bh=c+uuoyhVbXqAunqgU4jd67odmeFrshbGI3kp/6TSgiU=;
	h=To:Subject:From:Date:From;
	b=spB9UJuU6D5rY+Ot0/tFfTBC2AaXBQviUIkNbtapvaBwDEeA5zQm3QPOX/T4zQXQo
	 H5HIsEuyI7uNchbmltF8dLvjGhKIHkz7ZipfwZT5WSblASkBAQ1b0wPalWm9DeSV2y
	 kiDzsQpO7S4tofAn9JwCcMvXCqUZVvhnFAZl4sqo1yrkXMxPE1QsTxLVBAgonRAuMc
	 9kB0Eh02GuRpkPTJ40qApKf9MyzGMU3YiDLYtsSlINbT3Ewkl8Mpf/FiA468vdCsHq
	 xKulxAWC5OwLaH02WCbLbMT7pTo+zjdV2Wx/AJHYPICMExSUIraBDtVN9MubXzCwr+
	 5iQh7VXcoM09A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A2723EE0AF7
	for <ddprobe@lists.linux.dev>; Sun,  8 Feb 2026 01:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177051323362.12189.13350578538006739660.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e489ef5dd20f71f5c6369947f2c292ed6eaea1026e0e4adf3f3538ee98ff94ac
Date: Sun, 08 Feb 2026 01:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770513233
