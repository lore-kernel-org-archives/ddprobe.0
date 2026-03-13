Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0AFA837DEAA
	for <ddprobe@lists.linux.dev>; Fri, 13 Mar 2026 12:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773404094; cv=none; b=FMZFqVvbPj3gI8BHein3fHXABHjkIhUJDc6fTJ/r7J6OPLDiaX+0oK+5fC0HLNTgEbAnzVmuAo7Cq24+fl0pmeH6UUrfNVQyDDf+fOek0qh3xW4v9mpi7YwPg9EK4zAbyqOy0np6GdAZR0F0DqwBnR/gKvVzq9XErSfncqzMVyQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773404094; c=relaxed/simple;
	bh=n/0QpIw7wVzxlKeHlWxBU4M8bXoQUs0/CZcn7GibgM4=;
	h=To:Subject:From:Message-Id:Date; b=kc2xuIksON+aBpE8vBbsejlp0uhMahuI/2TFnl08pV2Ux8BxcBjX3zJlDjJjVjMBh8SAkxqdZBozpaf2JUz5kckEToGkehxvaqVPrxRUvuPRXKC/J3IJEirtx5gwrAATbaWKRfnOkrn2LhDu4bi4IhbZtVnZENzJ4kBRbe6p9pk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Rgd9RCaF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Rgd9RCaF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E978C19421
	for <ddprobe@lists.linux.dev>; Fri, 13 Mar 2026 12:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773404093;
	bh=n/0QpIw7wVzxlKeHlWxBU4M8bXoQUs0/CZcn7GibgM4=;
	h=To:Subject:From:Date:From;
	b=Rgd9RCaFmu9dhvaF63r8MDq5rjryt9PldYuTcaWN/GfjdDAENwJj0XUP5RAgLwyBv
	 jicU3QqXG0fWdHSt3Nwa0+Pll3yJ8ivsF43eO9LMOMD9H4RfoNVpjV9tbjK19RxSe2
	 kz2m3R049SiX1w5OmFA5q+agh/NZoo025+WBSPrP0hzuxznkt2glJDjofqSSgtd/2k
	 GymedpVlLXLRU/hvupjVu1QQhz/xE/iVeeChBhblB3OniU104ui9Ld00bg85KbsuNo
	 qnJ7EuuKLdULenILXlWxeViK1OCY/fbSHuyA9eEY6/iN6tyyddiBXHn+dq8v1Yse9w
	 C/ILHZhaJkRmQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9046B105F7A4
	for <ddprobe@lists.linux.dev>; Fri, 13 Mar 2026 12:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177340409358.11865.6485493222864572803.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2b08cb55e72e506ea0f99720f374116813f1b83a267e4ef9136ac369d807019a
Date: Fri, 13 Mar 2026 12:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773404093
