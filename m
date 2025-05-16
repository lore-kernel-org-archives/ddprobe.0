Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A9BA2356DD
	for <ddprobe@lists.linux.dev>; Fri, 16 May 2025 23:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747436994; cv=none; b=eDxoOK6x3D8W733gTcNWZOO22mhV8QE7vc1M4Pkkwg/nKgngq20yIxIjpC5PI8m3deCKQnDD/HVIWE2R6n1PadfmrkAtfaPh8IR3hBArLNtU5PgNwzJh+R2t94U/1vwqLtQwHofK9I+pc5PT2PvAACgBMDkN26UtEqAYWcLlwBY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747436994; c=relaxed/simple;
	bh=k4kqYpeuBs1RlMVcQ9SWZXNIWdR4uJbBuWypagQWtHY=;
	h=To:Subject:From:Message-Id:Date; b=OxG8zN9MdwMs7n+GjGJZ+cxCKLwTg5Qy1+d9bXRtHqvtI/P5a+wA0WR6Js3a5ojIzT4+nQyh/t52/IaDAN2Ayufa/TD88FZkdhwbZXchGy6TbVgAC0//yuiQf22DyPzw7UIy9o7WBdQIxpMbZMZyOznDvl+8m9RxsWnJf9OYLm0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HqFVKlWF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HqFVKlWF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5F15C4CEE4
	for <ddprobe@lists.linux.dev>; Fri, 16 May 2025 23:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747436993;
	bh=k4kqYpeuBs1RlMVcQ9SWZXNIWdR4uJbBuWypagQWtHY=;
	h=To:Subject:From:Date:From;
	b=HqFVKlWFh/grwf0gyEkZY0EzeUHNx7kdQDm2XuDxA/sy2xnnE8+xayrTkQ4BgCRD+
	 LEYeKug3MrYoEWk1vm7ZK4YMCSOXMzxTMtr9noS26ivETai/fAwEARrDm9OBIeN4oQ
	 K98cbiWuD9bk2L40gBZB/OyxyLV8Z6dcjClo8Jorju0rTg/5PHTHRhZ/tMJ5WlsPqN
	 4KxV1iM3d7OQHabCFIXnsbKzuCHLnyXRB8pMG9b6x5xbd+fsXsbSLrxAvfXb+gau00
	 gwHdaKHIP2J1ufOYEQKwbclCb9hzvnVtlzJp4YUkQaTWqZLfpwX1Bdid0BMvcqpM5e
	 KZExVIVsFU0qw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 932FBC3ABD8
	for <ddprobe@lists.linux.dev>; Fri, 16 May 2025 23:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174743699358.20755.3079919166244875587.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aec082a419383c1284eec1be0d0daefecb78b1aa18bc47e4afb32ca26c11cc47
Date: Fri, 16 May 2025 23:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747436993
