Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 04B0D1DEFF5
	for <ddprobe@lists.linux.dev>; Mon, 22 Dec 2025 20:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766433834; cv=none; b=pfgkx0TSTn0M0VWbiEzmQJ3f+iba9xdjBaorXuUYhWnyUXRVf3UdX3+uBmdkPs/HuTdzVdXbFR5tf7HIpsq/DT7EQKueCDtNgluRACOdf3s4xuncRzNjRRMXp+lvQn4KkqmGUc86F26W6Hyn5xJbGq/zCNMFvxSPvTEvdk5++Rs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766433834; c=relaxed/simple;
	bh=9luSKk/ABVGSAPRkzIsWlJMp0vz3M3b6Un4bCypPqXc=;
	h=To:Subject:From:Message-Id:Date; b=BjwXs2SBCazUeFlBvJhDJmsY9QtVxz3gB1LViHrRhXphOHf9Q9i3RbEJuk7OVrGbpD5D/EH3jl1ZDMfsvm/kNyDVp/nHWHl1U4p6liVk1FNsF7SJL3cMSW110h7D0vd2d/eob+CS1BZ2wBlwGBW/FswShIHgD3gSVbnzLIsLR8c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nXpI1Rg/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nXpI1Rg/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2C46C4CEF1
	for <ddprobe@lists.linux.dev>; Mon, 22 Dec 2025 20:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766433833;
	bh=9luSKk/ABVGSAPRkzIsWlJMp0vz3M3b6Un4bCypPqXc=;
	h=To:Subject:From:Date:From;
	b=nXpI1Rg/n/LMwNZS/rt/JgbL4l9sEdJkLpQ5BJXOmolqgsBpR9P7mg3A7Br20jU8X
	 aiuV8tFbRy/FNOLFCMBbuh9Sw6OuLlKEWPOQlrmaStmLKA3FUIWuN5R2UXkz6pZ86d
	 P669xZZqP4JP+rUoyLYoXd5Tx7gXZJfxK4DAbOx8NnMBtstdAHRYEprKC+EsUgtrBy
	 gbHt5w9Hb/6OrF+4Swuvg0UEtYpcehXMl4qR4DBhxKehJbtgqqH8m7WCZiW7lay0Uw
	 UbtIGCKqEzxXHs9eSUQb9Cdfag3yl1dHc+w61lkINMDMf/5Ufy+lokHQybLelxORQh
	 o2coaFbtbqkTA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91227E69160
	for <ddprobe@lists.linux.dev>; Mon, 22 Dec 2025 20:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176643383358.4409.14702540543779893868.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fb2156b14c0f0dc911c1a637668e206d6a38c5166b4fc437cfd0572c19895154
Date: Mon, 22 Dec 2025 20:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766433833
