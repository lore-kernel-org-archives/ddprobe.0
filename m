Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BCFC246785
	for <ddprobe@lists.linux.dev>; Fri,  2 May 2025 12:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746188395; cv=none; b=FMwObpsokgxBGLMDNuOPE5JWgC4I9cG726YCmMkxsDfbdC1myc5DAAjyHMHYGrnzaPsHbirB/I577AbR7vorkzFPSqPEX8prmRS0ZbWziGhyGkzXVbIorAWvLLaVP+gu4/nM92yUlgB/AezS6P1ij3KaNz+YoFeZ1MQQa9yQeJY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746188395; c=relaxed/simple;
	bh=ytdrbJASiRwbz61BfTycQq0mMJBdb00/dJr9Y1t/iHo=;
	h=To:Subject:From:Message-Id:Date; b=kpimqY77GwiGi/BdaMc8TxTrxmkfW96M3sLPIJ1H20sSG7KmC+hJvrge1HDBjPv5iBzyLJh2KEbFNtIazs2r7sEhWKIqrcToIljd0DI8zapBKPu+ZpN70qS9ZPjEph8ZlH6HAfDhmDmdNanCNKSSBkQ+VnXi5AV4pCMHH/nFxdE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=e98wQaeh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="e98wQaeh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A097DC4CEE4
	for <ddprobe@lists.linux.dev>; Fri,  2 May 2025 12:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746188393;
	bh=ytdrbJASiRwbz61BfTycQq0mMJBdb00/dJr9Y1t/iHo=;
	h=To:Subject:From:Date:From;
	b=e98wQaehjLEyeVLhtKbDWTjoQuhN0UNTvdsmt16olh0Iucb6d1RZGS/JrRQLBgIT1
	 ln1zFKmYGOlkSmh688lOjXqyTas9ElrBhto9S2c3+Pe2kVKA3cfsC3ntRvpLLWyECp
	 PTxHv5+JDO42TvgtVni5lAUiHY+gWrvKcOAlw5ylLP9s7wD6+cg01Z0Swvda5mYE8k
	 I/VDLRujuXu4NpHkTrfMDHVWxIBD6DwBbcdFIFoyrVMAk3enlinQ1xP82k4d31Ciq0
	 OCAY55PKYh9ih3QaEDkZpa6/lAY2fD6ltpBrt1bZYtqMKxGjJP+jSCzIWp93k/qvq+
	 ztOIRGN0jkKVg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F8CFC3ABA3
	for <ddprobe@lists.linux.dev>; Fri,  2 May 2025 12:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174618839357.19403.1285294818503546393.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b0096d76f349442d91d3e1f7b196490d2033a2ac71c0fb77417efb9dbd90371d
Date: Fri, 02 May 2025 12:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746188393
