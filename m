Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F62A1F130D
	for <ddprobe@lists.linux.dev>; Fri,  6 Dec 2024 10:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733481954; cv=none; b=TU29m2TSjsT09Id7sMg+YHfRVo0Ew9oqfCGCOAwlUvNMXUS0j6rB58mMF9KGadecpXccXN0tO1OixFcwPqi05qMOBCwPnuSi/z57E5EZicCmv2AmIHUsXxE/jos+4hiDyJzWjJeEH8O9ThogB+HXRgV1Q0+Ogf+CKclw3gpo06Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733481954; c=relaxed/simple;
	bh=HaXiov66m43WMihV1O3nkT71l45B9+OV8MB9tRSE2S0=;
	h=To:Subject:From:Message-Id:Date; b=BStw7sG8NvzLtHYScmR9FjNc7Y5YAL5Bo5/fXsG0GHvyQm+nIjYFA8hqpIctWtMRf04RQflXD9i1SFQuZBEOS9AJNY+Vp3762Rm/xYVBr0mn1b2SLx9ev9fJMnkuZAwMnOQV5NjSLPZPyAEAVEa9aDjImTWHndJy6f7FsCmhFfI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PPpxXohM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PPpxXohM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A89CAC4CED1
	for <ddprobe@lists.linux.dev>; Fri,  6 Dec 2024 10:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733481953;
	bh=HaXiov66m43WMihV1O3nkT71l45B9+OV8MB9tRSE2S0=;
	h=To:Subject:From:Date:From;
	b=PPpxXohMMEgjaKwbUH3Vnhe7Db5FURZdibFhIQ+iTBZFKr729xRgFbBa3A6BcZPj9
	 R8a8GH+3G0VDT+8yz0utfmhXxhdUIF57s8oUKvy7c2HeCg6zXxNv1AEaAD3YhDmQo2
	 gZ+bKbDVA4vNIalXYBQj/yLS3VgdCaxIa0ZZt6qglazaV1u3KWocqLpgCqwrhgSZ63
	 7J/6Q7PRyxItFZ1z8Z9Xc2MRsEx9fzwlUpMQ8HB6cdNhFk9X2F6gEog0C0v7MNXXzM
	 jDZDH8rLEzIswe0b3G/OLs/xmPVNDvvtmhUWgaGNBqQp8oXXPZUOGhA56G9t3z8pDa
	 O4KHVJPCvW/2Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9489EE77173
	for <ddprobe@lists.linux.dev>; Fri,  6 Dec 2024 10:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173348195360.25536.6956750616339485407.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 50fe3f795301c5d1f7998383a5e179c4b5c6964b9d754c2352f4e224779fdc30
Date: Fri, 06 Dec 2024 10:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733481953
