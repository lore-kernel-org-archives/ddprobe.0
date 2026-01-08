Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 328C0345CA3
	for <ddprobe@lists.linux.dev>; Thu,  8 Jan 2026 08:53:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767862435; cv=none; b=VBW1/KXwrpJohmvVp2X+66I0FNU2ghwD2SVU0bNEUJJuBYdbM7d4VuGC2GI3AkSqTePaFZxnvHiV/H1CJ+w47sqiWOHqpvuEvQOY7bFXMyQpOjHTbo8q1fdW2W8U15URlWEWdZSsPNGCQ/0aWh3E0MZpwt9XVytNedBP9QZek+w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767862435; c=relaxed/simple;
	bh=PQItAS5dZdy84x4ZtGIHIR+7qT/GZQY5/lRiKWCBIFQ=;
	h=To:Subject:From:Message-Id:Date; b=ee/8gUOZFp2HePqAWZOEFu04kEc7hyRL0+lW/JWcf6BJ5ObJKMvJfP5ue1z9WGx0LFw5tTwTYY6/hKoJLPP65CbzMtvJ6SwRL9stI4xT5en8YH6uivKAcSC5WkCUaoCSiJ3qgouH7xpyyltXsE6GX34K5aHiNoPFwKwJoVdB7XI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CK2zF6d4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CK2zF6d4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9964DC116D0
	for <ddprobe@lists.linux.dev>; Thu,  8 Jan 2026 08:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767862433;
	bh=PQItAS5dZdy84x4ZtGIHIR+7qT/GZQY5/lRiKWCBIFQ=;
	h=To:Subject:From:Date:From;
	b=CK2zF6d48ZmlW0TqISuKGBfaUzhxKZYwU7993glO47z9GasbLQwsap7VWBLELYWEK
	 mLj3zVYWj7YOGrEOxteg0uv6Od1/aOg4PDCrnJw1gfobHFlI+PO4S9ZqBetS1wdqrJ
	 xoybdwHEYfhqY7tgNmUTNVrxavssvD1BFj/BEhGUMFd8mkGEs9SClAoLSut4Pqc40X
	 HoOtCKeP2CgK++jqTHVC0wgIO0sI3wujVcseGWDoMVlYI3CkEF2UKqe1RIY0dlFr09
	 8fVzc9xN6RzW7VwA/VXtNUd/KUruk0JSyJbWbyJRZ+Gh8dTwdGuQWkdqSMhbWId8Em
	 /XUyXQfamajqg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E8EECF6A87
	for <ddprobe@lists.linux.dev>; Thu,  8 Jan 2026 08:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176786243357.21222.8637744769605171854.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0fe1579642f5f16ccc54c64efcfb77d7aef8bff24dbfa948ccc36979a2cf5b43
Date: Thu, 08 Jan 2026 08:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767862433
