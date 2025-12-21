Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2133C27FD71
	for <ddprobe@lists.linux.dev>; Sun, 21 Dec 2025 10:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766313834; cv=none; b=JFYjCaRIkSbRmjgBNPEtH6yNMLbUpmiN9XIxaNeileH+FjCxIS2YA007gc7vD1rk4zOy3lFK+SPjVdA/Hh5Nua7Zr96vmIh8+kLCTr8qD+l1yP3Na6uZ/X2poglBmyxnZIxpyrmFVIxEvwvpe/CNaq2CvsOHlgz8rxLMriTs09o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766313834; c=relaxed/simple;
	bh=T4lLE7a/W9VNFqcQUdC4x6OAEYvuXXVoGiFaNYNViX4=;
	h=To:Subject:From:Message-Id:Date; b=B4ei2Hu2DtfW3zkLov5Dh9Fhu35MpyUegAnwZumrTM41W7FLz9HrtUpv5kITsCOrERXDqD+4CjQc1UNsZgnK1hCXAosfFXwGRITe3tJ0aD7lmTk67NWkZHZAxWZDJT89T9yEzHoYxF9e4VyAHmsR2939YP8YqMs8xu1cxfxItVE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ji/Pz1Tv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ji/Pz1Tv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A05E3C116D0
	for <ddprobe@lists.linux.dev>; Sun, 21 Dec 2025 10:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766313833;
	bh=T4lLE7a/W9VNFqcQUdC4x6OAEYvuXXVoGiFaNYNViX4=;
	h=To:Subject:From:Date:From;
	b=Ji/Pz1TvlmkBY7g4+UGmlO/BpUeH/KUZKf+IIipMOKpqe5iSzia5MVL5nxk1KnBuE
	 gYE9iguM+xMtq3CiAxtoowtAcyOmMwQw4penHgqDP18ogZDlTYEjiWMTv9kQf9Mws9
	 UO7zye1qwC8DC/dRYsx4H3mmA/RXp2zuQhXWa3mvY5H/RKT28kmHKuqCU/FdY7Y9h9
	 YRUcb1o/QXx9JOYgqmlwnLxZbZ0OQyA2CyAdy2U/d9ESdZusAwbnKae+DME/YNbHir
	 mWT2ARDxHy1NPBZww2tCbUiHhJNgDdXUp9WhN7cdzyAtgnrIZkGZsePWPU+vQYGoR8
	 /o3/Sy3iVsTtw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F826D68BD5
	for <ddprobe@lists.linux.dev>; Sun, 21 Dec 2025 10:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176631383357.11554.17374797344770794374.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 00e8ba5710edb0e4368658d5aa304ddd0ebcaed079332e615476d515477794b8
Date: Sun, 21 Dec 2025 10:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766313833
