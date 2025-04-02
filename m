Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D1A517E0
	for <ddprobe@lists.linux.dev>; Wed,  2 Apr 2025 00:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743554994; cv=none; b=BgnsZd7z/mV+EQI8WyoVjkMRK3/+Te+8JQosNS7Q+slwxcmx92YgEp16K3+6xAeaQlEQtQ321mrWwIRpanpqCCV86eS21xQOo/5Ep4XfYbN+KuAvlBDWuOcKPROJrDNFvWzmHQxLSqQEWbQQWe+LC1/r3UZ0KrZUaSIW0nyICWw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743554994; c=relaxed/simple;
	bh=xSXO3u4knjwUm8D3zbiQq3jvpoZSQomeGT13VkB4Ido=;
	h=To:Subject:From:Message-Id:Date; b=eBKRo2hFqfHUdBCGQTEDiOAgQkTNni8M7Yysqhh/nspxSUjiwPkaakfvFQMq7kCxQWFbRcjJ+UUZgPWH13wYlQ6ij4FmEp9KVHWCYgL53inDymoqXLgZ44RO0TdSpVQj3ac06EUcQ3RdxGsZe9bEKwC1NNH/ylmbgA0fRrTsSF4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=j2bwg6yZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="j2bwg6yZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB345C4CEE4
	for <ddprobe@lists.linux.dev>; Wed,  2 Apr 2025 00:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743554993;
	bh=xSXO3u4knjwUm8D3zbiQq3jvpoZSQomeGT13VkB4Ido=;
	h=To:Subject:From:Date:From;
	b=j2bwg6yZWyruI5M+9dDzm0EI0VwuJfCA65Kd6GRJcWBzJe+eD5T7KsXbhNZ9DykV6
	 SpfZjS1BlWAc0kPTlTwICS4IL4epaaKEyxyjVkb0z/FLFDopNhK6DocByca/8j7erB
	 kaIXWDRMP2u4xf19tmC3EBNlFEkCq7qI3c0iZ38Kjp5Gs6xHShyABAm0hXXFOXB23k
	 cbWCu5HFKlKBjAxRvy9BXfNkdHNM1/4ql8gXbyzdcSD07PXQEngC0S7sLfFIomKZIq
	 7Nynu0QmHob14UfE3N/ru/BLJvhtJ3UuLnHufeugvD1SBsHNiXu9r89dkzz1q0xzi6
	 ZUG5WDpuYl54Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 925A0C36010
	for <ddprobe@lists.linux.dev>; Wed,  2 Apr 2025 00:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174355499359.11108.11646136595701381001.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7b528eb597e2075bbdffed63526953a7f0c1034d5a3daf4804df60008f20e809
Date: Wed, 02 Apr 2025 00:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743554993
