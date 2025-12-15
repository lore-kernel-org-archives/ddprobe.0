Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26D12271A6D
	for <ddprobe@lists.linux.dev>; Mon, 15 Dec 2025 18:22:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765822974; cv=none; b=AiFtNpQ+lsB0KkB7PeqyQfg0B8Ljh3X1spslohvW/Fe+H5uu8JzsHHWq0b4DZ4ADggW4/TFWWX07WHhZDT7JUE/vSyqWNi0T3/L9HVN9RCEoa4IuxfqppcuzFxu9Ue0DKFVkxXEErEk7yJTeuBy889scEQ/O3nBu3AaShnlnthw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765822974; c=relaxed/simple;
	bh=j/uCE32w/AKttel9Q7qepjZdJKnRYUOuSCrhsCSZZ8A=;
	h=To:Subject:From:Message-Id:Date; b=nv9NVSDsaKDZ1xcyNMroDCkG6sbiRFoFMLkAmGzZv0Q5A0gGdMMWa9LWOVM3uE3u3XlxGvWdNSH0Zu7/7IBxnkLnZTx2SRvuJetwLZD00X/IPwsppmpWmq0I3PoTQYsRV4wFZU3jkdCXpwOLb6w2nT40Y6NZhvbt2+ycwsVm8E0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UfPThRsb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UfPThRsb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A42C0C4CEF5
	for <ddprobe@lists.linux.dev>; Mon, 15 Dec 2025 18:22:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765822973;
	bh=j/uCE32w/AKttel9Q7qepjZdJKnRYUOuSCrhsCSZZ8A=;
	h=To:Subject:From:Date:From;
	b=UfPThRsbjtf4YufMOtWVgtrdA/Pr+/HPDTNxi0JePVW19NJI0je/d379mjPpMwxFi
	 HSRwZo8eBf5akapoDKRuFts3gAul9fuLuzNxOC6eZ1toaC2A4MV/n3RnxA8Ui0hLfY
	 Op812mLhCjiQKIGFQQ8ECvgKoLZPtvQzy/A7jwZqknBd3GFZgMW4P6WRb1w1+rYOKc
	 m5kcSSp/gsme5p7OtYp0fdvqLDwlGeRLOjeUKpuayaLgP7aWhyTJStxmgHwXMvz0FV
	 4ABlJ61JSartTq9ChP0uDv9uqwORVG9GUAnvmbo8mYVuxdO8fW8d7qgiClLH4h+5li
	 QOgZyNiw3WJuA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93DD0D5B863
	for <ddprobe@lists.linux.dev>; Mon, 15 Dec 2025 18:22:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176582297358.31334.11531768710369326051.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 11b61d8391dd3bce278ba2efe206f272eaa186766c7f8a698cc63fddc6479732
Date: Mon, 15 Dec 2025 18:22:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765822973
