Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 52CF27083A
	for <ddprobe@lists.linux.dev>; Thu,  1 May 2025 07:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746085194; cv=none; b=MfMBhpxCFHPYhXD8Sya3bZ21BdXYTkkcbhtkWUZfHP2Qzu/VeVggJaH7Sua8fKMiKZBwMRP4up6KCw72iYIYDT7IreDkoNYCMyvA7rKhA0ONYlHrzUcy5XEqnX1ZSOipH9DmsirfsTI2hoRrLt5ccKAeoJkG6t9BvisPlE4tMqY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746085194; c=relaxed/simple;
	bh=EGsxP+9H2CZGXH9rFybdp65ZydEqNDN9JdLcIflX81U=;
	h=To:Subject:From:Message-Id:Date; b=RumXX2yLFFF+rVwUp8/Vu/Kd4ikzOYNTseR2VvArdQthQ1wZVNoU6cDgzUSukvNU3Pr2An1H/dKXTZGSXxCmssSZlCzYU2+zeKwCUPxxxoP5UB8kWwbj6RTmuNsAqUQPBhCrqAZJQbp9FbN8iKVTHWRVI2DojWM4uvqJDaU8gSw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lP9Gsa0f; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lP9Gsa0f"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A251DC4CEE3
	for <ddprobe@lists.linux.dev>; Thu,  1 May 2025 07:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746085193;
	bh=EGsxP+9H2CZGXH9rFybdp65ZydEqNDN9JdLcIflX81U=;
	h=To:Subject:From:Date:From;
	b=lP9Gsa0fDKCJ/b1h+OP2U8AVftxIS8AcLKtqDY7OZcKrii3gPepbNAN42eYp65xYl
	 yyNIlyC+U2vH4x73fRi3ZCaapZWewtImXAXLqZfsA4P1VhfcyFNYHA1CqKfMM3rTUk
	 WqphKiHDIuOh0SRa4UDnW22EOt7owd4GVHcnft9ojgHNLNpbLLoXLkum6YvwQ0e50F
	 9B6pa8gnYzSyTRAQh0T+1AMuRSKGzq4K44l9EycDF/8avHD6QJZhIBxAj5E2ZV7VnH
	 4IJZAdUhClv0TpwBWJ+ZwRO5tiYdqhcxK+Uw/SoW3u7zMPI56LIMKJEI8LU1KOq9MY
	 3XOxW4gd+Wuyw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9016CC3ABA3
	for <ddprobe@lists.linux.dev>; Thu,  1 May 2025 07:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174608519358.5185.14307459180470779460.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d38f4841503ed897bfc6123dfbd636fe5fa1457a392966542164c0796cdb0b78
Date: Thu, 01 May 2025 07:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746085193
