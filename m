Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3068228F5
	for <ddprobe@lists.linux.dev>; Wed, 18 Jun 2025 09:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750238994; cv=none; b=bXs0H+vMt5SRqN8FkKItseZqFMv3MqHlfI7b0z6LIJRHwIthZRKwOHKgXmG+NTV4nTSwRXp1DytYa8+8GhbhgkVxhzNPYzBbcIc6dPAlPLfgRwpcFeduIj1Rnk5f5LgL8K3NZVjahuOvjf9BYa4kBptDyLl8A0D4BspqjGEKrXo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750238994; c=relaxed/simple;
	bh=flQjDy26P7CKFScPxrrRRyFbwq8fpNG1UCPEDaEl9Jo=;
	h=To:Subject:From:Message-Id:Date; b=CEsEAUr6M0DI8KtnBduG/+9uA2nklDKcoRIjISgL4fawuBI0RLpVzD8OwcauWFOef5weYHjPh1IzelxwM2Bkxo1GPPQcgWtGFqd2aJDsD0hFIvuXgan01qXQksQpFQdPlHRyXM4z2C4UYRDsgRYpK9F8ZB2ZsnZv09jnCb1+PN0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GvU6yx4N; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GvU6yx4N"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A71F4C4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 18 Jun 2025 09:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750238993;
	bh=flQjDy26P7CKFScPxrrRRyFbwq8fpNG1UCPEDaEl9Jo=;
	h=To:Subject:From:Date:From;
	b=GvU6yx4NVxJbrLtOKNEQ+duZ9aczhraZ9WXbN55JH3ld6IEB9bWn/wpiQbxuT1WRi
	 EOkecvjuxdQV/w3Ardhi7ehn8J9jHUoUpK7sqOQcX+tYJCLY+4WqD/UL5l2CvFMgSX
	 fhJcr/DLpsGb4mqfQU+EhNIS0zKL7QYKh0rS4438wnUnjf8VS5kOUd6G2dsb42U0Gm
	 cfvi6imDAYk9gtdu6zxh5wA+lEcTkzFDRck5oblRw8sfdyt8rpahwWkpW9Z4DCLBn/
	 72O/2asigJyhfKyGTBHjUdcaqR4GVssaV68gYWE3B6Si4g2/ylCV2ZnpadNJLSDUsV
	 e/xB3vBvBEKcA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96735C7115A
	for <ddprobe@lists.linux.dev>; Wed, 18 Jun 2025 09:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175023899358.6720.5643234724655666105.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e89b58287d7932d042f963d50c8c18e4732e20b290edb19e58d93636c9a2e6e2
Date: Wed, 18 Jun 2025 09:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750238993
