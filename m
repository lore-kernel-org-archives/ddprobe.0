Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0DF25288D9
	for <ddprobe@lists.linux.dev>; Sun,  4 Feb 2024 21:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707082097; cv=none; b=WkAa1HsuiXrjGehnK9PUNsIySVzz3In9t0SEhRrEc92gthrQ8OFANmul4i9DJ5/dTXowm1ETDf8AeR5VAr5sDJpVb7E2UgjJBX4GRYNVwNZ6bIHah8F6cJykp1EnL96K+E7MalyiXQAuL5d0JmlXpQki9nysDiPFxma/Gw9CNLk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707082097; c=relaxed/simple;
	bh=iHbxpqr0oRzhn7yhNpHmu4Mjw5iVKIR9Kb+T7txmbac=;
	h=To:Subject:From:Message-Id:Date; b=aFnre6Mma4w9HSysyjhZTGjIrfbrVp8dd31wacsfIwgIIjWrYPA0nbVhUEWGcPyGipKZR4bYoxukF3vt64MABvf230OtDst2XJpGDf979vuGzTKbNvWcVozyI+9JQ/6PvKFszUmAoZbwFBA8sVCQpauYhAeZKHmXWd7Rvq4Pwpk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ITTGXfYw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ITTGXfYw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 85816C433F1
	for <ddprobe@lists.linux.dev>; Sun,  4 Feb 2024 21:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1707082096;
	bh=iHbxpqr0oRzhn7yhNpHmu4Mjw5iVKIR9Kb+T7txmbac=;
	h=To:Subject:From:Date:From;
	b=ITTGXfYwTOG/VlD0v7r+JIJ+CyeanFw0a2nZYfCJvF7A6dDOa+O2Wq1AltyKSKpcC
	 MHyMgSygsiE7lA2hrd9SYv0NSNF0f3/0+UZt+conNPkrRNdAaD4My1r0a8lwawxF/J
	 vzvti+pjn2quT5osF7DipwjNDcI90xMa14Nobj9D0lk6r8SegCqJT9U/ccWhjT3VLY
	 iapBPACw+D1L9x7Zg00IFHbCrN8Up4L5KMEj0M4f3yQoZ8Oa1GxrZOjFqKdB/z+m+i
	 jexlBtbEKEQs98yc0nw7y4tLgkPvArOFrm60IxI6TFU7QrfqGClYIothSxvujqJPmY
	 YGzsR/vzgfRUg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 65C89C48286
	for <ddprobe@lists.linux.dev>; Sun,  4 Feb 2024 21:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170708209640.18186.7067943686242235831.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e197dd5f2e0166e818474a7540dc1a970ca479eb3580f9cfa244877e8b97b9f6
Date: Sun, 04 Feb 2024 21:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1707082096
