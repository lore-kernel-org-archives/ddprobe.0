Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5725826989A
	for <ddprobe@lists.linux.dev>; Tue, 25 Feb 2025 13:28:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740490134; cv=none; b=e3T/QZVpmiwqAr4G3LJc6l34wT13dI67JbW7cc5HuVtvdoUMIYSsCywYe4ry7qBW5kO6zGUI+USTBxgdJg77Vp1uRzy27YhLYj+4P4vQ7UKa2oT5vT6Wpwh1eYlTlHnTwbJjcS0sUn6qAiekyOrmupWl9ERgH7kaIiErZgmiGAc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740490134; c=relaxed/simple;
	bh=C2qx3Pu+iUky0Yl9fGRRsnHs02fzM6NZo6YmYChUauk=;
	h=To:Subject:From:Message-Id:Date; b=PrpUnwXbrXlF0wMGFYDHB7l9rM39VwyRC/gNGt+o+aNeKqCHNGtVFQN45zaapBqTdkt9/ZewI2HpE34uyHSEWZmciHG8P5kNAWt0e6VT18iLanjVOmrPxLwCIrrwsZmsAqlZzw5SJjwafXqvYPoClU1MPRfXy8zKPYeCr2f8QwI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NU5y/b0v; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NU5y/b0v"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B663DC4CEDD
	for <ddprobe@lists.linux.dev>; Tue, 25 Feb 2025 13:28:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740490133;
	bh=C2qx3Pu+iUky0Yl9fGRRsnHs02fzM6NZo6YmYChUauk=;
	h=To:Subject:From:Date:From;
	b=NU5y/b0vIsKGsxXtJrCyT1J2cGAg2FW6IR01hhcvBXvJU2+UQiXgbwT4iWfYTcCUI
	 /K3I1CX0ZHa/GCxlmK3e6GFghotZCT9BNlRSgX1noLp8scXjwkueHozoBxXrKZPVTf
	 fTc0t9FoB8CelQJJ/q2shnsOYA7Bt7OP4BOuDqNn+4i38kgKAWyIy5TVi37UHsd6VA
	 uJ4/CEKfKMPka9IE1Bkwqf0RP2E5imf1y76Qqc7ewFJPwTcu+J02IF+K/YcNb39PXS
	 i19/Ca+zyU2RyQmq2q/TBscTJyYOfEy1IWHnaHUmB3UCM6eshlQuMX07ok0lqtwUjO
	 ORe1+5rYSKrvw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BA3BC021BB
	for <ddprobe@lists.linux.dev>; Tue, 25 Feb 2025 13:28:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174049013362.18265.11753791594833176278.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ab9b0e4734c8ff4d9dc63b366569b8f263990069b8270029f17c4624ac5ab2af
Date: Tue, 25 Feb 2025 13:28:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1740490133
