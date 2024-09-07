Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 146BA15B57D
	for <ddprobe@lists.linux.dev>; Sat,  7 Sep 2024 17:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725730554; cv=none; b=DE6PoAQkl6Bsbq6q2gTqtkFJ6KbVX7cz0z8Vcx4anbmbOZb913lp38SLOV1GYBNyiUfo/bPovA0TGi8bismgctjWWm5ATmyHtz5aeTaQMnKx/hcn/nSJpkHO9R5wN912qZ/iEEUzffXsUVTJTIQbAx2ORxX4h2/cAnQUDzUp6QU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725730554; c=relaxed/simple;
	bh=GXVno9j+mw8gx5fIi++xi554kYTj0C2eqTngXixpajU=;
	h=To:Subject:From:Message-Id:Date; b=Ld5ePdgxsmZMWB13fBGcxZdETqAzSv9bQH3QaPMMzmhV13RC2geVV0G0nFw2CvbGnHxqiHYUVoGT6OsJ4a/yQhkTCma6T8dKm/b0ROSMPWqKKqiRw0Pgj0q1a+wxwIGBMiy0SWm39HkzfsLnb+/Fpvv4j0J6PcXf3/8B/iSPdjQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SKZOz64k; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SKZOz64k"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAA7EC4CEC2
	for <ddprobe@lists.linux.dev>; Sat,  7 Sep 2024 17:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725730553;
	bh=GXVno9j+mw8gx5fIi++xi554kYTj0C2eqTngXixpajU=;
	h=To:Subject:From:Date:From;
	b=SKZOz64k8NqSPY1JbZ6J0O4kWdRm+FR99W09wfVC8hOaln3Iz8I+eicefLwSJhGC9
	 RMNiO8f/jkVMHtElucDv5wIlKcNhZuXvl+0Gr8OxvFFIVZaHU4Lhj38uB4wltN3+MU
	 fMYfNUGxUnXlkJ3p/1nFAazZPVHoNmqYhPf67I9y00XzVcyBlwC5wSC4tkhhvJV6Yh
	 z/EGOw5NrrdLgsox5AH0CP6ju+zavckDKuIOApQuyy5Wsyq/V4GCJOIITavlyFm5vO
	 qFAmaOxdrhyg2T8b8TlRwvq1obEdDqaFYUgCUQcnZiIpgRq+bffxxTrGthS16dPeCa
	 LTv1feWmBktCw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 951ADEB64CA
	for <ddprobe@lists.linux.dev>; Sat,  7 Sep 2024 17:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172573055358.5381.7843405762706543765.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 67ecf0c71f0fcb0843edd92c8b382466e72240344bef2826b4d7011dc4bea77b
Date: Sat, 07 Sep 2024 17:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1725730553
