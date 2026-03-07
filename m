Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E92443A4505
	for <ddprobe@lists.linux.dev>; Sat,  7 Mar 2026 19:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772913294; cv=none; b=CYSbvL5MqgCugWtXzBycbZC+v04D+Z9JlQw7eTruHM+RXYiL57JwHyC2lgkay6yqPCku6wB87BTJb7SFfIz3ZeyeqkujakdDe5EiOuUVj2Dl3N2+V+Evp1m/suCyxPY7tpp1aOhDzvO/3M/wjhmJlksabaCBQbGm2bGNmUGxHlI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772913294; c=relaxed/simple;
	bh=HDFdEA9+EJVrwpQ6vYgHnEKu0kHddnmvT0bAhltcQ70=;
	h=To:Subject:From:Message-Id:Date; b=ZgZiHAzQq/8nV7ILqFi/OFA1AMJEF7lT6b93tg7d5nhmRupiM4YIWk87qCTmpIv4DF3vHZA+HWQEM3Hrabe5Vkqk0dh+oWYwjYzggfiSBheTllPB9BsK+LZWBBtDTR1iUArZ6WSlmCDmlVk3ZcS9vMUGpJGrXVsMPdJiPdTar1Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Lwx0m66W; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Lwx0m66W"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DB13C19422
	for <ddprobe@lists.linux.dev>; Sat,  7 Mar 2026 19:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772913293;
	bh=HDFdEA9+EJVrwpQ6vYgHnEKu0kHddnmvT0bAhltcQ70=;
	h=To:Subject:From:Date:From;
	b=Lwx0m66WIti9BrRKKOb+IqP+6Yu4CuX7toaaEWCcdFOshDIIvWafKTIdi31Jefw57
	 JykWz0XdOxlDsr4v7k7XwKfblEQ5CM/3LyD/jGGb7tORLHpdLKcMK6e7rxRAhprHl/
	 A8fs0ZJwwAJOGvXGIXuMGDrb5W/Y3oOB1VLZ53yBRsMM0TDMjDs9+tA9GddPOCWOum
	 oAK3jgn3a73v7yDqukI8ReDzCLABzIpP2gV1gwL5SkenrqqxUl7VioqY4PJdv7VmIm
	 nV+PvolPR8aM51Jelfe3G+spUPhgjs7V50XiEuB2CK4Uf4VE6LjXoErYLsqv3LLHxR
	 ZchbGH3g5DpLQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F688F55104
	for <ddprobe@lists.linux.dev>; Sat,  7 Mar 2026 19:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177291329358.23525.9526649313034949451.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 18f37bbecfae0d8e85c7e7635449928b2e2fe0e08188ccbed0aeb95970ce357c
Date: Sat, 07 Mar 2026 19:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772913293
