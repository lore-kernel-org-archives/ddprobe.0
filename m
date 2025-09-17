Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 200021E4BE
	for <ddprobe@lists.linux.dev>; Wed, 17 Sep 2025 20:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758139794; cv=none; b=sl/ZNl3ZYmTsHlSvhYvX+FvX7Ke/8S/GQSYX9thqBT3xgi49Ko1hl6LgbODjayGw0e3zu07BW96q1b5eVAcTyFgaro++4RCVI9z7XB1Sn4f2wPA88qNJtyHfQfExAQYjDc9tWPshq9CPTcKtM9ZqRmsfaZZVzHEeJMZ/yauuIY4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758139794; c=relaxed/simple;
	bh=R0+3YdJHnH5/DSj0ANpddVytW1dNtAgB5UHsFCwLiaQ=;
	h=To:Subject:From:Message-Id:Date; b=DpYuT43p+AUYG5uSWowmbO8osvByoZpp+E2KFrk5zIMMN0omKJbiAuQx89gnW3Z3U3lsgkrGoIGRrdqC0PnAWgYipqLW3knsNHIoPvmQnn1rJ5864khJwWAEBwRYDaNHtMDSG5EcxMbuAbaEhlSBaLxAYiagEPLY7cmur0zBCx4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RRFvKXU1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RRFvKXU1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2F6EC4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 17 Sep 2025 20:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758139793;
	bh=R0+3YdJHnH5/DSj0ANpddVytW1dNtAgB5UHsFCwLiaQ=;
	h=To:Subject:From:Date:From;
	b=RRFvKXU1O3si72dOwqAN1C246TFs49byu7C2zvwr8xB5+91ctwocPONCK54P3XPa+
	 rCPdcyOPo7qMn7Iv2OM13TZbWkPjKkyem2zwo85C2Gm+37c4RhI4qSrfr+kzlxafqU
	 xTL5QvZGV9nRK9biGYcedM6cXtrrnAz5wHJHOJ3rgsLjYTJAgI0sU+lRwFBKgzC6Z8
	 Wuz48fAf4hCYt2lFII5r3pO7G4uRrniyltOcAjK+6Pn/0IaIQwqKdHucfzRJbpaEeD
	 fY6xilIzpHU38FJbrbhqkK/KNofV1d/jynhXz/FvehOPI2otJM/hSrT+rzszugcN+4
	 OLFQlBCxqsq8g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93887CAC59A
	for <ddprobe@lists.linux.dev>; Wed, 17 Sep 2025 20:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175813979358.16653.15334310158118651581.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9bf3f173620acbff4ec7ad304372c1daad3768bbf98be403186fef81ea2b123b
Date: Wed, 17 Sep 2025 20:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758139793
