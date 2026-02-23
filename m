Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 00AD417BA2
	for <ddprobe@lists.linux.dev>; Mon, 23 Feb 2026 04:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771821294; cv=none; b=Y+KdEaiCYV45Dvh0ac0ZHZ0pT9WHO9vPrOQMKzZni9s9Rj6rZx8P//gAJz+hoaH2nWX9eTAamqxFyhOYtI+R5LIHB574VvRyGqTqHxm0lI9olrHNC49CX+HAcQHJWDtRrGX8s9/T1Vl3AMf/2eN3H9QQQheyBGiY4QNaHfWgZus=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771821294; c=relaxed/simple;
	bh=xuR++Cj/15iJxbog2pO9JtA5kVke1k3eUIacPg1unW4=;
	h=To:Subject:From:Message-Id:Date; b=hreYbOGaOVhzLKvim3nIqbbN4GSdFnSKH9BWLhlW6TlSuHNLXlBu6V6fTNMB+8zmKyEOsOj3aT23EDTbcth8l/0Egjz0wyBv7uSza9jIjiQU4GRkUPiiW8sztTVk1MD6BxrvgS4IVwBwCGDvJCbAodk+bq+ukqvPJP794AjO3vo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Eb1m4EFy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Eb1m4EFy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4AB2C19421
	for <ddprobe@lists.linux.dev>; Mon, 23 Feb 2026 04:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771821293;
	bh=xuR++Cj/15iJxbog2pO9JtA5kVke1k3eUIacPg1unW4=;
	h=To:Subject:From:Date:From;
	b=Eb1m4EFyA3MTnylqG/vGeB+l2qgrPyot8Nw+b4xCOi3BJEZMjXEn5jykNakYynpbP
	 3Lmm7CnBn/6u9IpovUfrqrs+prOxhNrzuvHU0SJ+Hkoz+yCLscITpV1OCaUwSxKNh9
	 G9vTT5wewhIof66AVnhhTUrd0/Itq2Fg5Ldkp8Go2CKsuytntztw9SAW5jponOf2tm
	 cxFY8t46FPHjV/oTnDSQut1uG3jYS0Yj3LIFlrNQoC+lgMuNSQUk+KtCA6S14E/H55
	 qYx30RenqMpPGzo/DNJ0ejpPsXjqV9xDsLBUumkCh78wgeOnO+IESB3/JH34PcTEDY
	 O/gKuowYQbKSA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91400EF5864
	for <ddprobe@lists.linux.dev>; Mon, 23 Feb 2026 04:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177182129358.32634.6360956724844099268.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c8a0b6c670c9a5cc4c3df6dddc06dbb12b4788cc5aa7b6155c666e98af57fc1d
Date: Mon, 23 Feb 2026 04:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771821293
