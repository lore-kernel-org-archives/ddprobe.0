Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2389D33E1
	for <ddprobe@lists.linux.dev>; Mon,  1 Sep 2025 18:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756750194; cv=none; b=Fp7T1kFGhgmPs0FyvwF33V6TKHL283AQOP2w3utTywjV1rvZR6p5aJ0PPajEOBr5WGbMi2jA+M1AYjEaSt/f7EP52MLO0J7uvCbidnWgxvU6YQwWjmEStQbH9tKi8GtTbW6s68H6vjky5hScMMqjrbln4q1mWKR27HBHPlZA9lM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756750194; c=relaxed/simple;
	bh=Q+sCqgl+EAS7Jyq0k5x+1bdkKkY9A9F0pLDBcJlhsn4=;
	h=To:Subject:From:Message-Id:Date; b=uYJbs7P3fCA8HHdpIo9AGS198ZoLykjSNyReeKBwZqwllI8yiu4iacGBxkb2tV6pNX0s75WzDN2JnfmcSX+eNqMGh2zjK7SIRikC1aumo830l1qaiSK1n22u6dSKj4XhCokH9umsKJML/za7o/YGgkocKBXPWM5mGtHq/5IGSEA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iXrAbL9s; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iXrAbL9s"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4655C4CEF0
	for <ddprobe@lists.linux.dev>; Mon,  1 Sep 2025 18:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756750193;
	bh=Q+sCqgl+EAS7Jyq0k5x+1bdkKkY9A9F0pLDBcJlhsn4=;
	h=To:Subject:From:Date:From;
	b=iXrAbL9s1c+SnJJsfOmf5u5RIlvVJKSqQEp3Qqgef+NFHJwq4PjFaIExm5vfvVnM8
	 dMCg9t2gH++mqHNh2b9zD3hc0949IvRvxTu2pD+n5djNx8XX2t5pisSqoG1KzTYdXh
	 bn3q4s/RJKWDJpO/xL58pO1FyyIC39tCGNb+L8jOq/bAiS0q8UZmxzYu22BGO5T1ys
	 342ZSLTKj6kzsI5ZbZh7Jyq+wWfT2lE2mSwGyfTzxIsJ6d0Z2XX9/ICktU6Ttse1CG
	 AeM4M8PbQOZ8Yfw4T4kXOe9r02y3psp7YHwfI9av9prPZaaFQwPU1uq0/UfKpc985V
	 eeZW30IP6d0FA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FA94CA1000
	for <ddprobe@lists.linux.dev>; Mon,  1 Sep 2025 18:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175675019358.10637.12958689409029211444.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c2559b7490d74b5d4d799f2eaebaf73a67d1731abf3e713eab821d958d32cc03
Date: Mon, 01 Sep 2025 18:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756750193
