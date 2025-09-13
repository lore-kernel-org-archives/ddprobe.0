Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1AB5728488A
	for <ddprobe@lists.linux.dev>; Sat, 13 Sep 2025 11:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757762994; cv=none; b=nsqHE59Qtyzeb1CuHYIYtWI2QL8Qbezd6VHb63QgpiKjvlja/CVs6+vmFS96Jki3jqmBw6k+fHHU+1ESXzTCmf47H95sYEV4Sc02I8pukfNb3WTwm4j2AeCLmG90CYgVxlE2V07MZ0LN0hRb01J+qHzxkqKGryPFxXQGKKTfDhg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757762994; c=relaxed/simple;
	bh=uiWve0XSAui1a/dyJgusR+2o7HaTXKSviOj45bzq1C0=;
	h=To:Subject:From:Message-Id:Date; b=uqQBc5hTjCk4t6RZSXnp6WozZBYtrm+RU+DMeuGXjNB9R5FzkN8qV0Bj4bF+xkbhE3floJazFhurPCV1+3kHWlo4YCv3BNJDalubwCFao2CO7rSny6Dsa3XcCFTqpT4in3xMjCTlnMt7BG4jt1VtULgHV6omKJnv/61EXh6ExGg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BzDsmE1H; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BzDsmE1H"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2652C4CEF4
	for <ddprobe@lists.linux.dev>; Sat, 13 Sep 2025 11:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757762993;
	bh=uiWve0XSAui1a/dyJgusR+2o7HaTXKSviOj45bzq1C0=;
	h=To:Subject:From:Date:From;
	b=BzDsmE1HYQ+hKRbqKppL7iiTLmZW88LWNQ/okTTrLvTnscEAoGp7T1wS0MaxYtrfd
	 bLDxpIl2KaLcz5PC3P1S2LSKhawnvY/rBMaOf9VFN+Y5w9GYgUl9bIj8Ww9k2qd+3X
	 xbG8t22+uU2z8HUng5166PXq5fbdTDpO6LQoGEU9BQhPleR+1EMUzza5q1TsXjNZU9
	 mloePWXHmgeBm5UU4xTLNum2mxe30IweIi/mHwahvOFkOv3Hd9tm9lyR/9poUGGF1Q
	 saAmAZuetKxHHqzs0wPRwrKuLe32xgF/nUQ5aKUQVC1ro1hflm3fxxWRda5JI65lkB
	 eVxj8M40BFK9Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90809CAC587
	for <ddprobe@lists.linux.dev>; Sat, 13 Sep 2025 11:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175776299358.30514.15194524794441197947.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f1df6a04da64944aa8099a6e2da6ae80093b02a8b689ded690a104b02d7f1cf6
Date: Sat, 13 Sep 2025 11:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757762993
