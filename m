Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 13BE44594A
	for <ddprobe@lists.linux.dev>; Mon,  1 Sep 2025 02:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756695594; cv=none; b=BZre10AtorwRZm/hWsjzY9/WwofJycKBo5ntPQZw8cS7QL5wcBp9fmXC6Slfy/ShemssliNe+0c+ygI00IkNg4Pq7O32t9VnYFlXFuq40AlUx546H71CotkpORsCdtFAGqF7EuZ3YcdOw/HeketZzjnpfm5hNJSg9rkG9b8zf60=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756695594; c=relaxed/simple;
	bh=yL7sRfhU3FT2opGyFL11alRSKrsiYvO8lLD+N5CEb08=;
	h=To:Subject:From:Message-Id:Date; b=OO5qxjFCxgKn6plR+kdnCyHZWPvTTSptII6smOqop5zORqDISdOdd8L6t5FSgZJV5MgnXe7djvp3aBho+XtPTrFtXfdmOxc5ou8oKUmvqD2AmhNq1DXrb7BW9u12bk16VE1nBtiGSqDXXyEMzBQ3YNIIWBbTe7Lulxi90cDx2U8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tmJvTu1M; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tmJvTu1M"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1836C4CEF6
	for <ddprobe@lists.linux.dev>; Mon,  1 Sep 2025 02:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756695593;
	bh=yL7sRfhU3FT2opGyFL11alRSKrsiYvO8lLD+N5CEb08=;
	h=To:Subject:From:Date:From;
	b=tmJvTu1MiWR1c6CMBxJPJbHlYIcbBrOwkEQ7MImWMtvfHj7Cfd0MIThw9Dazoh7r4
	 +pJcietKuKzPQzQ4FA+zGi1Fivg2unF1La/O4mw1wkvWVn8G3XX7GUr7XKPDBgtjfO
	 zf5vbjDBTNFDZIu9PuNbkEG0dH/atsBAwS6ahCA7Q3fI020Tg6JTAVwNQnH+f14aAS
	 I4GlCLsu4xi6nIJzmEHUU/ASeBuxC11AWLkLSEfzBmZx2/okR2whWZDzdAuyLmANGw
	 HEtZpICFReIA5kfHdrcn8gLIZAoz4RUSZKH0Z+JhpG7sQPO7uU4D9hdZXRsOD+VJCx
	 S9RJeRaYQU3ZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E976CA0FE8
	for <ddprobe@lists.linux.dev>; Mon,  1 Sep 2025 02:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175669559357.22068.17609514418344041055.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9eec11d886e034817c94399406b400b95b902802dd7cc1d9123c503457c5a3ca
Date: Mon, 01 Sep 2025 02:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756695593
