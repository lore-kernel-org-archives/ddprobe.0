Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24E7E10E0
	for <ddprobe@lists.linux.dev>; Sat,  6 Sep 2025 20:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757189394; cv=none; b=a76h/VTP9FPE7bMkZa2CA/X5c5NIy0DUDwNcMz15HIsn6EqiMc1fbPa7EFkrJ5JJZv9y0FB0fXHobVvPuzefbrDjB84pJYLsGxiE3DFfr7Q5ObB2IWRH0GtzE2yRGvutdFusA0FYxup8DV0UStVTRJPEU6htI99m5r/+t4uWo58=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757189394; c=relaxed/simple;
	bh=gky9GfXV+7vLx0E2zGshAh9TFhDZK8Ri4cZFM1+oFoo=;
	h=To:Subject:From:Message-Id:Date; b=WSs6KtiwUj8sYygG5IqC55Pqb4JkqpaFMLLRrWm4SS61/ptoo9U2ldjbeWk7kbiHu0+duxcFeWHlfvDC3+rEH8Sv+JQwTHsy2mFnqsBpUIjZYtb+T+fFvqjiSyC4k2n8Jz8q8K7EJJ2+XrTnpmAGv+2PaKiFs7CquYdVq+CLVMY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bf4KPWo7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bf4KPWo7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAE62C4CEE7
	for <ddprobe@lists.linux.dev>; Sat,  6 Sep 2025 20:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757189393;
	bh=gky9GfXV+7vLx0E2zGshAh9TFhDZK8Ri4cZFM1+oFoo=;
	h=To:Subject:From:Date:From;
	b=bf4KPWo7hhH9gZ4lkij0MW63EiTcbCbGQ6MXwjV8sGVIDlpmCHq9AgO2iyw3rDc5y
	 nuvguk+DSmdzQMbkcYbtT2MRfLbrmdc2RyhkFG4Ylo0gWLsZVgA9d3cQF1CBeEuNsH
	 xtlG5ZoEKhZ1IRwrrdmn4JPvF7A3r1SlkQaQf59kO+UEX8eZsnZsmnRlHclSOA6pRu
	 fn91rft6KU4TXLR1ruGeiUBEP9jkyrNgaxzRGtmU7G3/62NnjBB/1Ibt4HxD3TxqGj
	 z5OGuEwcadECSVXAnMdpT4ZA5930ZIT1LXiJtdAL5LjpnKGYwf61s5rEsf6bBIoMor
	 Fcs3H/gv7o4Hw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A02FCA1002
	for <ddprobe@lists.linux.dev>; Sat,  6 Sep 2025 20:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175718939357.31673.17042727617010155861.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 523ca1c7bf2219c0dbddf25a46de55fbd86347ca97ff9b1b8815c7f5e2836081
Date: Sat, 06 Sep 2025 20:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757189393
