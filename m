Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 353CD287506
	for <ddprobe@lists.linux.dev>; Tue, 25 Nov 2025 05:52:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764049974; cv=none; b=YTPdvG+Y/r9InMZFdoNb7M/JL5eyeYdxKC7k7Rt+Vy010mqEsA4uzSXC/1/m8Glro/XZADN5V0QP1sK+zY04TfMxBrY7b+L9SAo568bCtYGItNFlLLM1DYG2VtdNk8dpX8B/lAlac5rZzNykl1O9oYxDmhJ8rrnHsjLryDcjMxg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764049974; c=relaxed/simple;
	bh=odNDIsXs6pQfF6ngXqaN69jDMha23hcTNDreVaT9InQ=;
	h=To:Subject:From:Message-Id:Date; b=Rv5vwqWusv8T989TbXDq7ym0EzlMTYzCnEDr+xzwgag+66W5mIJsBzzapclw8fmCBeGivPzP/hCvurhcRO70gHIQFAaQJDy6l8qjFMhqyadh3pKc7FLJz4QbNjAWZeRrpBUWORfIMryuia6Kzr2YRMap52MkEYargGMrB/g/mnk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HIFORceJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HIFORceJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6E65C19423
	for <ddprobe@lists.linux.dev>; Tue, 25 Nov 2025 05:52:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764049973;
	bh=odNDIsXs6pQfF6ngXqaN69jDMha23hcTNDreVaT9InQ=;
	h=To:Subject:From:Date:From;
	b=HIFORceJR9DYMSiZW8Ui486zvuPVAFQS0zVLDnOJehc+JaEj9L2qHWfqbJyYlkItf
	 HEeirxWnBQhEIE1PQ9luQ9Jfa6vWMUaBQnDjz9VIBrzgZAGji9KiMkpyTmE8I0ftwd
	 zq4j049W+kcWOjopXOvi8yR5cBY+4cfvnMCj7iV+UTCG5oU5dxGLljicNALmgdZXR4
	 vUoZGP7w7UKngEUeLomL9SFaX7dIaavC39k681I1kTcKe/ITh9qhnz2luhrTm+MYMb
	 3vcgxULaa0WyZ3erPv6IYWbucTjtWAIWr9DbFj7P2cg6ltjjJnldhiOeN+bpiYMcQO
	 I5dCJb1/Zh31g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9125FCFD368
	for <ddprobe@lists.linux.dev>; Tue, 25 Nov 2025 05:52:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176404997358.24544.136185955708677555.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 042972a188ce5537cb740517b935752597845322d59ddbdd1dc6cdb8ca28ed6d
Date: Tue, 25 Nov 2025 05:52:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764049973
