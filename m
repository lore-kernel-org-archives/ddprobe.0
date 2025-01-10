Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 401F520551F
	for <ddprobe@lists.linux.dev>; Fri, 10 Jan 2025 16:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736525154; cv=none; b=UAvgZB3fcDCLoUUcYVnYYk968gkNcEvkCnUhJh6Sdko/nKgByOeis5j7BzJO2KlUIjxNTXVvVMmqqlPCREiTBKro2xoHwXGigCReA5ml1Aw5TcWS/L3ZzOYjpD+ys5BMrS5OQG+/BalvSo5PmE+UmACLVzLvvliU3oY41GGfskg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736525154; c=relaxed/simple;
	bh=N+AF+CAPl8VlTCtyU9KTJmVHu2NEKOR/UPrlxxoO1WY=;
	h=To:Subject:From:Message-Id:Date; b=hjU1XL6uJGsYTD7XOvq6zPRdshmpEMWP8Cj+0i0plktv2H1+YFU2HYQOr/Ra6iPE9C03WazfRrp8YT5w6kSFLGMGvzw30vH20YQHosloNtoIgm7IaGqZnasevB/cL1JnjZeSZy2wEIbi7X3qtrQVMFomHtwpdQjB3N0XOdFPP4k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=k9GF8vYU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="k9GF8vYU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C09BBC4CED6
	for <ddprobe@lists.linux.dev>; Fri, 10 Jan 2025 16:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736525153;
	bh=N+AF+CAPl8VlTCtyU9KTJmVHu2NEKOR/UPrlxxoO1WY=;
	h=To:Subject:From:Date:From;
	b=k9GF8vYUc1c6Ygji3eSI3NP3eLg9fyTCeqfwBRIrZF3bQJ18pUGZ6huXAiEmZyZYO
	 YxkTR9E8H89kcsqgpo+Tjhaynf50utbNMt0CUA6GgXDCUoDVfE8SDD6TBMStMtubsB
	 zHdJu+tsWt8waVuM5RJpEKSHRJ7ZieIAXtr3axTHsSAn5qLHAwhBSGjU6BMpoxIgeT
	 O9U2GdL3zfo8TK4AEfPJHr6riZYwAR+v6cd9ODnrLRvhZxuXxhtS4evv1UDN1KQ1D0
	 7FVTrVy1SXAYAtt3GDW+jW112uE1mFbUprtnxSsiQdnsajeyW4eAKkuRfbhfwQcLBP
	 Sd5A1KPkT+t8g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E864E77188
	for <ddprobe@lists.linux.dev>; Fri, 10 Jan 2025 16:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173652515363.2549.10718848442517459846.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 345eedca876eb59e3e418d27bbcdfbeef2d421c07f89964e2133537eb6187d17
Date: Fri, 10 Jan 2025 16:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736525153
