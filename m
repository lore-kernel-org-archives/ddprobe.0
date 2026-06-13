Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 533A0311968
	for <ddprobe@lists.linux.dev>; Sat, 13 Jun 2026 05:06:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781327194; cv=none; b=HjP8e4aF9+mW0joNkqqvgQc+kEnpyLTrLC+u+/6/Vq2v4QviIOiMq9T3aN5NMy9BuifCMVR/6lrxtjEYNdOjwjfY0/IiiB/hTVv5XzsQ0WuNqPYtYZe4txdND+wL5OlsGXU1ZH6I0zQq1VBeT41Mvg4O7js+LEb3ZY2Sk1TgvJg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781327194; c=relaxed/simple;
	bh=HgsGvjAWmebV5Vi6suwK6cYyOazQRi6Jh8zKxowEWwE=;
	h=To:Subject:From:Message-Id:Date; b=Q2IQPUx00FxKJv55o0hxQhyFjpOhtj+9wQq7JzYvrTu+F5/UyyeahatGzZUcDAaAqDlbNihcfEITMV0+FBkI+EpPIIfaeVlCJmyyb8stAgl2XMcKtygIj3Wlufz3KbaLwCe6koplKYeYUTMME0q9g9skRii51O+CqLZDIowhHWg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IWCb5/cn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IWCb5/cn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC5D8C19425
	for <ddprobe@lists.linux.dev>; Sat, 13 Jun 2026 05:06:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781327193;
	bh=HgsGvjAWmebV5Vi6suwK6cYyOazQRi6Jh8zKxowEWwE=;
	h=To:Subject:From:Date:From;
	b=IWCb5/cn0cwDDRk5tApBl49ZaaUgjvpR3RXAEKm9kYvcXrOU+B/0ra+/0UsIk95x7
	 uWPAjrP0hw2hvQbwFOYBn2UgNWVp61LZh8jTjLorzpPor48wSrN9RvJhY8C89c2j9u
	 9ifvGr18dWJ44WUS/H9htAYzU4wPncA4/WOg9Gs1er20JlLWwCqzMqT2lE2dQob7zk
	 +C8dbOnvdxsSea4PaOq84aqPQC5NaZgVJMwEdsy8ytRWp6x/xEZagsrEaXYVXpXRtx
	 LhkRMrAWovAaxtW7ctPUw5Z05LITtnc1NwCewpR4wwsZ1JM1sGxvkHrPP9XFxVv/SL
	 7D/+Ho06aaMhA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE516CD98CF
	for <ddprobe@lists.linux.dev>; Sat, 13 Jun 2026 05:06:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178132719368.32474.9021341386437891470.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dd692369b12f2830de35522c64ef59007349c3b7cce8433a5efdcc8cdf32a4c3
Date: Sat, 13 Jun 2026 05:06:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781327193
