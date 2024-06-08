Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 495FFE56C
	for <ddprobe@lists.linux.dev>; Sat,  8 Jun 2024 08:17:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717834643; cv=none; b=SDhMlT4ghF7HWFZoCBrGfc8CrstZHzBEsMvx6yMFGgFSvZjZjzwu6vLcN2loRWHwOw+vde79ALPKge4CzOyktk2ripKKE/gdjb5f3nYc0U+nq2vB0Gh87FXUn0yy+Pb35ZtyA5hWI2yLmncszhsx2rsWpXS4ooTFQ/oqibh0lFQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717834643; c=relaxed/simple;
	bh=GE9HJVAGFQ1KYM/BMpufwvd/rjMfDS7k4G00SkzwDJ4=;
	h=To:Subject:From:Message-Id:Date; b=BbGgPklrU3HxUs4NpEq3KrX6WKUC1ysIhX+z5cT4il8iIyOqaThFt+L8EQ3n2eiyVMZRN7fOFYJ8aNcdO15yvrOZDqHel2GFUh2aq+K7xNU7QEWu1M80TRA5E33n9DkCOASFboZFrx23rxxNHwtZfxobf8QHakr15UW+7zGHLrw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YfN3FROm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YfN3FROm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEEEEC2BD11
	for <ddprobe@lists.linux.dev>; Sat,  8 Jun 2024 08:17:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717834642;
	bh=GE9HJVAGFQ1KYM/BMpufwvd/rjMfDS7k4G00SkzwDJ4=;
	h=To:Subject:From:Date:From;
	b=YfN3FROmKZ7ONd9nnKrDaNcKGw4MXDaYZARNE1b4QzVieonKAxULHPfADwzvL0jYa
	 5zsKMyUraXcQ9jcosT3uaLTnRp15lZZibxo5Zj3HClsO/AE0PDdyHaXL4XEX5R4P9a
	 XXPbCmp/cTTxclRJUXh02Vzv101bTklcJ7lDIeDy58YCnf+VdMkFXkuHHyBcbW06eO
	 ClWV8k0csO+9tAxaOqso1v8STDZyLwRkPcO1DgJH88JI+zjVRYdTzytzW5cFffCh5I
	 hzq85E/w1JVI0DS81vblqouZ28Ulr4d2Xz7Z+fSr4S/GWHXpptJ/USieaCTbq53dqD
	 6bWMte8U9GFiQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BC828C25B76
	for <ddprobe@lists.linux.dev>; Sat,  8 Jun 2024 08:17:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171783464276.13591.1845391980545076827.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: face73748c7f4d063c67730838ead8661740e8a20daf8a924df2fd14f6dbc1ec
Date: Sat, 08 Jun 2024 08:17:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717834642
