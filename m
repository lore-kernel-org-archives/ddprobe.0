Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B7903EBF06
	for <ddprobe@lists.linux.dev>; Sat, 14 Feb 2026 16:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771088094; cv=none; b=b3qqos/kIuX7a+ZGwe9GtFXejG3OqvIUSHz8Zd8bIb43CmEM3DadgmO+NUEvne7S+OTnZoaeM3t7id+qzNpqg69ahQuGvES6crUkCnQDcvBBNudL/TzXSQyDAH9D8EX8kjETCGxiBDgNmO0fOph77L5qty+a9gT4A8bDec1Of2c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771088094; c=relaxed/simple;
	bh=8kHwyGZ/855I95TZdZq9DT6q5gVc/XIrkn/6phg/uGk=;
	h=To:Subject:From:Message-Id:Date; b=DNjyKf80KEkAA8et8PrRW3/Itv9p+yIxpXuQQfYQoGW6BmF2sE7OGzxoVLcn67XelKihknmXtTv40BqwnnA46zJMYc+jVOjAWe6tqwiNXBa4PraemaAg+hBzrKCAdwqvwY2xEjIB8mrGvjYfs4nQ3tKsw5viJ5xIhiUsJ7cr1EE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BGj4Obx4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BGj4Obx4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AFC3BC16AAE
	for <ddprobe@lists.linux.dev>; Sat, 14 Feb 2026 16:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771088093;
	bh=8kHwyGZ/855I95TZdZq9DT6q5gVc/XIrkn/6phg/uGk=;
	h=To:Subject:From:Date:From;
	b=BGj4Obx4bXUDIu8i1vH4TN3tqrpIFoN8YN14RvaEtujFYbOmren9s/MJCR8R+UFkL
	 gSxMa2Rf2ZHfGlCJDLTyWJyXXGEHc+J9zrm7TNYJiPXKMvhG5KNmtquwRW0K2KsUHp
	 aGpao0Z1k0nQ9gC7atQMv5al5zW9cwDDYF9iAUSoEnEXbsIusSMElrDazuqqWmSdvX
	 RsbZCcOoXdaQx1FbCGnBWWSDw3VE6oLwZWVp0hcy7nXc+ouN0jebSeYzRuz0pqLAKi
	 J+H3nbpDA142kEDLJGgPfYiWHGQy0ei47Wyr3W7DmrXeMm7S+BY88lv+OVGOqJv3SI
	 awYSz2873XjEw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96CC9EF5848
	for <ddprobe@lists.linux.dev>; Sat, 14 Feb 2026 16:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177108809359.30658.6668775700704370139.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ce57843868126f1540d4ac8f170a8855e2a754ac18b2ff6a981e88740470952b
Date: Sat, 14 Feb 2026 16:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771088093
