Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0569C35EDB3
	for <ddprobe@lists.linux.dev>; Tue, 13 Jan 2026 19:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768331634; cv=none; b=BEdn5JuGwYdObY95yiE1NuhYaA3DWZXLEev3YGS2kdP0FS8rONR7n0lgF0facfMohUW0b+1/BaP5NqAjuG9xbQnXFFyCbzJM2NHHh0v8fuwwIGYIfEq37dSwGrVcO5gh8G25NXMDae51v1jlurFLniLZ52cAVXN14IegkRO4qXg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768331634; c=relaxed/simple;
	bh=lqirIqUUlibdD6kffN1DBFwUcoMjeCqcr7flH/s5Hsw=;
	h=To:Subject:From:Message-Id:Date; b=OeXrJtnXNn5Fh51mnEMFXy3DX02AwTcZl/dAP7wtETCG+1b2tYTDtu8WFvbRdTNtzcUl3ICmcZBnmW0qVDKSmmjFbxJWFdUx8Td519RP20bwJtR/Bpy0moxmMmnvTOiMiqqtZzVNy4NbDKkMe1mqieJiFAzBuJKyu+B0A94lUi4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HZ7mkM74; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HZ7mkM74"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 97198C116C6
	for <ddprobe@lists.linux.dev>; Tue, 13 Jan 2026 19:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768331633;
	bh=lqirIqUUlibdD6kffN1DBFwUcoMjeCqcr7flH/s5Hsw=;
	h=To:Subject:From:Date:From;
	b=HZ7mkM74CF9HJ5xdtv1UsgyjWTvvrQH2QOwhaye1S8nyREi3lsHvnUAnNaboyh6gG
	 zcwrdKepKE8siaptzBTpYiatPDA54iPz1dRfhpdWFx/Gn8rkt9gciyDX8qBfb/J/BW
	 H8MiEvtZqPt3I/Aldr2pXDEgyWRVHeC2yKC/vscvzHyIq8a7CG+6LzBlHp3qeZxke/
	 YWCciSrAgjI/lZt1s3/b2PPc+oMizGnWu8X9J40XKW/Xaw0MWIJarUpZURkE/ZSEME
	 25t4DuHQDt8BBPg4PbiAXdCpsMejbIyTPHHKQFdDe4fTacA/xdWN1hEGt/7/wis//y
	 iOzTVlawSfeKg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 904F4D2F35C
	for <ddprobe@lists.linux.dev>; Tue, 13 Jan 2026 19:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176833163358.9945.2524585288481726224.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 745db9223e40247196b2686212c79dd4365c3e9f8be300265affb057f6fbe681
Date: Tue, 13 Jan 2026 19:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768331633
