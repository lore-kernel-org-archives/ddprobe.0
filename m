Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19551163
	for <ddprobe@lists.linux.dev>; Mon,  9 Feb 2026 22:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770676434; cv=none; b=V6NlBtS4Lx4E5u6pPH0ODhcfolAZlvD7Yyz56oRuZmkdaGgFljDPSr4bZXTXo7ijcYPE6bt0w+wsnyv7IgA9LGM2xLjf3QLf9843ZQTPRDTgtNkjQ/2IPQ0C18gWHtWx4i7BEBm+ePUBLL6pxvURxZG1ykedQOo4R7RwGjVi/Jk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770676434; c=relaxed/simple;
	bh=gmTEOAL3k7KpHIHYpzIJRwhIf80dBVQyRDWddhflqkU=;
	h=To:Subject:From:Message-Id:Date; b=matZdxNJFirbIs3y2Y5HEXw7pAt2UGOCc8bgSUh+W6l8qkDJbGUFzcKvJINn16S0v9PiQup9ijdgdiUSHvcNy4SgwPvyBdVvdfFtjJu/gLwKdo1IzacpwlzWp4o9+ItAEWaTVz6jL21+P6VTLhtpFqbn+0TPL5N9dVyokjdUq5w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=e/u6/kLK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="e/u6/kLK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5D7FC116C6
	for <ddprobe@lists.linux.dev>; Mon,  9 Feb 2026 22:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770676433;
	bh=gmTEOAL3k7KpHIHYpzIJRwhIf80dBVQyRDWddhflqkU=;
	h=To:Subject:From:Date:From;
	b=e/u6/kLKvsf5L45YUXoLiMMVq8JZo9FU4Lnh7LcDl1eWhlpGrcEFAdw+0I/xW3qcu
	 KiPLWWq814j/cfQynZpqCggcI+PYmL44y5v2fRwvg4lmC8ox53Z8T/WAuEc4pZOwiE
	 T03vosXvCHP54DSzNiTuQJTXZ4nbSMneJox+0XbNcP6n32WXbeYPCYe1PkxR2hdBvH
	 E/XW0zK9H5A5AGORT75mrfalmXM9YaoO4I0SHZGwRFRWizKNrPt4UpJb6ted8oiHec
	 3/f2Xwe4UTafmiIEQgPFXKDCmPnYcB0kjXvr/6wZdsNcNUjx9O/ycVHcyX1+VEzbF7
	 tbczfRwjUFr6g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C532E94617
	for <ddprobe@lists.linux.dev>; Mon,  9 Feb 2026 22:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177067643362.3949.17622621379111677752.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c9a2f49216207f4cf506104e09f67588b52b79e9f87d53f098ccaafda43dd3e4
Date: Mon, 09 Feb 2026 22:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770676433
