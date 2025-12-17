Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27C241AB6F1
	for <ddprobe@lists.linux.dev>; Wed, 17 Dec 2025 01:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765933434; cv=none; b=Tj9Sjz+xogluF02Af7/OeyLpxNSBVYRabhkXAuPBwv8cZT1NJePWBBjlZLISqV58D468k1RY06uoOKilm1du5qbBJ948wPHUibNYRn3IS2rCirvX7KW2xPHhC935TfMH6gr//AtH/cFJVA9QeYiwb4MydkR13aYPj7ObU25O0mk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765933434; c=relaxed/simple;
	bh=Afr4/eI2q2KZ2upHWQG4DaimmgUxLYGeF0u+NZyInOA=;
	h=To:Subject:From:Message-Id:Date; b=g7DwbRgJB/5SJhnTDr48iCZb4iRx8ukk9Y5i+UQj1EOARYECs7tRXagd9+c076XCcFxrDN3bFnEAUTnLJco3Q2UUNBMFO4zVlyPtwizDkatMjN6UjDk72bZoUnAIko3BMXlzWff0Vo9RZhsQL6/+5APSE1VoQzCNNywq+YlrBDw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aYqTdp55; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aYqTdp55"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B88D8C4CEF1
	for <ddprobe@lists.linux.dev>; Wed, 17 Dec 2025 01:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765933433;
	bh=Afr4/eI2q2KZ2upHWQG4DaimmgUxLYGeF0u+NZyInOA=;
	h=To:Subject:From:Date:From;
	b=aYqTdp55wR7opzWQc41/YPltBbKZNqgRgb7oEKMQJKCgPxK6MkaMaA0del0zj4ml1
	 S7VW5OD9ybIiJXHPu2X/RmR23PpbLZ3ZgQWbLnle9LZwz/nid+UeaWLym+7urx6nEe
	 3heGrYB+gbuxLBsvelT2G5zZgp0flsVSZPjaLXCEJgUPPySRKxH5jP6xPTmUT/u1Zz
	 Z8qFWBB26l8MSemjA4vvnVtC70jMUvW6yUE0xoTLPfU1987GV+goN6GOKu5ShoiD/Q
	 J0ois0VpFxPNnQDNhMtbqtCbwWS9SpuGpA2iGEkxPehsu8VIA4cylqMkRnXJf3C+HU
	 6ILSZwnM6tl/Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A2414D609D5
	for <ddprobe@lists.linux.dev>; Wed, 17 Dec 2025 01:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176593343361.10768.3046110561785023240.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 954cf032e3daa520a7dda535ad4b905a9f976d10e84ebe21f48425513c7f1317
Date: Wed, 17 Dec 2025 01:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765933433
