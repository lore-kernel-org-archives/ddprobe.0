Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C4EE168AFC
	for <ddprobe@lists.linux.dev>; Fri, 10 May 2024 12:22:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715343743; cv=none; b=XZPd5td7+dX1+4IS5DUKKU4i1J4crByD92SVJrbXLVdHI60kJghrlzlI7mCoOj1/QtYle3a4dDQYt/VJv2ljn12nilB8Juu47izatEUqmg3kAA+dPvjIciJ8ic0BH3h7CoMHePu2ccuHEcHlT3hyg/HkA6AJJEHBsVNRmAckRHQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715343743; c=relaxed/simple;
	bh=71tufRV9ulknOdO0aM4mSZzJsLj3aqcIkEBlNCCchAQ=;
	h=To:Subject:From:Message-Id:Date; b=V5VPyEj21kdbpFH4klXFpUzb7HhcZFrtD2YrkeB5nqN2p1I47owQ6XWp87PQn8MteAHPXg7k3d3Nqn5j6S2nISi47us4hhLUM+fnzSLWf+s9ftVUv/U6HTieYdl5Z2Pa65UNnz+it9BPsD9HZFTV2F8OP/0KNoawaVbrK68uCOM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Q27/bIOi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Q27/bIOi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D67A7C32781
	for <ddprobe@lists.linux.dev>; Fri, 10 May 2024 12:22:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715343742;
	bh=71tufRV9ulknOdO0aM4mSZzJsLj3aqcIkEBlNCCchAQ=;
	h=To:Subject:From:Date:From;
	b=Q27/bIOihiiCcCjRL8zkenCrSCNgOLrLV3hvQ8o1mBvy0ovgTE1exahoOOSa5vjRo
	 p72/EcV2sB8CV6H6apzLZruoFIwUc3eUN0K6OV8F0aI3gawyDEHdC30IZS0hd4zKFQ
	 b5fWITLPNIqcBlkHCbRGFspZ3M70FyM/Qrrmlf5uEQs6fWkJGDrFIo7/NGAXue1oSf
	 L94SuDgUd1lkuYg2CPX8xaQiSWfxI1ReXVyo6xJOLbzF5eyQGvquU/XybXKfoqa+kY
	 7jv+4wfEkgySAIP4nlu1p0e95f6jviIRydqznrGe1diYnzgvygsKsN0aqeCTqD0sIb
	 xPvQ0ofnvwZ0g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF23FC25B10
	for <ddprobe@lists.linux.dev>; Fri, 10 May 2024 12:22:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171534374277.24542.17875356049586615245.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ba8ee97da8a12cadc007a9c89441a035a6e488267df2004d5b62acefd61909b7
Date: Fri, 10 May 2024 12:22:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715343742
