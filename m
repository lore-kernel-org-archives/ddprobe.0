Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F0AD1805E
	for <ddprobe@lists.linux.dev>; Sun, 15 Jun 2025 09:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749979194; cv=none; b=qyg2LYwbcoie/TXoTRgPXsdpJWIyNSgqcCiYJwAoriVppUJyLuQRWJKpRouPvIskPR1GrYENe/BHILLb1Y+KWuiIDyK/oJtraQZUWlZbf52MUCcw6j+abCo72G8Llg/E6S2F3JdSavJRqqy74ao8tQLcTi595fSe4a3ACwnrRRY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749979194; c=relaxed/simple;
	bh=DNdFCQfkcqs5RG4CuJvYjmgiCxJ+EdxzcJILojdhRkg=;
	h=To:Subject:From:Message-Id:Date; b=UAg5S+I7lE90aVNmAQlrdxfcMy1ZrMkLf9CwaI6LBfhLcYmiYAd1Mur0ATzpl9KsfOSsqEo07cQdvd/CsW/eXqAveVsSPQPGdj3L7fvBNYfhuFqmuDnB4qyzG5IJxxJ4qw0GMpG8VXP5kdeAiEGVu34cSXvBYON88FwnXJD9Ie0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UaQqemrW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UaQqemrW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC015C4CEE3
	for <ddprobe@lists.linux.dev>; Sun, 15 Jun 2025 09:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749979193;
	bh=DNdFCQfkcqs5RG4CuJvYjmgiCxJ+EdxzcJILojdhRkg=;
	h=To:Subject:From:Date:From;
	b=UaQqemrWw2oAqSdiqQM/pwgsr7B1etHkKyHsvZooiYDV4WGwvG9ynNsdzcOfifHBR
	 vyLjn9kuDFGN4EqFWuzAIdz8KFZN5W5r0bY6KWpbe0MrooJ7jat6rytb6qFtxqTg1P
	 YIg47BsvwnONud81VzqY15duSvE1uA1zjStZovSED9gIRBuJiK9sj51eIdMg/lW1Ck
	 MjR1ctIrd/2k9skjGioiM5kJticWljKAOq9S5P1Jm5oQcTerY8qcG0aL3+ey7NqfEX
	 p7iIs36XyhqTJ2UB3/3WOORE40a7UAOP0cIF5BJn5K0V4UCTXH6NrWwTeNyQbtP7H0
	 qCvRqMJAwACcQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95B2CC61CE8
	for <ddprobe@lists.linux.dev>; Sun, 15 Jun 2025 09:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174997919358.13348.15180460898735800465.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c803827cb13fbc57b9da6a06a9d24ea4630b03f17a54e7eda7caa1fc8fbbb761
Date: Sun, 15 Jun 2025 09:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749979193
