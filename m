Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F3CE3315D41
	for <ddprobe@lists.linux.dev>; Mon,  3 Nov 2025 16:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762186794; cv=none; b=J38ibrKjeC4YHonFXCUaEMRlWDBCkRhu47sD4K594eivJtSOhLvd7s3aq+5kWz2jekbciAiusLptzRb3jXsFhuUY+ao69ZswKddfScL2KdTXBD2naW/BNCU5BBq+v4DtjQ2qmu7Woj1DiQ2cTYWbt0VXdzHEpvV700PhaeocYe0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762186794; c=relaxed/simple;
	bh=kor7mw+ma+W395OHy8k+iaExGegimFQGQgENAd+7DNI=;
	h=To:Subject:From:Message-Id:Date; b=JYwxEZK6L0sXlHK1/8rTCb/gYpCplxDhcYwZCSoyvzYA2yEZjskcHVHPh4+PVi+egm/5NIQgWLuk977aelvijKNYSt3o1vXxq+uKPzboGlbC1QC6o98MUsqnHWJdSOcCN5chTn05ZcfQ08zTa68U7ZcHei+M39ueDl6/mxjGsUU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=t+P6wqQY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="t+P6wqQY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FAA6C4CEFD
	for <ddprobe@lists.linux.dev>; Mon,  3 Nov 2025 16:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762186793;
	bh=kor7mw+ma+W395OHy8k+iaExGegimFQGQgENAd+7DNI=;
	h=To:Subject:From:Date:From;
	b=t+P6wqQYBUGDErbQQioe6F2fmtQ4tHGmwHvFAQoZpZJ6MohZ71+9y4sBjN+mrAvfl
	 eSBwEaDMeHoFEfaS8uKEla5YTQ+HU8+ZrSTmj1VTyhQ94nprXB2FFjVMdA19T/nGvU
	 siG0p4c1+8rzOOTAz8simNb70PiPKVgnMYoUSP6Brbk+mpSuKemkvFwLyHAqrUNJ4s
	 pYqC/aLG3qLkb5qEAA6uJfuVBYNHqiITnmB7UB0y/6uXq8+hVQONabzB4ctG4u/P5X
	 rGsab/zIu1BGWWbrm23oM73Cpjy0ECP3QsTiF+YPSQZinO6I5kXru2he4q1lRUbfWD
	 b9sudxwB3mpSA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90229CCF9F8
	for <ddprobe@lists.linux.dev>; Mon,  3 Nov 2025 16:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176218679358.19707.10461194980989177085.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b272792b7da61b1abbda53908c5e44313cb1eb88f4e2aafcf18eeb1aba1e1195
Date: Mon, 03 Nov 2025 16:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762186793
