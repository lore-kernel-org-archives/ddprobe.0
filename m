Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 54B0643F4B5
	for <ddprobe@lists.linux.dev>; Mon, 31 Aug 2026 17:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788198034; cv=none; b=H+unUIllgTyr4N1fRJM6wZ76BapJL9SpitVwLUjVEJUzpy86+eUtMM51YUhh26sL3GjOsgtqGic2dERr+8vO3eBLoh/RPTXbcPiEdVN1Gwl6bvP8stFC/aBiieM6kOMx8vRIOy4xVQmYApb3DCi5GC9g9pl+IdKh1BDbo5aS+HU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788198034; c=relaxed/simple;
	bh=3MUYdcAJSMBkEgHqgACFJp8lfEWeBiKasSyCpAZxOiA=;
	h=To:Subject:From:Message-Id:Date; b=TBQYi5IRGnQvR6tXwAD4PJ+8PfsBte44jrJ7YVNTq3BU/WC7+WfueYya5GODH85514oPhHTry9gnCYeuD2n1eMPqzYtnzn3L0ynJrJ4D7j/INlu1f0ZLcAgl/de69Uk06rFZH+/074i95bYGucgYuW39TybzJjIdF6hb3aWcsAs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=C/xVHCNF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="C/xVHCNF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4A10C2BCB8
	for <ddprobe@lists.linux.dev>; Mon, 31 Aug 2026 17:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788198033;
	bh=3MUYdcAJSMBkEgHqgACFJp8lfEWeBiKasSyCpAZxOiA=;
	h=To:Subject:From:Date:From;
	b=C/xVHCNFJqlQ8JYQYjyX+M2RMuTefYIcPvXCHiLL94FTLETrF6yetccUW6cZKDxa8
	 nzPvijLmMiTH4wwhVK2aQ/pAbKSb2vkGUUM57o1mAGmOrLr8s/hYQO6JWS7eTQelH3
	 1XBRmml66qrd8OdUw4DEsd9j+SfSUdJiq0Kth8vRq/Rpbvq5OM1olNWXm+c2xXDcHo
	 7KIVGfyVE9i0eGESCuS/cMTUcuWu2CUx/kKbueRoswUQxYEx/UgPVOTbvFMcJQ+d2k
	 9AqXr5nvxI1DJ+kI8S1bVRknshJ2ymuf0R+5OhpSArAWU5mt0yWMhqbGkadq6kHfka
	 tt9El+sMrd+0g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA8B5C61DD3
	for <ddprobe@lists.linux.dev>; Mon, 31 Aug 2026 17:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178819803368.28697.2968052048406236535.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ccd9d9c012f62ece5ab8dbfcf4a81ae27c47def228059e484294d06e2d0f76be
Date: Mon, 31 Aug 2026 17:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788198033
