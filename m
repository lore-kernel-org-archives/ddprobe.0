Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1367E3ECBC7
	for <ddprobe@lists.linux.dev>; Sat, 28 Feb 2026 08:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772268894; cv=none; b=HhYt8ITiJXN43jfTUtqIxJVnwMwLiTRCEAvArPrr50cDbAUp7NWi2u+OaSgSVQCOfMT6WiIxtiUivymzY3iodR0TJ5VURmwn+3rgT2hcjQWYqMjJ39Kh709n3VkZeAnBxa5kvDqGzcb52hTxREaBTkb5feTF0dzqm7NIAMV3X9k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772268894; c=relaxed/simple;
	bh=WROcmTqfTXrcaWJGvfrkoBN6vNcTxrN8FdYiyzX0xH4=;
	h=To:Subject:From:Message-Id:Date; b=N0sXp2lCjlwUkW1GIpBopBcxRT++tGNqDjVXdV4JmZIFqGtmup7DXRRL6X3Sjb+/iUiXX656s1wwJ21K2NLY1OOfpf87BN+Cmd2Z+VHJq/V0Qw2/3EkUIPHhRMEidvjwWQfZDKYiy8Owh92utc6Y9ks7gul4MH39FahfbqnYR6U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BCmJLOqS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BCmJLOqS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2B4BC116D0
	for <ddprobe@lists.linux.dev>; Sat, 28 Feb 2026 08:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772268893;
	bh=WROcmTqfTXrcaWJGvfrkoBN6vNcTxrN8FdYiyzX0xH4=;
	h=To:Subject:From:Date:From;
	b=BCmJLOqSsgrHM/Gr12cifA5KphAZCYppDxrki9S3Cf59Fedg8isLw+XepGfHitmP0
	 6Gilj/wpSTTlP9KW8UcBZJQaw2allbaKsQ1u0VOoX2CQlhw02l0cWT18i9czVsQfYJ
	 ukx5sfRaO8p4Y1kL8FMdmpscL/BEwxAWOM1SOY98Lo01R3jIcYubg/tPxKRYxEFPPj
	 sxu9gCallllR98LxrQJb7Uy20TFt+hyHIJP+NhF6utpAgORU61pGwnOE+6qQ9rNmcM
	 6Y68pmsdouziRVmmoUuobv2KI6i2KFt9Bqxv4Yk0GV617LlCOyHfRcO9+WqJZ9Do2W
	 xmcWd7VNB/jUQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FBDAFEE4D3
	for <ddprobe@lists.linux.dev>; Sat, 28 Feb 2026 08:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177226889357.2605.11075448001552340483.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 101cc75b2d53ed9d081b4eeb1190079faa2b66a6d0a4d21aee60f7ca2edbd7a3
Date: Sat, 28 Feb 2026 08:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772268893
