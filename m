Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23DB529BD87
	for <ddprobe@lists.linux.dev>; Thu, 27 Nov 2025 23:22:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764285774; cv=none; b=tYhoAditBrVM9q98d4+CXFu+QlMfPtAS8TNwhuPYfiDYL1fCIuDL47IxBAV/G+teT0tsgy+M6iCZx93lp02gOAf28O4HmzUYOE8irwrSSticP4hcQfsWCJ50WxNPTzmfv6Z7xKTwUO8WTZfqS/iTD+zFG5uf8I0PCiG8nevat9A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764285774; c=relaxed/simple;
	bh=Qu3FszOYu9toNPr+SoyDhfhO/K7pdR/4rUIWai47cbw=;
	h=To:Subject:From:Message-Id:Date; b=F87FZMxQCVVhorZC5MX3a8BJBradd3AGiD/SUqrer6mctjGGtr4UGCh+zGv88d11XAuiugGFTL5JCHgK9ySBByZpxELAfCj5imhxyfX8G0I9n1NmGCUgR/BTrnvHTTGJRGmDDiLsvIdzOKx4T4bj+uIsKfb+pBy39eyuuVdFYxI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VZM5TpdV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VZM5TpdV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA6C7C4CEF8
	for <ddprobe@lists.linux.dev>; Thu, 27 Nov 2025 23:22:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764285773;
	bh=Qu3FszOYu9toNPr+SoyDhfhO/K7pdR/4rUIWai47cbw=;
	h=To:Subject:From:Date:From;
	b=VZM5TpdVK/QLZ1e9oiEgZL1cCIJR+DbRnOq8uZpwWzWEp0QZvJ3I8aRB0Ug8vVYQe
	 kYkctCTglPMJQTrJq1yltDRSQh8tWZjW7iZaRsMdpjFHK3luz7ByxbLM44VhCbQM37
	 Af84PowD2vNHb+aLzRvKkhFH901kiJ7LYYLXJ37h/RMea6yGXW3fUiiSfH4MqbIaUX
	 mq8V5FhygSOlA1Ka0linsKYZhzrpDpcfZRg3qqo2LI5aLlib9lrmZQmkXKz0Tw5zYP
	 RMIsEcFCclELs0Fhsz2VeL3OtxZkNxOv0/ltWxilEEa+VDWzffb9ljrNCs9ITNG7LX
	 FkOJVcn1slHsQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94675CFD2F6
	for <ddprobe@lists.linux.dev>; Thu, 27 Nov 2025 23:22:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176428577358.21409.4426390459385161516.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 404ed5e8c7b16378c754dbfc84a94a1a706384b0acde3e7249c723e7b1becd8a
Date: Thu, 27 Nov 2025 23:22:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764285773
