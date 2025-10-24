Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CFA90296BBB
	for <ddprobe@lists.linux.dev>; Fri, 24 Oct 2025 15:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761321593; cv=none; b=JIMqcbCSAHjhcxabHvGPYmbwx9z9fDEGDZl7TnqUua/er+AtDuT3m02nfVGqYqkRRrVcsBGFkoOdy7Fwr2mewmOvOEx3fK+U+B0OIxhPKEeL5jmccXSz/wzAddInKgAyD6IBqFiOyUUJPYO+wYR+RfUoGGAJ+oLiJbQJmGP7Q6I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761321593; c=relaxed/simple;
	bh=ZOj8ctW7u5KkZnkkPBdNtYZ3T/dcCLnjbdS55DnTP+w=;
	h=To:Subject:From:Message-Id:Date; b=uFRVpMMEf4uhMPe5vsw1O+Tb+9yODNRaXdTDReWvf/00loawNwNxVjeUxJUhIT5VEoo/XFEJT0ToYU9nZrtYJr42tSKF9Q28PkGzUcDLi+G4QL8NCDFalYpDIW8XazR3fDCPrP3XQXQj0sdu8rKwWH6ECeOWUpkQHu2z9VusaWU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=f8SS3eWS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="f8SS3eWS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1088C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 24 Oct 2025 15:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761321593;
	bh=ZOj8ctW7u5KkZnkkPBdNtYZ3T/dcCLnjbdS55DnTP+w=;
	h=To:Subject:From:Date:From;
	b=f8SS3eWSyd3gVAUQCDujR93hGwNiHqPNinitQWklt8+JzyPtNS+8Nb2lOseFiAxRx
	 DTnuLY0RDxAYBM62OX85Yffd13fgHHNR+/FIXkAo42PbBvikdAW7MNKj4GQyF1qDGS
	 ST/rcRp1xFjdPdpQw+H9r32s1C8YLAzAze3vFQFe8IzIkZQw8L4x+jwFbJq6/zffp7
	 w/aCgc5N1B1UbeG9ZcOWpwl/cU/7ceeo5FIUmK+iI+3S8U28Qpcph9XFpYl49DPXiT
	 9cX3jREfltxcwtqN8IytCIR9XOJJ+HtMVWSfScVMgAgF2toOlpCWngEGg73GVLSQFr
	 MwM5UOj2nerzA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F363CCF9E0
	for <ddprobe@lists.linux.dev>; Fri, 24 Oct 2025 15:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176132159357.19336.6302628718750719615.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 96b843922037c6ab9b1ca2eb1e21f62ae26f3eea2d8404c2b4bf3eeae0611d18
Date: Fri, 24 Oct 2025 15:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761321593
