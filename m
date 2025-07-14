Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D41829408
	for <ddprobe@lists.linux.dev>; Mon, 14 Jul 2025 16:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752512394; cv=none; b=o7G0LaXk2J+e7rjI2mohsMWti0QYnXFUOQ4aFx1j4pgHxrvpiJjMdPNUtuc9nvEoGkmL/GqUWCJQTk2NLC/gDlS8oM9KyIXUe/HiLZa7cxnaIZRRyejgvhZL5DogCkPwzxT3J8IvKjCFVXGHSEfkPmeoj6l8tQpgQdse/PA1M3s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752512394; c=relaxed/simple;
	bh=EmWadv/7JewXupzJRfykluPXEGU1XaxkiiphFVpwk4I=;
	h=To:Subject:From:Message-Id:Date; b=ZoNJfP30NiB2FkTq4L1jQ9ts7EmYaPivNePvNVmg5tqMVYMme/eJWYdFhWyrAw+DpycJrCjhtsXsVDwobnQM+zGJTi1TkD825kEGmr9Wqzdevgx2AbiSQtfuwlbYmxfraJDjsi+2nbKatGV1SHFI2gelAv1heAzAqSbj98vBnNc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Vvg7Xa0B; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Vvg7Xa0B"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1C2FC4CEF9
	for <ddprobe@lists.linux.dev>; Mon, 14 Jul 2025 16:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752512393;
	bh=EmWadv/7JewXupzJRfykluPXEGU1XaxkiiphFVpwk4I=;
	h=To:Subject:From:Date:From;
	b=Vvg7Xa0BD0H6pLlcNLNQuuL1jXEGx85IrcjgtJQwRTc8kvl+8zAbmiPGhOHeMZv7n
	 5KAWGQqF1N2IJxkhfZ/Q+xzc9j9JqYSduqVqZh+f/aSiXoe0WmgbjpCk/Ae5Z5CGR4
	 D13MXeqYjJlLB2UsgO82K7J90sC7JkYNcTjdXSx9kskQdtCAdaZeNZZUZj/+AwIDju
	 S68ZRi9xpMoq7mzwZr/D34ZKZ1n9YsU+0BloVxOKV0J5vj148bfApLh4f0fikTehHV
	 27yXWrAHZ7slrSxEfDLb4uFjmnWq2WrU+n7XBgWPNSeIysBk7dChSkV6bhG4NSuX9m
	 U+Xbbgp8mjBTQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92F77C83F17
	for <ddprobe@lists.linux.dev>; Mon, 14 Jul 2025 16:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175251239358.26199.6604969809343411305.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 670c4d059db6fb82aba1e4864dfc6669d837783fe18b2cdb6d94f98e0eeaa7d3
Date: Mon, 14 Jul 2025 16:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752512393
