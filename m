Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 01E451C29C
	for <ddprobe@lists.linux.dev>; Sat, 16 Mar 2024 21:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710626297; cv=none; b=s26ep5EFfNQmp+g3LKNb5H7PcWZoZn1ya2Sew875gk2B7WdKExKaK5nBd3yEppCzY/06oZgFgPXmu1Vhk6a7kRtWXFPzY8ZNtYmUqL0KaTL3UF2Dz8+Imi0zbE7gQdSCvF7392iVdHCRfMTvcSq/WNtRDgax08TGxO5BALdDyi4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710626297; c=relaxed/simple;
	bh=lmqfeu4Bv1KP00ORwGc1ARJC/8+oKpJ9k2B4lZM00Rs=;
	h=To:Subject:From:Message-Id:Date; b=s2bDfCbPpI7pc0eTDJYJO4X4JKMDwzru/m+14eCdiKtLN/Hs15MwfDT5dE1O/zeJCtKnnpohsVHltspCKTHMksfygiQdmsf86zXA0xCJDxHTUDvFwf/KMXddBo/RYHwr6l+YNKdWp6tXIsici4g1cS2s84dxkyoEuQJcUEZV4mM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PT7FOC/l; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PT7FOC/l"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 71648C433C7
	for <ddprobe@lists.linux.dev>; Sat, 16 Mar 2024 21:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1710626296;
	bh=lmqfeu4Bv1KP00ORwGc1ARJC/8+oKpJ9k2B4lZM00Rs=;
	h=To:Subject:From:Date:From;
	b=PT7FOC/lIt7TlUrACguCbnyprYHWkIvKieb0m2KRCnUqW7xTv8uDUQkJAyUbd1gcM
	 KGx9VS6MySpNFRbzvGtzzmCBNzNtYFg9XMyNCnCk7k9CFYnvrbnHz/elpGkgad/t3X
	 XW3TfPUe5qy3VaQO3RrHaKCsnK2pX2YwUj+VCmqVl+X1ZUkC/zWQo4Bgjy0BzyFMjO
	 eVSi6DpH2yuoRa1KyexIaMwYVxX7BiQSWMg1rA0KnBdvcRCuRbao/Kr70Z0ybeDzrP
	 L/S8qKNS3tQeK/Bi/qAw1gkmRsKMD84Wo3uuRclGniZ2icnzUhs+vNGi4wx4aCEjbS
	 8UBPjWgWQGewQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 60D97C54E60
	for <ddprobe@lists.linux.dev>; Sat, 16 Mar 2024 21:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171062629636.22188.12420209309123657506.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 545d28543f5155d35ad953af2a69de8e295aae8db4b7feb26814645abe9d602a
Date: Sat, 16 Mar 2024 21:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1710626296
