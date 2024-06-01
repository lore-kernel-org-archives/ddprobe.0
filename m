Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6C2017EF
	for <ddprobe@lists.linux.dev>; Sat,  1 Jun 2024 03:54:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717214063; cv=none; b=LvPOiy1wcVl8XIswVlv+/JE50Hda6wEGil1dJxV87pzZiAPoywtZaNuFhnLu5Ww6SYm7j64+HVlLnLAtWi9CV3hfFpvVTIkVB304zXoLlW0UxnK8z/+qHPwByw0HrXAxzK0vADBNMEXQ1DGi2Mtg6ItPJ0V3xHxC93x1/VnDjkI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717214063; c=relaxed/simple;
	bh=HJ6gMXUcHtZZwMz9dIrF1IOyWFI0LkbHYn0z5VVu4Ug=;
	h=To:Subject:From:Message-Id:Date; b=La+G+Q41blkGNFYYC5+vR5KhNc+WBV5iw5O3+Qo+w9HMTh4iIi3/vdDLqM3QIkr6KWaNoKpgO519tEiItp9VTLW2zYncq8w7zHHu+eV1T0Xkt8c9RPh9hO1U/ysMfCK6hnmzxKn65e7JJr7VtzVAfUm9O72yxU16bJFA7Z0NlN4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nwotqW6J; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nwotqW6J"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DF0E0C116B1
	for <ddprobe@lists.linux.dev>; Sat,  1 Jun 2024 03:54:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717214062;
	bh=HJ6gMXUcHtZZwMz9dIrF1IOyWFI0LkbHYn0z5VVu4Ug=;
	h=To:Subject:From:Date:From;
	b=nwotqW6JMWqSj5rT0AUkoCF6jMxAftp71uQl7Qsw4CLrE6GljnAFrpiASZbvojPtY
	 wtAhOuw28w2cyMV03VxguSEv8jkUVMSuItyLf/iWLWT4j6fmyhwdUvW9RuvH8/gM5s
	 c8Pit//XHJDQwA2Ca5CW44OnIrL2kMISLrZFOTaaDNOb5O8Ahpryrz9ljiOxoDq+7u
	 G5tPm4nMdyaenT+M+mUTYBdadVjaix8hWnaQZJ3BvqClgBGp/7uqvPXCfumfW7H2Ch
	 mhcPsxXLFn/zca2U+gnCAwrx3YyUCFNlihsPLBu0tSqe3tzdLzRFWH2zzfGlz6zc2T
	 52C5iDpjqTgog==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C18E7C25B76
	for <ddprobe@lists.linux.dev>; Sat,  1 Jun 2024 03:54:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171721406277.16588.18239053997817336896.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 966a306eef58810a0013a1fe866949dd07718f1801b8b8d2cf28f2441728472e
Date: Sat, 01 Jun 2024 03:54:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717214062
