Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 03042327BE4
	for <ddprobe@lists.linux.dev>; Thu,  8 Jan 2026 22:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767912834; cv=none; b=I/3aa9JSj0/0Nx46/nBqwTmRdlDUVmG4Cm8GePB9ZL8lt6yWe9XqTdNQS7n5HZoTXz71yrvd/E07d0PtVD3TZHcUah1CiUc9k1bxH8ZLVwc2BbZ3AvU4TXSRT90iGhMZTcQceKexc5jxc/vQdAkgbvPjXmKyWBnN+FoUZM33yU8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767912834; c=relaxed/simple;
	bh=yLlLPYB75VDkQDqkCEhjO4/AyghyfUxTHE2HPIwwwGY=;
	h=To:Subject:From:Message-Id:Date; b=mzC0BOmfksbeOmyGDNXVc2TyuvEMPujGO4ZU7I12vPpVFYEv8nd8UWNolvyxTBR1OYA6vX5+NqSJUDj6mrdEqpqNzH3rrJp+51/5kpEkF2dbokWeYVwNjK8WEEZUHeB1QdOZexXy7RrEsITn/ivZLTUaKOuRGk7mGKcTwPTeuzo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QIP2or4Q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QIP2or4Q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3595C116C6
	for <ddprobe@lists.linux.dev>; Thu,  8 Jan 2026 22:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767912833;
	bh=yLlLPYB75VDkQDqkCEhjO4/AyghyfUxTHE2HPIwwwGY=;
	h=To:Subject:From:Date:From;
	b=QIP2or4QISZQKDUVo+Urv40SPm2HYOdCtKd+Uft6PQL7LV78XeftuSzQYV7QHBZ0Y
	 2ipuAS5T3dol2dhhavXZ8wg2qL3L8UzF/SwFBo8OyCg0PISeq7Yt0hBy0GL9SU8yQq
	 +CMxN7UpS6LtwBz4LJj91NKEIkxbDxPxdBrs6pz6BrDix5IdOiC6xzDjVPKJhbJjmn
	 d/KQegq2rKpTN/2EWULX2de714tyo77UM4ivtbhPIg6s21hjjuUOszvOp5oYYb5Hui
	 JXF0KVqmyliA9DrTxquNSWs4D/e4pM+cDMsp68dSv20kmAPcce4XeIzi2+SgmHgJ0w
	 /lBlIHbNE3bUw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9534DD232C2
	for <ddprobe@lists.linux.dev>; Thu,  8 Jan 2026 22:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176791283357.17355.16776811910457825238.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 86d2db2778b1d42b700644c180d0f08cf653ddeae44e8099bba00c1cfe0878d1
Date: Thu, 08 Jan 2026 22:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767912833
