Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 54A1A149C65
	for <ddprobe@lists.linux.dev>; Thu,  9 May 2024 10:12:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715249543; cv=none; b=ubE2jB4fkU8pm6FMprHrj7rTxaE5V0FM2h8SBcInFfeWwrmH7/d2A8pTG4R21iMYIJ3+yMcag65GJLOAeWXMOYWbAlg89FnP6gY4AnoAY5c9Hrojx0vCScahL8+6LwNqD7PlRmDDKqub7CJLuT4R20KUGJ3Q6o1OsavPxCZgvKw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715249543; c=relaxed/simple;
	bh=5Y899xsU89M0qWPFB/v7E2hB/qVbgKFXCi91/BJiEh8=;
	h=To:Subject:From:Message-Id:Date; b=cmjq/IvBxQ+zli5ADRdnHrKsSFnHYPE99ALiPahg2K/Qor46lJzbic9euX+zteDWhRGmr9GXbqJbAVd4xzzyolICUDwms39ZNiRL9e9MH7Xq0ij/080/3DxtjYZNa/yKYYJ1gfMHcMcsYpnfjFmSbGNu+bHlsp939Wil7RrbWm8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Tszo1clM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Tszo1clM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D68C4C116B1
	for <ddprobe@lists.linux.dev>; Thu,  9 May 2024 10:12:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715249542;
	bh=5Y899xsU89M0qWPFB/v7E2hB/qVbgKFXCi91/BJiEh8=;
	h=To:Subject:From:Date:From;
	b=Tszo1clMr3GO73jAUG/j+QaeWl6ZehlPlMIKgszaxTziSg+nBVoCtMUfPhj7ndUhB
	 cpNwz3M1vMy0A021a8rqTOOV8Wx1P1Bm4bafhfiUuKJ407+ikyu0ylNzPMal5OPT3p
	 wmAva+8iHsmFysrN/FFU/LkLkZmZhWKn16EILrQiPbN65WK94Bupy9OFfdnQ/4wyGj
	 7V5ap1IQg2DJmgSydv34Ab3IdkagB9WboVC7f2gWWWiP46zUtjBCAiEwHUmk7PJTZA
	 Hw2WbCSV3IjABsjO4sr6bh+3/AsLNX95EyTmtE07M1pgC7AzMYVTPHmXRjR1bu4w2A
	 jECb1BNBH3O4g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C5480C10F1A
	for <ddprobe@lists.linux.dev>; Thu,  9 May 2024 10:12:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171524954279.20796.16363026779621805590.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6af5a27c718a8952b2d7c9a66b1e7248bfaef3063c0d8633ce6fee0a2b99d20c
Date: Thu, 09 May 2024 10:12:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715249542
