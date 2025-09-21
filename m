Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 149E01DFF7
	for <ddprobe@lists.linux.dev>; Sun, 21 Sep 2025 11:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758454796; cv=none; b=OPJDVm+j9xSTiewwj9ZtFtWRIzetVD5mU8ospBU6qvanZ7RKPsot+ZY7WNJGH/4QdJzZXtNAC3AqNOE0ekT+oaOT8ORReAElPxjiG1rkCbdj8aWIELAZe3jFJza3FmjnBwNbfCAbmrpH5M7vPNJJDS0jaG1p1+fbQ/EKMDcTEmg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758454796; c=relaxed/simple;
	bh=dCotCt9pfFLCMdQKkNBd0o7QxkVfo1/wjwUirKj2RU4=;
	h=To:Subject:From:Message-Id:Date; b=R6vqksvQRZ/iQ9kdUa6wEHlAGf1Rkm/dCToNxX5UIS3kiTKgf1pGAZ3N6JAgjXFAsy2/zEmrao9LqpXyVqGNHucJ1doLILMDtw9zct+5f4o4wXb6aJ70vWQwBKESm1enWEbBmKUl38cZ60ucsjEy6/WBhUn8oP784bYJZKkPzT8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=op37IXCp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="op37IXCp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A506DC4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 21 Sep 2025 11:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758454793;
	bh=dCotCt9pfFLCMdQKkNBd0o7QxkVfo1/wjwUirKj2RU4=;
	h=To:Subject:From:Date:From;
	b=op37IXCpjPbyNye/yj3AAr1iflWRSkdU8feWWbEvVFCHNdN7inNw5X9Cn19ssONAj
	 5MhpOzRpRb2inaSkvjtIjB8lELSwbE7053CrPURpuXjI+qa2Nm74o0ysEvStcyKr6x
	 CR76293ViXZSnYFmfmGs6pbpwhlue5FynM6JJySVV7QpRgc+fDwDWj+H6zbiV2hX3h
	 SRlaVG1CpUgWnWgZ4/YuWBNsvtsqCqSvK/dQm7y1ANs2Rp7RHsMJCB7yKnfGbYBNUj
	 VEHltmoGyTEUtjtAXIQljis+p4kFh/0G84kAlBIbARUi/NqVI9cL8+waexJRbSnTAv
	 Y4hXng7itMznA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 919F2CAC5A7
	for <ddprobe@lists.linux.dev>; Sun, 21 Sep 2025 11:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175845479357.11730.15307913515529725208.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f365f109bb312cb3676665315bdbe95e47e886a51452742fe8ff41c3042ad147
Date: Sun, 21 Sep 2025 11:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758454793
