Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D04D32AABA
	for <ddprobe@lists.linux.dev>; Mon, 17 Aug 2026 08:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786954834; cv=none; b=o8ukurbKPzVapwlqsFcKT8WUgd/Vx666ggLRBoxp6wTcKTV+VqDAdR+0Zt3HEuAOeJmHHVSTTwoETqRA9EQBsvJdC49bnuZQkrdHGExOhCbb5vKrH//ZAO9Owo2r+py/XO4buSkVvFhcLzUjX102kElRG8iJmRfiXyksCBbEiys=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786954834; c=relaxed/simple;
	bh=6lYhhcwvkgU/8oB12Lsz4vtNUKCBpWmqdF9aJNGeYbY=;
	h=To:Subject:From:Message-Id:Date; b=umBJd6PLeOKOH66XodENoBxyMMMrqquljyhu8iYlVrNy1nI4LPtmSylzKICv08XHqE33igoiTMKzmyasMje4KfwZYLH/xouUn12WDAkryPsPNhvk6EpJXPXHTqNmrXij2SiV154OHPFFFaZcUMwGEmm2d4p2rQoNeYNWa3cQJdU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Hk3VJWOp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Hk3VJWOp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5766C2BCB3
	for <ddprobe@lists.linux.dev>; Mon, 17 Aug 2026 08:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786954833;
	bh=6lYhhcwvkgU/8oB12Lsz4vtNUKCBpWmqdF9aJNGeYbY=;
	h=To:Subject:From:Date:From;
	b=Hk3VJWOpMC8FhbIQgE/wzBnIuhNttCNuo7+1ooF9cuPB/ivZNuMb8mVXwp91z8gZ/
	 JTRN8cDcdXXa5PObBUnSLZpbucg9I04JLojivDGDMrOCBWjUM2VzVf9uiaVd+9ZO/r
	 FMzYeJ7XES0NawvpJ1AYPvFK85vdPeOx2IFsKVXcgO0tf4L3hzCITCVJ3Lij/s91Cr
	 9u/nWnsgfdrdX49wgxq4udntE1sxI/GCkkz/vSOqxSHpz0/mYLgEQGQAxDDPrwaOU0
	 r5TPao4apjhfuyfzp650UPsbV363l/rvcSAt+9zeahll0bqv26Wrmk4IfumM6xEitW
	 +xf+kegSNTFiA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF7A5C5B572
	for <ddprobe@lists.linux.dev>; Mon, 17 Aug 2026 08:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178695483371.907.3582995345834413977.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ed8ebd769979cdb715a6fbeb3ba94b60a8c699ebdd16f87a9c83c98c8ae7004e
Date: Mon, 17 Aug 2026 08:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786954833
