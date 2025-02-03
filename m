Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 53D1F2036F0
	for <ddprobe@lists.linux.dev>; Mon,  3 Feb 2025 11:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738583154; cv=none; b=LgNlG9+5OZI3glXfYgbpMuzbUoq68OIG2ZEvlZOtl1hL12yPx/8NQnkkVpKaG/25KWeykyWh6zN4zesS98lvvlutkDEX5as88tVFVNlDo4Q/cldrneGeDKH6Y2EVS3mumlhJNVcfSQNczfp9idW9NZcHS3dgRQ1bouGACyqfS0o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738583154; c=relaxed/simple;
	bh=bt//FH1koYgA8xNau9EUN1KrKdBUZ92sAftHEpIuctY=;
	h=To:Subject:From:Message-Id:Date; b=WfAJTxmkkxRWrjLvzT6G6cEXK6Ly8Dgm0VZdNGwS4hpbeVEcKq2iqENNaKocniyj7vW5wCGJgJwunAMGiR0KlwX8FMKw4NgDlSia82rglI5xuClF8AOT2X5elA0WzFm6ys+SCryUP9nUNNN6IK8bnOInXWGjC98+CbMNhb4STxo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oyeiqXzl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oyeiqXzl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6134C4CEE4
	for <ddprobe@lists.linux.dev>; Mon,  3 Feb 2025 11:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738583153;
	bh=bt//FH1koYgA8xNau9EUN1KrKdBUZ92sAftHEpIuctY=;
	h=To:Subject:From:Date:From;
	b=oyeiqXzlTcMrKxT+xAR04tmJ8y7Xkby6k96qKWgIjsBAoBfUyKYbSVvJVhusgHP1k
	 KGVPevC2uuqNva9UrtXwZ94kwzEqjxTMDYTh+kueg5N69zOq+3PV+2cCRk1T2t7yFm
	 eCa6peCFxUkB6R52IsxlceTWX53bkTPnprvIhJ5+bUyy53/sX1aUp8FRJs/KzrV6CL
	 dUhVw5RWlLPRwGDBRjm1jfZqPJy6GhqKQpEFM6Y4Ag4OTcWMHxTiWcaKgUEWZt+5ms
	 KBYjor0RQfvcsnkfCc6+O4v4rMRjpHkCCPdRElQM1j6E8qqfN2lASChzWi4x8gNkgM
	 gXgijXCks2w3w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92C49C02192
	for <ddprobe@lists.linux.dev>; Mon,  3 Feb 2025 11:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173858315359.30781.8598175977787539985.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5624b8c9cac2719918dd7d794087d54ae5168f0dda10e677a37bd3efa0d45c5f
Date: Mon, 03 Feb 2025 11:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738583153
