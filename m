Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D46416D31E
	for <ddprobe@lists.linux.dev>; Mon,  1 Jul 2024 17:05:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719853523; cv=none; b=S/PpVaaHymMyhvRvgjUOMlL8LretjAjH6XTS4K6rwDHzYX9f/modX+RaYYDaurd95w/ay1j6ZErc3G8IvrmqN9pZASJtSxYM1m92gejiqQZBSjrpSqE7IRkY8Q/xibXZx687UwHvWrGfzlMtjNOMaoXv4Ikc+kYUw13/kauy6ko=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719853523; c=relaxed/simple;
	bh=JDDECanw7PMR7ib7JFWpS0wjSpB3+7MU56hg+dQf10E=;
	h=To:Subject:From:Message-Id:Date; b=Qno4/OcTDJpnhyh/pWP41tiydWhV+7CHC2JI+5w8aOR6kZWdTjVdo0RdetT1+QvKEppmaQpe0QqsuGXEub6VlXOhE3pNdRRZW8Tb9RXpPJ2n6XMferDuJ8MIkMKE5Isfsv3VhYOdUswCO7cE0qp87COTxYVs68I8QgRDusEFiT8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WTQ7jc5s; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WTQ7jc5s"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6D73C116B1
	for <ddprobe@lists.linux.dev>; Mon,  1 Jul 2024 17:05:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719853522;
	bh=JDDECanw7PMR7ib7JFWpS0wjSpB3+7MU56hg+dQf10E=;
	h=To:Subject:From:Date:From;
	b=WTQ7jc5s1zapFww0GNWiEE3tY6BAjd0mRCpgiYa0lVe24JP/GpUseBN+0QABF4Psx
	 +KwS7OZsIrnR2gLfY4Y1lLKxgjnWWxgFAEwbmhQUPXcK0VPwIHLMpeILErUqETVgRf
	 tShZ9y8V/jLir+ZjdicMaDxyXU1ov7uOsdgIVIkz0FvxxsrI6Rykx5YPKarC6nZtqT
	 zm+KMvCdviLlk85K8QRRpELQaNE7d1QQ2854OMdWT6f3aYo8EZSeSLzNdsT0Hsl7rc
	 5ozScNCf3PY747PrF/XBWdjF8hzVmru3r6d3W2XA48NReRETOh9QzNleAaUQNi/HoE
	 jJ88B5zfxrSxg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C4D3DC2BD09
	for <ddprobe@lists.linux.dev>; Mon,  1 Jul 2024 17:05:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171985352279.12002.17270551729691696500.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c9799755ed41bd27a05f32097262b18092ab453fcf5df308ba1796adda5b96b4
Date: Mon, 01 Jul 2024 17:05:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719853522
