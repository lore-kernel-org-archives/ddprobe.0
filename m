Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23CF5249EB
	for <ddprobe@lists.linux.dev>; Sat,  8 Nov 2025 02:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762569594; cv=none; b=bgARQia+YtglrvsjpRZbjtEhUEdVLNqIk8d6bSSm2P/6AkcwdNsvHJCV4SegXIT0BHUxxRjxLTl+TbohG71Tl5DRSsRsmXmANG6KplCkQrQNmIk+8C5ZLp3n+6MooMud49AKuljbqUC9Ft0Lg5ENPOEIBreqAvGgLJMTNksJh08=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762569594; c=relaxed/simple;
	bh=OqcIvJ4CSkos+Y9KEZwEdN93904je6iPXOpevEzbLZY=;
	h=To:Subject:From:Message-Id:Date; b=B+GACfzZOooTLamU9Pbe1ZnzFcdlzK568Ggi0JPkT6xib467Z0sP6QBPtlEi4GcmWube197TmFTvaQIRa1Xfd07KB+2jArHlCrLR+nHNFPeNGHYYgt1epdMlPjjvZF7pn5ce22scjA94HE5ibk/7aK9H7kU6kT8fjj1IEz+mzjs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=W0Wh/fVd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="W0Wh/fVd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A51E8C4CEF7
	for <ddprobe@lists.linux.dev>; Sat,  8 Nov 2025 02:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762569593;
	bh=OqcIvJ4CSkos+Y9KEZwEdN93904je6iPXOpevEzbLZY=;
	h=To:Subject:From:Date:From;
	b=W0Wh/fVdoFBa9RxvNnBtrCtqLOEHCyWuXRnw7t/EBo0z0yD1xqeFJL1itn8GjRvaI
	 sl4mE3J5YwwRVPSAlERtQnMIa8y+06hJoJ52NDoZvLf88WgDnYiOjS6A0lEPYoLd6h
	 TK76wn65fzzk1zgJP6LplsfAvRu+VUCbP3KDnrgeL6ZQzTgu7zUHpBxUxn+AJxr3jY
	 9JVmvLWnmaoJwDXR2kaYUhbXkFhbNpFs2RfHvaIAUQf8LP5NUXMjW4n9Vtiht8bwMv
	 Fmh3rInQQHlxwZbVdW2p56tJdiWMJN+C2+qekWB/tRjwlhWEZp1xtzDjf3aAZbCmM9
	 Avl1z7x5Bi7/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94C0ECCF9F8
	for <ddprobe@lists.linux.dev>; Sat,  8 Nov 2025 02:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176256959358.9168.10181229693989408809.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 324b6d1d699a6582f5e4ae368c54ed689ee0a344f0cf40023e8c63d3d460c814
Date: Sat, 08 Nov 2025 02:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762569593
