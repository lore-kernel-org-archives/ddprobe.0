Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C1A293C0625
	for <ddprobe@lists.linux.dev>; Wed,  9 Sep 2026 09:20:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788945635; cv=none; b=MsVcVQBeWAh+Uh9FvITw1MW8cLU8OB2dhbTzH4JNneiruARFBBiiOThYG0SEhOCPgmDsxcMEj8eq0fY/S86BqfHllq0AoGPT5BIohMX14NaWVDcAqtf8S/rOYHL3RNoxleWyXtbXs7PqS2rJEGl+Rpol2KKUnMo0UFekX6uq6sk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788945635; c=relaxed/simple;
	bh=wkf93yjvkpRlTXnC/eXmBPgC3Uft7eVrt7GSO9QtqRk=;
	h=To:Subject:From:Message-Id:Date; b=skmj5Hsl8Dt0r1aZW6Kh7OC72DTskY6U8xs00towWQmBOuDo/Pf1WEyyEZR7hSFfOAQil0MIkYgXiPnVun167YSXl5zFK0ZgAMb3jMiYPHK6AD+nVEHB5gzz70J8at3rE+JUipScztdcDXw+okq/jRCWOpt3Gpu+2WXk9gWK/Rc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UUfKJI61; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UUfKJI61"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D67F5C2BCF4
	for <ddprobe@lists.linux.dev>; Wed,  9 Sep 2026 09:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788945633;
	bh=wkf93yjvkpRlTXnC/eXmBPgC3Uft7eVrt7GSO9QtqRk=;
	h=To:Subject:From:Date:From;
	b=UUfKJI61TodAWz1sCj0LNnfe8yOKwT/dTlwzGKy60AsZhIMWALJgrdPD4ORK/HLJT
	 aEYQduXVTQe8fMeJY/NMiPZybeHYtlh4uLrZyKVGM4RC4Nn4OcZuI+VwRlmdv6CWpC
	 /Q3Ylh5QXLzQv7vVrVS4GbaE0QluDQ+e/rZWKl3oFSVY7XuVwPE2Ze35g6Bu67g5vw
	 aMhyZhDLArQcQFcg43E+YR3uPnm7VQBWtDdcaHWD5EGdOv0exprqmendh1HzespERf
	 FAb+Tlm8/UR64Ac9YZd0UKW7/7pbS8Ro1TSb/voAlZ49YPCZ6j/XOHNAoHYjS3iPWF
	 oPBSdH2NbcwPA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2AD8C79FB6
	for <ddprobe@lists.linux.dev>; Wed,  9 Sep 2026 09:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178894563372.5822.1815217195775787630.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4ec814f1056dc978a2092a61e4f5f2c5d60d52c510b96745397c361cc73d2f25
Date: Wed, 09 Sep 2026 09:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788945633
