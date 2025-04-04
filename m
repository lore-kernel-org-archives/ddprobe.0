Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B8012E62B4
	for <ddprobe@lists.linux.dev>; Fri,  4 Apr 2025 00:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743727794; cv=none; b=lloX6JAeBwK4R6BMiT8qoq/+QvxEWtxVds2HQ4OdfhGuWniHD7FBcxdEWILV5DuY8vVBxxkphH/tbCOmbVfvox2FH9aruML9rWLhAfLIPtBw/RdZ0daNEVj/1ADmuyjwRdVOj5vk4ATPrS/hNMrhhqXkdVXVqtlEfbZ1TC+Vn3o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743727794; c=relaxed/simple;
	bh=liynRvzFCTW+zgwO8iccAu8/clAB7ayZkygYBKcLqaM=;
	h=To:Subject:From:Message-Id:Date; b=aShE/XU3t49XdCjAuHRMZTrYoXDLl6kmADf9MTVH7HtSDxXvtMjERcCyKwJSNu0RzdFgOD2H0Gnyy+EjJXvma2K3hNcS5hFtF/NpTlcoR562uWc+aUTFm5pe31m8TN/wcnEblns+sZXoaDhxP2KG1lLk+L7GumGcsdEGDOvOwQ0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=V6/5NqJ9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="V6/5NqJ9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0534C4CEE3
	for <ddprobe@lists.linux.dev>; Fri,  4 Apr 2025 00:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743727793;
	bh=liynRvzFCTW+zgwO8iccAu8/clAB7ayZkygYBKcLqaM=;
	h=To:Subject:From:Date:From;
	b=V6/5NqJ9h57nOKXyvVkLScpIXMeCmi54X3OgNpzVoqJmS+TagChjaNzFSdxicIOab
	 oZmzYfqSIzeY3SicPCUk9Z8ny28PAYKHjWVOKvDG2iuI8KKn/7s/Yz+cFnIOy74s+7
	 8jYJhXClCnwGY7yH9qoQe2wKKO4sPSgZun99w4w6eyx2r4rw1EdqgzR4m/4qa9IOo8
	 hMxImzv/0YufPibxWZVhPGusLnaWJkF1Rgchi1J96M+H+U4vRAisbW7Goovhx+fm1K
	 Wg3GoOsa38yR5G46sXEFXLh51F84iUc5MCuW84g17th1tERj8DyyGWSXOUa1EBUkEu
	 +AmI4yubl+Wcg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99E0DC3600C
	for <ddprobe@lists.linux.dev>; Fri,  4 Apr 2025 00:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174372779359.9287.445059283492974381.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 58245991a5204de799b8cbe678d6b4d2d74f9b9e638825329589989f365ec8cc
Date: Fri, 04 Apr 2025 00:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743727793
