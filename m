Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 458961DD877
	for <ddprobe@lists.linux.dev>; Thu, 27 Mar 2025 21:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743109794; cv=none; b=NQke1SPwN+MxwfiPNtMum57Mc/vF8PiPO4qxtLK28WBvDinavxEaA3IfZc1wVRPEYOhSoNFTSADl4LDQcU5cNgF037a30xYj2gOTh0w522bbIdJf0lXZdtQVW1+KGhmqG6ghMzGJ9iOCMvuWmb+UCAQGtjrOLvNKelZ7Ylz46F4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743109794; c=relaxed/simple;
	bh=pVSR7dfv6YhqYoESrg6C5WaudqwA92DgoW6vnQZKDBM=;
	h=To:Subject:From:Message-Id:Date; b=kmhzE77gp7y2mXWwN9lGo/oLwLOE896fBbMvUzBmS+GxYjdOP/1SpHAGpY/bYew/SzI0xOTzzVgvpBlvhbyg+Vab2MdBOG5rZJdNSe3kqDViN+KqFSdtmaWJGCwql4Ar8+xZFOByY6sNm4TNOJ3BI4rbvafUszh5K8gtjPfmle0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uZ9ksabP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uZ9ksabP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0D1EC4CEE8
	for <ddprobe@lists.linux.dev>; Thu, 27 Mar 2025 21:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743109793;
	bh=pVSR7dfv6YhqYoESrg6C5WaudqwA92DgoW6vnQZKDBM=;
	h=To:Subject:From:Date:From;
	b=uZ9ksabPCBcvvsbAcmMc8cBinJ8SiV23SWkFg1qhrGxMayg8l2N5c56MIM5C5EpsY
	 6E2C3qaDEN+8+2sd6OSM5KJcfI2yObSS5j0fUEoGffJK5iCfXgLITXqpwg6Ab3ieJT
	 K8ojsgddwbpzBVwoU5s4VmR9qU9iOUfWeRyMjOdZPFqY0JzjpsMchwBZphWUAV0oPW
	 UcNgZhio3GNP97wwMrZQtLgpib8Q6fQTnGhKWjUBKmMwSeXFdrqRsQGyG4g7V1fZHa
	 uvghYBu6qzwbacQ8gNvGEW2GtfhXs9w52qebVjm0NjP1nlaeuG/S1VnQ5NXaZwWSXP
	 pR5p/Df7hFo7g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEBB3C3600B
	for <ddprobe@lists.linux.dev>; Thu, 27 Mar 2025 21:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174310979370.9070.6052482719549998801.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 895523528793c0153157dfead065e84b03636aae1569d08f4bdaf839a1403387
Date: Thu, 27 Mar 2025 21:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743109793
