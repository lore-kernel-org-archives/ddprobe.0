Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34B772066F4
	for <ddprobe@lists.linux.dev>; Fri, 21 Feb 2025 11:28:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740137334; cv=none; b=lpJBTV0WNVNqVpvI6WoQaney/iwt9vCs/B4AkfhSdbv0S6zo48gWjW61QH6syXfGzeReWHN8g90QnRGqXmZxqJaE8dC7/Y5LczrpF91IGu46DVJZ6KnsQeDxdV47TpwMc8ZpbuRWBqcf17BJgtuUUuLWI88W4+33rbhp5sPRvy0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740137334; c=relaxed/simple;
	bh=DJ8FgDPIokSqxXTeT3QTY9UgoIL+Sc5pgfeuHBReNPQ=;
	h=To:Subject:From:Message-Id:Date; b=sve7cwxuOKWwpjF6ZiTO7rEWN2e2IZRAfaRzeEfCCWf9ItJreh0nuXvtUUge/Uypkx+NnaAKlEz5kgQrO/8H4/xPO56ciHq7EVx65jiL2G2c4xaFuUbrDLkyjEU2P1/X1j9OgvTwgvgCCTG3oWAjIWX9MK66Bo7r212z4SwqvaU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=a4rxJpv8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="a4rxJpv8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A05D7C4CED6
	for <ddprobe@lists.linux.dev>; Fri, 21 Feb 2025 11:28:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740137333;
	bh=DJ8FgDPIokSqxXTeT3QTY9UgoIL+Sc5pgfeuHBReNPQ=;
	h=To:Subject:From:Date:From;
	b=a4rxJpv8g7NraKNHJsAkw2xwHTxdlB7DefOh7OL8tkdyHe4BKIxAbigqn4kYE+PQY
	 T0D/J25yQDXers9BuXVyiDfROF/v2xcZqAK8nu402Fqr73B+HnFKXPy3gTfbnq7Vgi
	 r7Vevh1ANi3Aj6NC4JopL2ZAYy5PpO07AvVWEyRPvTkhJ3Ko8VthAIKQxxMfn3ERU6
	 UfIm0FzfTnWRhIRfR1rH/5ahI9AWbamt46dDXm04KOjWi90g9RnuWGOoQAub7CCY5v
	 ZcQceIqB/zD8+7E4I0vbY/zf3gnLkcK3+yYnz6HEh9pfJQF2Dwiq7dtdOwe4bh7oX4
	 lnV3noqMACdgQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FEA7C021AA
	for <ddprobe@lists.linux.dev>; Fri, 21 Feb 2025 11:28:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174013733358.12193.6597117078517153924.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 72f9d86606e838886c8a575d78806f08e9630e4938ba23fa99f0756e35c56780
Date: Fri, 21 Feb 2025 11:28:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1740137333
