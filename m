Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5CBDB1B4156
	for <ddprobe@lists.linux.dev>; Thu, 16 Jul 2026 06:18:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784182714; cv=none; b=YFT1BD7jMelmAxsDDoT/ERWU+61XiIK9fHMx8KHdnTTmAqPKixBoxLkRAW/u1LrRxbZwgX+2ahDw/F7PzulPKXUdHZh0VtcNJlFjHEQ4PbP1F29u7mnWlgwL2F/J92GPBiu/+wAId0VdnqsiM/Pjd3yTU/ZIWqgJZAgWC4kco7Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784182714; c=relaxed/simple;
	bh=+9AMKIJVYenpTRyNNbyPy9i6M1JfAWfjJoZ1T8nG62A=;
	h=To:Subject:From:Message-Id:Date; b=EazGpJFPTAfJ/UDIsgGPYjgmnaEbia2mOcVIwzBEo2/tMiPmyvqDduXn5BCMlxdx+WCYeBFYymuASJh0uAus/BVsP66U4PXo4dGTlAxvL7/0vwvdamsjWgKxlSS7W+aWNXo7Jf0cfafigRuW6LOg94pA9t9j8SlSXs92/uarLK8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MecWKQyh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MecWKQyh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8AF9C19425
	for <ddprobe@lists.linux.dev>; Thu, 16 Jul 2026 06:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784182713;
	bh=+9AMKIJVYenpTRyNNbyPy9i6M1JfAWfjJoZ1T8nG62A=;
	h=To:Subject:From:Date:From;
	b=MecWKQyhsSBeORBNcbjg91n+aUVHjELlc6NyAMpjfTkTjrUcwhv51vMpSVIj9lbd4
	 xaRxcUctwyn1mcuQlj1ytkCmdnBt2QxrSY0QhrsVKoOoe+gKlK0x3gURzoHo+2HCpz
	 NF96mz0ar+UdzXfMJrmMWCVGJoFq2g114dSHsrsJt2xvhPf1I+lSMRYruzBajDJfNz
	 eLv5ZO1o4gplXiXZDxV00e2pULLkCX+TQC4eEhMH5DE5PN3eEWojIQ7AHFarzZ2tjz
	 Mt6JJf2ljjGsJQ7w4knbPU0OQuQ2dHkaPOiwJ6iOfc0XkIjgfBYlopMu7lUFPbgoB4
	 Kh5X7H20J+svg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B41E1C43458
	for <ddprobe@lists.linux.dev>; Thu, 16 Jul 2026 06:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178418271371.335.15825572325621479200.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4f8789fd73c6dd754e74de20c33e522e668ea61870eefa64c73f57edd163a5a4
Date: Thu, 16 Jul 2026 06:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784182713
