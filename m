Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33F721BD9D8
	for <ddprobe@lists.linux.dev>; Mon, 13 Jan 2025 20:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736799954; cv=none; b=DQpTZfW06qpsOvVfT5GXOEy4ED6U8Ls52U1FyF4ndxg+Y9iLJtMrkA/JVdKeKbKQFWfvkj5vbheClNi0m4QZscnbsagwUsSxy1HiNv/ZE0ra9loXR+WS6mdBej++dKn1YC/dFQcc0dZsWrop2aLbZgLlXAfGBvX2/EI6YXFFHmM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736799954; c=relaxed/simple;
	bh=oGFBJkdn4NBfo3T/OnU87mXzJ9lwEpsHUgvL2AFuPMs=;
	h=To:Subject:From:Message-Id:Date; b=FvpJql25jluybEGKYXWXR3aV5ToGxtnLnlmdqbCxIzezE2iNnhF1C63PpDnkuoO+ZCthXTyx4vKm5ePjgfNvuK6I94jHN5phs908XAGcrvSl49hyaC9ELIqWUgb9Rp0KYmrZNGjuj7YELv6X4FSq781gmf48/CuwsDi4Y/kczjc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ew2wlBK7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ew2wlBK7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3007C4CED6
	for <ddprobe@lists.linux.dev>; Mon, 13 Jan 2025 20:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736799953;
	bh=oGFBJkdn4NBfo3T/OnU87mXzJ9lwEpsHUgvL2AFuPMs=;
	h=To:Subject:From:Date:From;
	b=Ew2wlBK7KDgSeYyaNS9vMdhvylNVnHB7BblEiMQla3MDNPqxA8u9aR7982RGFE2k/
	 W0E3ZGyHJewJZgfVYLHBP2h2r0a+eAkU8PbY7H74l0oCI5002XYgzGYD4M7jtnoohE
	 iftlZQRw5NcYYbOBTH8wZhPybR66Sp4FmsTf+hSc6OxmZxj6YWZ74LclVM4c/u245f
	 5nBBcN4oXsepuPdOE60AE0HQ8Z0vGnXWCcbIGecL1OfLQgMKF34OMudjHBjXLmA4G9
	 tomJjw7dAw0crf43t/ZPKzlmwOr5Vyqp6wEGbEwyw9HN2iNqJAP8m6ApRYj5shprxY
	 Z1evCh0nZvZSw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 977DBC02180
	for <ddprobe@lists.linux.dev>; Mon, 13 Jan 2025 20:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173679995358.17231.3341365419276787037.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 26f8095931a85d9ef1510e59836c7ba090083af7d32b9dfc639c972698227acf
Date: Mon, 13 Jan 2025 20:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736799953
