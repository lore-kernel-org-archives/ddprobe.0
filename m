Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4259222089
	for <ddprobe@lists.linux.dev>; Sat, 28 Sep 2024 16:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727539554; cv=none; b=n6oDWm7qYt3sLa1n8ZfEe5UGrZlrVpPmNAOC+BnUXs96mmrxHKaNu5IHBIhQBYdi22mee/GDRPVvQpnYsly+M5zoLfqAvqZle8qjm7hrRXNO51QNIhgqGig1J/aimLjKTXBf2wI+ieRNJhiW/Mr8kK1cguw9e33qFELNFsDDRxs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727539554; c=relaxed/simple;
	bh=w1RjJwMMtWVXxfIFuJTDXfyJ/o2sPnl1GcjAP8VXf+4=;
	h=To:Subject:From:Message-Id:Date; b=qclw+u4Fr/48zJyoUMh6ydk45tFOfQjFYxr5yM5BExoEtCkIBLWk6ekl91nrTu8KBYWfYuy7gCtPHg6NPKvEAntga99klnURXg6tDVBK9PSRtvTSLTcsl+0BsWW9ndIdolAYKxztu8FSi/GUbNowQb3pl5p6NgLfQsbHGCY3MBg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LcfllHuX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LcfllHuX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5178C4CEC3
	for <ddprobe@lists.linux.dev>; Sat, 28 Sep 2024 16:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727539553;
	bh=w1RjJwMMtWVXxfIFuJTDXfyJ/o2sPnl1GcjAP8VXf+4=;
	h=To:Subject:From:Date:From;
	b=LcfllHuX/ZoCDm89XdZ652owth7AFQZ3vlHte+V35HLcynhSHcsL6ih23PzPPSE8R
	 oaUl3RGVpr9J+6Cvot6UdapJsR0pdx8BwH1dzRnk8v7NLB7zCE0c0hZZbq8sz0OyGA
	 BElbUbXEE8m8X6iHW0o3Co3w5hyjNz78nP8YD9r4a+gfMA+nNJtVrWcXThEebi4/22
	 urnbZPtrCJFIi90JLN4od60ZAkHyXKw69Ud3YocrqNHEzlrO3asMbNJwTRJKdW7oUS
	 /MoovS5cIHcGlsmJbyTI6zhYxXCJmh037cETFtSKpmsnfYgq2GIkWFaUq9U0PJko9U
	 tMmQUBbZNLLEg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A2E6ECF6491
	for <ddprobe@lists.linux.dev>; Sat, 28 Sep 2024 16:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172753955363.16040.14604698300229293167.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 91521f023e1eb0b5e266a69719ce953d18588dedc970c3740a800c5c94678f5a
Date: Sat, 28 Sep 2024 16:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727539553
