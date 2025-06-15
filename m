Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 354732CA9
	for <ddprobe@lists.linux.dev>; Sun, 15 Jun 2025 07:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749971994; cv=none; b=f+iofJUVqJwo4CrK4rO3omM8m5dZ7WHMc1srfdfGGEN622T6fODiMy3gODXECTvCSOTi1+mMDaVJO6YKpgIHQ50D3zXTxtnJkH8dlgoAI+SKQ45BYQ5Gy/r7H9nEkZ7Iauth7/Yy5w9rMoLaO1PBAIzmGUn8fFb4Sc0+j7QXghk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749971994; c=relaxed/simple;
	bh=Ejkj4/7N4jFcQuXAYVagnsBlTPB+bj11MJU1QTOPhjo=;
	h=To:Subject:From:Message-Id:Date; b=oAi/NBUMtf6q/Vc/TNa7bVWy3p7f/hzkemcjQNP+MUNpZ33N07XO0j9O6fbH7vbxedsAmnFwOmdCGH9CQfcHPd6VhKobbT8mJVjKIh4xCRB42A9rpGpFWQ6tj0+axPvEBaIRAy80fyQNO8KEBw0g85mIK84aku5V14k/8jVsOT8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IOjwrQtH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IOjwrQtH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE919C4CEE3
	for <ddprobe@lists.linux.dev>; Sun, 15 Jun 2025 07:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749971993;
	bh=Ejkj4/7N4jFcQuXAYVagnsBlTPB+bj11MJU1QTOPhjo=;
	h=To:Subject:From:Date:From;
	b=IOjwrQtHOg1FeZpBTB6cbYOm2apXbSiNUyhppzx/U+zmsz5XSM75VPZftrohCwGO3
	 J5r/6kwySIwmX++zaaexpGvSv+r63KSNKoIWYknE3RIWnQbWSqqdGi+09siqbiSNjw
	 n7YnGflObyHs7GkmBwWqUETC+NpMYYiVVPQAWsw0bh8iEb4BWJ4v2RkYj+QUrZP9YM
	 LpojK2oKCkoF3h3PSx4gfvdwNgQjtfNYb/4hkN1uYXw4brkG2d+wni9f5+j2wky2LZ
	 Ct/KO21KSS0nbAtJvqLlCYyMkNaHHv3qk8n1xep4gtJMaNFAfb8DMkQNx9yvuG44cT
	 yMyYOEX6FSQhw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 968FBC61CE8
	for <ddprobe@lists.linux.dev>; Sun, 15 Jun 2025 07:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174997199358.27059.1989052403208289917.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3bee8af6e58ef9dd80ea3ba292dd30e7a76cfa00ecdc683fcab2444962de5aed
Date: Sun, 15 Jun 2025 07:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749971993
