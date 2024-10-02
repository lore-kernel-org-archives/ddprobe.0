Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 366EF25771
	for <ddprobe@lists.linux.dev>; Wed,  2 Oct 2024 13:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727874954; cv=none; b=AZQqNg/XE+GY3tE6E1o9VQTbsWtDuMVTwivnB/aRPu6DisA2PCrIGqGObCUaseYJYI5AZ2pUkpCKTFBuLSeAQ2F2Xxo17UMRqr21x5PLsg8rIz0Me0ORsW6qzYMkaUkgxCM3vJ5AZyjN8aL1auTSEHskhbROU3QDyarXqatm4kg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727874954; c=relaxed/simple;
	bh=WL7PIfCzRLAvUEoyqaP0L/z5PJJEcJNq7tSvAXFAxj8=;
	h=To:Subject:From:Message-Id:Date; b=C81Jere+SZdUik8CdgJsQ8IO8si03Ffd85DumEob8rU8NIJiUceWKLgWjsUK+EuIcLuwuZCU46kovBy9Y1/2gPTfD73Vd32nMhKkF2Sq18bF0B7+2zRknFOVKVn+HoILLeY98m5rZ1ew9q5W4juAT0Wf0l96No7W3xVjDhbMdwM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PhHMK0hc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PhHMK0hc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7C9FC4CEC5
	for <ddprobe@lists.linux.dev>; Wed,  2 Oct 2024 13:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727874953;
	bh=WL7PIfCzRLAvUEoyqaP0L/z5PJJEcJNq7tSvAXFAxj8=;
	h=To:Subject:From:Date:From;
	b=PhHMK0hcyJ5DDYQvWj+szDEbODEkZrDTMRpoRgt4gCdltPBcEr8br4MOyXFhLZRtd
	 2mMSgS339AMLmkQHeLAgwLByma7m0u/Ua+p7w6yDZIdeWQAlajmJ34i2kkS4S7dBcl
	 1ppIvhOB8DEKSwPiOX66OCzR8zY+jQL8iyGyainyiEFq+UJ7VOzIdqV4DpQt7K1DAY
	 o37a8LTnX1DO1TsHXIBDQbPDQ1qXjjNBK2UcnSBrOmejY3sQsrjpNCaXg5S/sL07Sh
	 JQdko9y3GfN6MVmD05anKwYAr+0UC5nKsKzEfrEiHIXQd/ScK1WQeSv+dg49GVK24P
	 hmvxrFCRjarMw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9285ACF6D26
	for <ddprobe@lists.linux.dev>; Wed,  2 Oct 2024 13:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172787495358.17550.11070702290573141172.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bf8ec9c61cd259b125c4a8aef94f6689189ce0bdbc2aa544973e73d5db8e8a10
Date: Wed, 02 Oct 2024 13:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727874953
