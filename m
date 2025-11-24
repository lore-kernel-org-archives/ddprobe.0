Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C62E2EAB8D
	for <ddprobe@lists.linux.dev>; Mon, 24 Nov 2025 08:41:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763973714; cv=none; b=YQDhj2hejcdEhXLmfyZzmHzKObHhhj6GUMYXgG8CSHaTv6Zki5SP5rUIjC/lRnSqahU1g/Rr7pPensRVQX5Ot/RyrODKCBrchcWdFWHHls1AbvWi19Fh4OQt9+jBG2HXgTQ8uP8DhTOma3iPcmW3lhHgNVzjlMlB1MLeyv73dDA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763973714; c=relaxed/simple;
	bh=llVpD4DEuAzj1Niv8H5sv34+i2uLzgrjwfFgqBRGmC4=;
	h=To:Subject:From:Message-Id:Date; b=gSBYFJD/xlwawsNUaxrmKXmRcFc3DV342HovHKdAIUpI9YIiq6h/I1lO0iDFdoyIIXB1mow2QONmSkT5Kb1pZIxOSZOB+4OGwoKQrLE9Ape29QKyinMaLmCZdUgB9YJRcICgPqAJZvRzEoMwYcjJwDVku/wtm5MKvW/CdlFN54E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PgP7yuM0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PgP7yuM0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8845C116D0
	for <ddprobe@lists.linux.dev>; Mon, 24 Nov 2025 08:41:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763973713;
	bh=llVpD4DEuAzj1Niv8H5sv34+i2uLzgrjwfFgqBRGmC4=;
	h=To:Subject:From:Date:From;
	b=PgP7yuM0pqsmIpMRdgimU9jN/NNJV4NyMCuNynt9ztp5fVOWFPnOSbEU10pJmwsmA
	 Y+1N9NzEiifIfR3ik7cIXk7ig0yrZYr9WGWKjR7HmUwoYmq4XCkS4yKdgQhYxg5zLh
	 1e/FQjJO3S4uBDcIUMj7zJcPBhTrxG+aXCgCHjdQcSz8xbEaI5u93jzGhjvn6wAfgr
	 m/7PSvkZM/jZ1FJ4VyCHQQ8DCBbH8ZPdYdoqWuQjsmSo4SpOkWDypYGRR9+HDWt6FO
	 Ei7uSvz5Qr1Is//CpH/c9QtWtVgA31eqbyvDXa/lD0YjzAKRIW03Bi+obHPuDuhN9V
	 FsX3ggWObcTog==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 971A6CFA466
	for <ddprobe@lists.linux.dev>; Mon, 24 Nov 2025 08:41:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176397371359.6839.14693650048382266694.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c9b57859613ce45c803180027082089f959d19b77968eab88d87c9daecb0b7a2
Date: Mon, 24 Nov 2025 08:41:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763973713
