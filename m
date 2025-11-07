Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 550CA280033
	for <ddprobe@lists.linux.dev>; Fri,  7 Nov 2025 19:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762542594; cv=none; b=c2BZ+KbhYZXAOtEHEOOfmk2beCufpfabFuMJWuSnhLQRfze5s45T2TRIZqvjZ70bPR+KjaBfiJ51saRWRTkOExlvPUpnuGLkeEeR4sKNpA4hdYyv/nqxV9qAy0AnBF5AAixM26wzXGDWAkbKjScp3CziI1vqaSGI78eXak7gb9I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762542594; c=relaxed/simple;
	bh=lh1HttlC7kOqwQpLegx81qGqVbW8T0TXIgs/yQe6950=;
	h=To:Subject:From:Message-Id:Date; b=jCMZw9oAtVP0jDUw7cCJHzSKQd3qNM52o4CHhwfwh7jBulMpLnOJjWgW4yi8ni8I80ZaU6IbesZqYQDVc4wwN/CfS5nL+xqEdfp+C1PO6HfdldSuqLtRLjXW0Nsvk5fTRLesEcgydf/nOJOR6oERfvlLFHdgrhmYnZagIcB6r5I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DIpW9HmC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DIpW9HmC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A15B8C19424
	for <ddprobe@lists.linux.dev>; Fri,  7 Nov 2025 19:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762542593;
	bh=lh1HttlC7kOqwQpLegx81qGqVbW8T0TXIgs/yQe6950=;
	h=To:Subject:From:Date:From;
	b=DIpW9HmCbs/RFhFlADA75rIhiUvae5RikBzfoApvOiYcANySVs4aCl7mTrJJwX4DQ
	 0CUeBcwsyWWyyZzN/YyvSQcE/8x3BdJukXmeb19kZazXajaybSbK2cAXwQ2bx0pNWb
	 dmgjY/ajFYxLnSTQJYA4mf4K00TteDfuKQqCf/IrAoSASjNL8/n8rK6azUuiYK6vBi
	 AZqtBwBQmh8jVhhEGEcb9iycUBovCGN0uK9N0qLR01semBE4y3QsifMCAlW14q6V+m
	 XOVPmKVn5pPRfGp9DE3GHOYRkgR6qVqnku7BifBhxeTmU81ZgEsz94BbcK7vdegXVf
	 meSAmypk/H6Lw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93A95CCF9F8
	for <ddprobe@lists.linux.dev>; Fri,  7 Nov 2025 19:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176254259359.4850.17444101058784694216.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cad92e24a48e96e702fab4ca55e788dcd1602102dfe2e2182a42a927f40a5a01
Date: Fri, 07 Nov 2025 19:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762542593
