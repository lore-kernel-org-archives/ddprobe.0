Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 327492E8DEA
	for <ddprobe@lists.linux.dev>; Thu,  2 Jul 2026 12:38:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782995914; cv=none; b=rRpkAwhQWkEOFlZ/VuG/WQxfR2K8KhjfYnGOzrNfQYWji7aJVUyMiefVmSzUCP6NqVVDbGh0q7uf0feHmG20kP/LNdrGSOqtb3q9XTHR5vtx8oZzptCqsTL7ZRvpY2IOrkjXpSsp5vqQtCJ7SFP7VjcGZy1MH98O4dWJktgB3JI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782995914; c=relaxed/simple;
	bh=FQ9D2pFf4vf2/wJ0qvaSfIFjsBc8xT3RAMOzPhX6ETo=;
	h=To:Subject:From:Message-Id:Date; b=KvLaGslo+V7j4uStDcNT2X1wycYvsCQ+5yDDZ2v1h5hDZWkuvaCVrd6qTp52ED18geOyPbvnD9HfBTknKD7DgG1Fm9N3YBWZHaGySLqmeeERulsOoGbiqCa0djRFbY6b9akQCWjFn9uZcjRt1dsWhtqj/5uknljWWvOsarnt+jk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GYjnO+fE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GYjnO+fE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA486C19425
	for <ddprobe@lists.linux.dev>; Thu,  2 Jul 2026 12:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782995913;
	bh=FQ9D2pFf4vf2/wJ0qvaSfIFjsBc8xT3RAMOzPhX6ETo=;
	h=To:Subject:From:Date:From;
	b=GYjnO+fETsyc+jAgO3q7H0z5jMC6UyRJP9Hw/ndBT2bCYIyGlVxBes1G1RK3i4y2K
	 F3iWmMHtt+pCofzPhymgr14TBYr2x2UxaXNkt3TstBcqYveF+RZPBvOKUVzGVFXqa6
	 GtmbwyiyoqsVSlVqMFCpQyMtJDnYtI/lxYweFPVUH4Ejnj9ZtuB4fXL2Dafgh/mzoM
	 WuRZex4VH4B3DvjZED4VF9vJ/GS4YzG+NceD6lTLdhE5IuRzqN9mjbaH15p31QPGdL
	 F8CW3L4jZcJmAjC8R7echIfHqhAOp4f297ekMKc3Kak3O+Fjjjkc+KEiZVGCUGa5yK
	 wABR5URpw/tkQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9B61C43327
	for <ddprobe@lists.linux.dev>; Thu,  2 Jul 2026 12:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178299591368.25677.5658863033903585691.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4908f3e6f8dffa70dbea1872cbed0987a4f9734e575fc8228e09fad130b596ac
Date: Thu, 02 Jul 2026 12:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782995913
