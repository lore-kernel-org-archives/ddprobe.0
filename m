Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FA0A367B72
	for <ddprobe@lists.linux.dev>; Thu, 27 Aug 2026 10:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787827234; cv=none; b=AchHWNV+ffKsB0l/8MnMlK9bjylys54Q+mvLS/iJWtfk2tpPsyIH5hdbl339RkRTg+w0xzkQYHnpcun8lkkkM7D8n+s84jQ4VuAzTrD+yWpIkLyaovwE9DNUXz2jJ0NS4DpXjh5XUZ6oa4+pPlwPXxy1HN4nkWnxOoqTQUHKW6I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787827234; c=relaxed/simple;
	bh=NEoi9smq5Z1rS5JZZ2qDtFDTfTVojcZlKzk4sVOWh+E=;
	h=To:Subject:From:Message-Id:Date; b=n5o8YECAttarV67+fHjeqvYNBrMYeH4zL0arPsAoFTpFYPFFUr0jUHFHqlYkQLOMnJjgqwg5G3V7+86Ur6/ctfVEOltT5rzqlkUr+/QzJSIbHSkuKT+tYKW2n3NoY8WsthL5NhTlcBdZQeRvqkWRvh0D/ogxUz5bQ5hP66DuII0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Tzx/ac7X; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Tzx/ac7X"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DBFE9C2BCC7
	for <ddprobe@lists.linux.dev>; Thu, 27 Aug 2026 10:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787827233;
	bh=NEoi9smq5Z1rS5JZZ2qDtFDTfTVojcZlKzk4sVOWh+E=;
	h=To:Subject:From:Date:From;
	b=Tzx/ac7XcRqfy9GIIyq6eTyQdn2T5ZPfUPWRALFfk787lkZte7fuQVNh956sLdZ2g
	 IrcCB02VlCqprFrDq/yTR3Mx1pBy6qvs1vAlC2zrTJKZZ1rY8JGBtVjqsIkMqOHJ6K
	 dDGvlbF/ekgDTxTxr34zvDvjhEfi28937U1jp/SmfWfWA0ogQ8ZstwtdAJiE2ar1wo
	 ayYzDc91v+ZhmcO6MJ+Kz4hlonMmAaTZ6upTQFzQT/S/ULZv4cH1IomXNEheUXipRr
	 UgTFtU0JwiLGADPH2SBMZPID6gjbVZ34GNZd9khdH2Ws/FdeM2enJrIZ7yFEgrvzcl
	 nP/L6+Gfc5CJQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B6A35C61DC2
	for <ddprobe@lists.linux.dev>; Thu, 27 Aug 2026 10:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178782723373.5844.13186016831292392338.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0aa866d5cefd078029fc5c4695ec3b5641f1a26c01e158103df6fd5c20d942af
Date: Thu, 27 Aug 2026 10:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787827233
