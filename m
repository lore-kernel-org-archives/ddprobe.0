Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D53913D52E
	for <ddprobe@lists.linux.dev>; Mon, 30 Sep 2024 11:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727694354; cv=none; b=cLWlYMluuNaMe8gObEd5sIBmR/qX6VgGoeipjZ9/NSpTx+NYMjlR5MUOT8KAwwD68P6uBSSPVraueXVjwvuWVzG73k/mGMqwGndRWG+YlbKiY9pKWcwjYHtKOh22LNb1aGgf/ZKakuUm3OhPkJkqbnzT1xlItqSSNvQ0M4ryTu0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727694354; c=relaxed/simple;
	bh=8S/J7K69b5JD1XQovwuzEmLkmDJPV7IiZ9gw4+5MytQ=;
	h=To:Subject:From:Message-Id:Date; b=sIJTRIjAmrR2IquQPR5V+nGKFiCmmP90M8SHKqQ5x9/xg3FD0kJhCzczjapIEIcG5Ov5VG0VrQe7MdQGHl7ZbI7fZl1V30IkHYKGu0FsrRHeIjN+a7oH2YyJLcQ7DAmV5Sz3rSEq6o4R5K8ZA477MIs2oQCuWS1vmA4xzcCIn+g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SDY5nOeW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SDY5nOeW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B36C6C4CECD
	for <ddprobe@lists.linux.dev>; Mon, 30 Sep 2024 11:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727694353;
	bh=8S/J7K69b5JD1XQovwuzEmLkmDJPV7IiZ9gw4+5MytQ=;
	h=To:Subject:From:Date:From;
	b=SDY5nOeWK5shYMyQz7JGsC2uYiX6yBnmo8Eg41/+/5vRShjBVtwhput9CbJ+TSyt0
	 xfvj0KEqwS71P0Tu4uhzTFI3lxFszHcCFqENWTWJJ4LiZU+w5Ap5XVqjQgxXOhqa2f
	 3kbE29CUczkPYddAJZQmrpsezlN5OOvArqwSlzWr3XancwrhCBkBz7uVJKmSsk5+Ax
	 sURedVzyQjd7w3cNWTj17r55Ns6k9dJxK4FQQEmJkC4fDnAvjNGHtfEzOjA6f9lf97
	 tqN4CAq1oSXrNvFtN8ctUDZj6Td1sJBNEEVuKoF9VDGUBixhh6zFtrjaqutbvarXlX
	 BN3lKNTwM/ItA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A3D9BCF6499
	for <ddprobe@lists.linux.dev>; Mon, 30 Sep 2024 11:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172769435366.16330.15100790965786328431.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2b6fb807fe93adc8ac20e3d0a3104bb4148912d1300c167b9c5b0b2fb55d8fa9
Date: Mon, 30 Sep 2024 11:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727694353
