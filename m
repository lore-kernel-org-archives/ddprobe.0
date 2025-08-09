Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4091312B93
	for <ddprobe@lists.linux.dev>; Sat,  9 Aug 2025 04:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754712594; cv=none; b=HXZp8OlJVnIJKiHxTTiUkWUeLIOOBI8gogdA+h+ucXVgl+VfCjZPUYBBpo5348+/3x2s7MxptUQWIlvbO1d8J76US5S39E0bi0FA74sVX4nuyYYuD+n0LHhn6NbQm5YAgZX9W/FEFmcVvUlhauBDJObbZO3FfILo7qq+MaaKAtU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754712594; c=relaxed/simple;
	bh=sr6cEBj82lBUQlcem3pexeFBNBrjqjTXf0uJwl8a7XM=;
	h=To:Subject:From:Message-Id:Date; b=F0o7JQutaeH65vkThemvaBR+402U0QovwFP7JhIJDrQXkB+wjcHqlJpV5gvi/xRd2l9jTkadCVH3xN07hKun4PEIffBtK/aT70ez0ALGB9f8GUad8o6uKVVXsvRk39QiM+6ua0+ARDiutkfCMoB7c+UWnF9PmnPC4SoQ9NVofJs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=i1AFT7HV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="i1AFT7HV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A147EC4CEF0
	for <ddprobe@lists.linux.dev>; Sat,  9 Aug 2025 04:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754712593;
	bh=sr6cEBj82lBUQlcem3pexeFBNBrjqjTXf0uJwl8a7XM=;
	h=To:Subject:From:Date:From;
	b=i1AFT7HVCZosVMIOdCQUZpixu0mwButR1NMrWQhLcQ1FjdbG85zKn65VvPNzCwVCq
	 8dTtNhUpdc0XiaIZUuw9VJutuaL5bR3jLpb4HQs4yiXmDwvGQIITR8yS0PkhdckI8y
	 rGgLjGRL34VHOm/6NwX+Pc3sxOWEdF04E1rw2s+L04+38HW2l/qgNBzjKP1P/PjpLu
	 1QIaD90qZX/gHu7QY2d4JimqLIqa70M9XaH9BRY4AHYsQ2lHkPcyE0vnYE8mlkGgSO
	 5v9Crdpzg1mYKPhipVDJ/5L4nq0M767SJ38/6b1s1okB3XfIWt0p3JgXnhz2ljJSo/
	 CoP3yLWRLuVDA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9020EC87FCB
	for <ddprobe@lists.linux.dev>; Sat,  9 Aug 2025 04:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175471259358.25478.461719487070702161.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c0357378cfbd2532f29a2238c07f08ab8ac6810854831f34c30036a355449c45
Date: Sat, 09 Aug 2025 04:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754712593
