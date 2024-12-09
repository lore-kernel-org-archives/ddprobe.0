Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40488137930
	for <ddprobe@lists.linux.dev>; Mon,  9 Dec 2024 20:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733775954; cv=none; b=tGWju6NGOB29iiWMa9R2w+L3MrAy4zg2gpgcRtnNc9NaGG7iBS28k2WPnuMlPWxzsy9wCMpcENgv03Nq41DbdWmVuChBm6eCzfmxG6pjAdymY2Vw9fWgEzasJu3TJFwK/WRDvzV4zh2F5kpA4MfQxkSGM+kDnsUM/PuaqWhzmaw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733775954; c=relaxed/simple;
	bh=zJwlmMlrOo0HajOXN47ey6EM3/72Mq9zjTLJOp0BfNw=;
	h=To:Subject:From:Message-Id:Date; b=HEUKwj3WzcvMUPQNGafEsGeHFjY8tWaDJ9DhyJfrDbv3HjqWuyp2cA4iRNr1LeOI6wmvM/qt80OVtwWvvJ8voll9sXYcT10EXLpLI/os0sz3I73u5O9kgC4thU83zM6mEqZMexrdEkhl8gLgdph7yJtx57oyGCmirUBsoqk0K3Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WR159Ual; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WR159Ual"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C33FEC4CED1
	for <ddprobe@lists.linux.dev>; Mon,  9 Dec 2024 20:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733775953;
	bh=zJwlmMlrOo0HajOXN47ey6EM3/72Mq9zjTLJOp0BfNw=;
	h=To:Subject:From:Date:From;
	b=WR159Uall9jmPxxOXm7NzYTQdCv7OGVxFRK0iwJPvr2GemiaUvWgGnOlmRqnKAFEG
	 ooSEKf3il0wvOEW/dDOzNvyThr6LJmf1JFlnjrWveZGEZGW9bq735Bf6nmy+lLOEQt
	 E0xFuU6/oOwVXzrH9f6pKgmL8HjoDMes0qTcqIBQUwTX7Qbakhy8VQarjAyMjREPF0
	 iO8x976fnRY0SMj2wDV4p1YHz5mgcvRIM4HJ8cuU8Y1ra1TJcdHHyaax8sYiiqzMwa
	 oX0xgk0B/iirpx739uV9SO5eJ3ZnY/XgcwytrmfLDarHQ62Y6bKfMlKkALWqvtON2n
	 MjEA0e1qnwC4A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABAC4E7717D
	for <ddprobe@lists.linux.dev>; Mon,  9 Dec 2024 20:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173377595366.24726.16050813099317633292.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c5f8b251c7c1396e9077944862dc10249ae896e1c639cedf9b7bb0c273a457af
Date: Mon, 09 Dec 2024 20:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733775953
