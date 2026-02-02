Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 103071B78F3
	for <ddprobe@lists.linux.dev>; Mon,  2 Feb 2026 07:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770018834; cv=none; b=pxRTUpQoROJhaS8hWPEvEVxCgDR3DPtdCRDr8x0xBHo9MSa0YPTI9umGTyakG22gRLhcT0nGwudRGNuR/+FLwocq3zzEzueGHSHWOjZJ75J8iihvyHTQzXR3a+MM87KxVwfH51cDIVeFY8mxu5DaSZrX4HCuwnyOLhGCnMlmGLA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770018834; c=relaxed/simple;
	bh=NaSA4ScKVYqp+DC9jyyKN9avEV/mOI5ZuxkCIUpNuEM=;
	h=To:Subject:From:Message-Id:Date; b=cYYpqHryc8Nxld5g/NkZIlrz/prGzKUwa6H1W1rP10nvLzP2ihzubajH95X746GZD5iq7Aw8Xv/PQFgRVmvp5CgSxBm3qQNrvIKO2/aYeZfXkqNxpcYQwNSq0qZ7vGeZroLDW+XGy9nTgqLGqM+rigsWHeFsTPBaus4vMfMCnng=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Z6xjS+XG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Z6xjS+XG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7AD5C116D0
	for <ddprobe@lists.linux.dev>; Mon,  2 Feb 2026 07:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770018833;
	bh=NaSA4ScKVYqp+DC9jyyKN9avEV/mOI5ZuxkCIUpNuEM=;
	h=To:Subject:From:Date:From;
	b=Z6xjS+XG4QO5E9u6aLX2RkT7NmwRlFYJ/lnn5yRtuIbHIyT/KhczSwsunA+b3XPia
	 r4N4JZilKtt2yW+T6SxychZPrHD3UXic+q3SB4Kv1U/oFnorXO2D1zFXTzsbNCpFFL
	 XgFL5i6CZA/xrrrRN5aRyxa8N9WdEgM4A1O/HdwKr/K4LJBZmsBuD+DCCPTpibnajW
	 g5JGXt/Awh1mraqeud+EzSh9J7chNOwLIcQIZmUK0LmRoMguqnsMbo3+LzX6Z3847d
	 cEPT4DHk0MDcJAIFTGjlRL8Zt0lHmh2L03EQUNRtyGMyDBSDR0Bh0PHZA9GnilmrK8
	 OPueTsAjItLIQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97A27E7C70C
	for <ddprobe@lists.linux.dev>; Mon,  2 Feb 2026 07:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177001883360.32463.10838672803590427699.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: edd726697101acafc6f3b4d88931e727a7e7145aa5a270d7fb451b2e2743236a
Date: Mon, 02 Feb 2026 07:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770018833
