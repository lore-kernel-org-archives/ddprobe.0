Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 188052F1FEF
	for <ddprobe@lists.linux.dev>; Tue, 28 Apr 2026 14:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777385854; cv=none; b=OCNQII3eyt0dn2vbYHU+EL9nAaejgdoFZ0+Ei4K3z8MBb+ruOK1KvloNY55oyeFA2CqH2LaCsS31+4vDPZ1ZN9H2nefBR4rDIq7MCCpI1K0ocSnB4TM7Eqlmri1oAAZm+1lw1jaG94FR60SuVsKPt7z/Hik3giYTFzUqN5iDrGY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777385854; c=relaxed/simple;
	bh=SOrkgmnxBd6CzAiSZWq42MHDVh7uPSlO1CjBhizMbSQ=;
	h=To:Subject:From:Message-Id:Date; b=fbrMlbxOs7Vpwgdc5izc41Rr25JUbxrnPqqdxDY3CnJfDWBbScpAu/k4NkIPEadeznzRkp8rihDKHc9cJeHHmgQ7CIcX1TmqzeX6X2gdPEs1y+9h0yQmyuTLxx1YFZFS8niSqhemIlRvkXmtZaT2G7cVVDUQ0ZWXFE3E1/MHP8U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uPdGsEJD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uPdGsEJD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B95BBC2BCAF
	for <ddprobe@lists.linux.dev>; Tue, 28 Apr 2026 14:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777385853;
	bh=SOrkgmnxBd6CzAiSZWq42MHDVh7uPSlO1CjBhizMbSQ=;
	h=To:Subject:From:Date:From;
	b=uPdGsEJDSxId8zUskt3R7ysiO4dJ8gh7dcBBjoUcqEy+qMynv9kWqewwZyGgKQmuM
	 /c+GgNDhh9N9yz/RnO0h9whi8rgQJZe8f/OUGPoqcw79pFSRmWpjM/fiEMPipCQ+W/
	 gnnJYZ9vG//mjp/2iN0NGhTa0M1Cgr2Lb/WMpyU3ozJmA7Kfdw/iWFfByE8NBGbD0x
	 1w86X+gbdUklHLthcIkIW+OE5BWpAKrAFlqnV9IAkHbkkMs4qUKh0bLglOP04HIxDC
	 SE2YmdsYER+glg0niHcMNqlYIYRj4J+IBptlHGyWHHCBNoJs9cCSlv5oIrdQk7SFaZ
	 tG/kmoxXiYZpQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA658FF885A
	for <ddprobe@lists.linux.dev>; Tue, 28 Apr 2026 14:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177738585368.17883.9320266427700471268.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f6bd2af2f273062e6865292149a1f595051f081817a480b9c7b81f70500c6f0f
Date: Tue, 28 Apr 2026 14:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777385853
