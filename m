Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 834CA45C71A
	for <ddprobe@lists.linux.dev>; Sun, 11 Oct 2026 14:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791729034; cv=none; b=TjwzqAQQeotiy9RVBD2dk6cq3IbKVI9JgDpSx8GdmxFU4LNV/Z2yJhIeAzSLqWC5JFkCBnNZOHa8JDfU/XI2SkUc3JKaYbqspHQhaep2Xxh9APwuhD/clTFTdC8pZZuBCYb+U4GcWEwx8wb8QaDvrxb+t4dwHWMeSFczOnEpC0I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791729034; c=relaxed/simple;
	bh=esMkSzNjN2u6e+BzIwPuwtoI8oWX9pfyLbVFsTiRzrk=;
	h=To:Subject:From:Message-Id:Date; b=OoLQXhHJb09Q/3YXFXeGTgDk///jxuwL44D9SvZCuNnDOAHRxbPvqExyXYxoW3gogq7rpIdLnw/8UBtp5pLJOCSq8ctlj6SIzaXtm4GPFik68LZXtznlje/6AhRaST4FIjo2JXYMivQcZ/VIwfG664iDJh6YRZcBwT0dYpz9gEE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Sq7fp2sT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Sq7fp2sT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB879C2BCFB
	for <ddprobe@lists.linux.dev>; Sun, 11 Oct 2026 14:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791729033;
	bh=esMkSzNjN2u6e+BzIwPuwtoI8oWX9pfyLbVFsTiRzrk=;
	h=To:Subject:From:Date:From;
	b=Sq7fp2sTlnWmZ9/1dwUFVDF5LPTopT+uveDJg03liL6P/YdNbFovgSiNlAUh07zff
	 b7qFbB/Xb0pMCyBS/SesAD5BLl5GVueawSC28g5XVcsgs2bZv9ec04RIYPqKRXQjrN
	 dvqRZeifKsC7niY3kGYdVOKnDFptTyN4dDKNWb0tXJL5LXD8xYlFYWI+5McPbQvS9k
	 AL6ZKT5MyxFDYvrTLGzL+EbFyOAlx5fHK2fcaZbcd/cX+2p8bKFY9Yr+8KG9Z7vdSA
	 f1TL1xkD3dDpJHafvevW1C5W/S8VS7rrDsbSz9nl++LwWc3EPtd+ai8kONL1HAkwNo
	 jV4XozTyhYosQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA2E1CA9EC7
	for <ddprobe@lists.linux.dev>; Sun, 11 Oct 2026 14:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179172903368.14508.5611684439048256581.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 81d2ecc8f7b839470bccdc74c824a223d449a32a78477f48573bf4050e87aa82
Date: Sun, 11 Oct 2026 14:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791729033
