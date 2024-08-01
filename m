Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B8BD446A1
	for <ddprobe@lists.linux.dev>; Thu,  1 Aug 2024 10:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722507954; cv=none; b=B2FrKTYwFd/JN9aXk4JtpLTFDGQIJsj7saaEXv2zyJSB3EmwgnfRbLNnytHBC+M/k+zZJxqGXKaFzYMndgJw7gSjetVxxzeDX8gPvot9TCggjQP4RdiNJrFr/nKaL83LqX2sdl81oNz6NES0lmV+poksegUfMvg4KBtu6M+2nrs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722507954; c=relaxed/simple;
	bh=+Lvh3jfasD9arXrmfosVFB1D7aP6x55dvBk2H7+Q/io=;
	h=To:Subject:From:Message-Id:Date; b=VgpnWVPYCz2n1HhJo+sP46mBTo1WDEH4kAmCsTFHv0l1/ksuVEzfOHPAczW1AxolQEVzBiwN1OZFt1s+5nARIr/pVcGJoOZXZ4TgTmdEk13bO3+eRMWcOB3mjLg5HQomFOvMvxlNBJsFoQoKQSJ9f+8T5paRwvYs8VHKAHpgJeI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=a7R7C59i; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="a7R7C59i"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA14EC32786
	for <ddprobe@lists.linux.dev>; Thu,  1 Aug 2024 10:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722507953;
	bh=+Lvh3jfasD9arXrmfosVFB1D7aP6x55dvBk2H7+Q/io=;
	h=To:Subject:From:Date:From;
	b=a7R7C59iyW+A/5M0ZoqRb6vPV5tKyMonM6uO0KbW8VEDAHDkLCLmLHSmeRCxYZ5q1
	 JGqn4vnEzVAGFWeOmDeA0Xornh/MiwtiovRI8ImoU0NS2W2C0jC4vx5lJ7dFpuWK7J
	 GEg+NmyT7/lrJ//NL9agzf5GNuniS/HcqwvoDnbXOfI51XxX7v7q1/UTy425bv4Y2r
	 ihW/Od31iDhkbE10ndqHvZu/Iyrqyp1Mu7AI2Y63IqnKhKsOcaew4DOe9kubjg32lZ
	 Vi1BoBQdRt/8Dq/WVRdj4DfpTcO+rowu6KGsM/UVq6tItlenxCiVaQW592v7/dwera
	 4byr9R1JrLxCw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95D77C3DA4A
	for <ddprobe@lists.linux.dev>; Thu,  1 Aug 2024 10:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172250795360.23153.5148724748019603366.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3219e257fb20e827dd44a160ad324abb261e8322235d30dc364ee0e376833259
Date: Thu, 01 Aug 2024 10:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722507953
