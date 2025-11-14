Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3593E1A2392
	for <ddprobe@lists.linux.dev>; Fri, 14 Nov 2025 00:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763079594; cv=none; b=nBjeGhUVHEsGcXFhNW69TIcnHwV944sijeB0ymES0JytQOYxRjnhDBC6FoXq6h7/50MWMV2EUKeBlUav5uHjICxRrd/rHWOdFavxlqZzd1eJbgCnES6hnGSjhQNPq2ciNlXij0cXJK9nTZeAxbcG3cFq8HqCnsaF/Fy9fTsTQls=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763079594; c=relaxed/simple;
	bh=eKaUoSiPlFDILboGoNrKDF67p/XbgNlLXIcGFMI/3Lw=;
	h=To:Subject:From:Message-Id:Date; b=VxnMrT9C7HugzIKFWlZQMA8O0IkSkhg1JuiWoSfahY3fw19d1wF9aEhdCpo1nksqyww/QxwXQYiyl4PkftdtbONZD4/ERycJP9igph3cP8P62z5rNb0QZN3IY7EcnHMfheUMb4kBf2GyEruaW8SAoDkPjnkdKIFDYG4TIxrgXk8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pMn/Ayak; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pMn/Ayak"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0ABBC4CEF5
	for <ddprobe@lists.linux.dev>; Fri, 14 Nov 2025 00:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763079593;
	bh=eKaUoSiPlFDILboGoNrKDF67p/XbgNlLXIcGFMI/3Lw=;
	h=To:Subject:From:Date:From;
	b=pMn/AyakTqKw0LUB8qQpycVpBTo/9AVzd+ufFuypeeTJA5VoLo6g7mZ7jNMa+rtOl
	 mbeMEeTLhkCsdDUcLht5ZVxq3D8X6U5aLCsBDzWKjmVhAbAYwEKnq2lCN8oti0va6x
	 CIVZ9rfi0G0QINfG2kf3Dn5JcDRD0dibjeJrvvoEGDBCOdqF5yDqF3psK0SEWEHNFe
	 SMo4a8YOpMrkS64BrHuODNvuHRd1cuPMqGB6P/QDE2sWli1XHrrOnl/HsXQR1GhLZe
	 F8m6cUZTWeKNacOaz9XXku79iPnwwxcJuNsuXpqto85MBQFfiVcZi+VENVNABONC9g
	 7hETqmIUMyHxw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A18D7CD98C3
	for <ddprobe@lists.linux.dev>; Fri, 14 Nov 2025 00:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176307959365.16673.11338811095499279244.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 17230fac87468140560489f99cf0afefa82c66a63092be9377e67b1810c51952
Date: Fri, 14 Nov 2025 00:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763079593
