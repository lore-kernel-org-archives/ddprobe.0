Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27C96160877
	for <ddprobe@lists.linux.dev>; Mon, 22 Jul 2024 08:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721636754; cv=none; b=XCqBph7HCgJU3rf6wy60uIuYnriymIQDwTg81yw3cfJeTEQz0ZYw0d/rD+jvlUVvOc+O3Bx/8cYREMMW9ZV4wkhzvJ8qBC6mVjxVcHOVKB67MGI5FfjNtwYL5hikikf1EUxf9OCcH1rm4hMRI4VPILGuHWQM+1jB6EEB8OntoSU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721636754; c=relaxed/simple;
	bh=vuJKB+HJe/HBdy2KxIJj2SiWo1AhxVtDM4pT89YqHXc=;
	h=To:Subject:From:Message-Id:Date; b=eTWyxv27AjV7fFJ3Vc6jpCaiIyHPaMbx3cIN9Dswy0+SGFdtCoxYTG3rEPvjYjs8sx7curff6V8rdscghhbuWxhhAcXJPEJnYblRruO7AutMkOkleL50ypZNZCZPigqHHPEjptwGMvAtZhoQkRcqwUCaejdPHr33Ti3RhNhyQl0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=u+GiI8dC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="u+GiI8dC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADF09C116B1
	for <ddprobe@lists.linux.dev>; Mon, 22 Jul 2024 08:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721636753;
	bh=vuJKB+HJe/HBdy2KxIJj2SiWo1AhxVtDM4pT89YqHXc=;
	h=To:Subject:From:Date:From;
	b=u+GiI8dCN/Y2bVWR4omqclQE0Q8tp/4aQP6tdS44oP7I9ciLwHagsVoBYDDxjiwsR
	 DWpxZKpVmSMfAyUpfxO+E0+NIskfn2ywwL0qctl4u9SApg6mkzx0Lft8N4C9ksmQes
	 n54LD4wFEZqzBl8i+z/qlW4o7iUzVWapq7eeZHBE2EMp6b0jTvBzfmWWILWznWoLUe
	 dPVcuHVFZ2p0H0Ed82I4GEhta++o/sPbPmjQhoReFStMnZ1M/a1FlEAgOnzKJveoh4
	 chcavOvBSx4gwvTQxrJdhVa6Xbyu0F2UG4PXQLGQY7AjnrWb4KNTFT1N/mT4mlT9Dq
	 bs851uP1AMj/A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99916C3DA5D
	for <ddprobe@lists.linux.dev>; Mon, 22 Jul 2024 08:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172163675361.9665.6505666977573094995.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3ed5f721708d3034e9f85ffa96bd167996ea8cb5bf6eb5de84aec66fb3b20d14
Date: Mon, 22 Jul 2024 08:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721636753
