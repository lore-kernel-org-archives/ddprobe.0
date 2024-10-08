Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D6F1B80604
	for <ddprobe@lists.linux.dev>; Tue,  8 Oct 2024 09:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728380753; cv=none; b=Oeim1Gj+Wh9j+cvHkU70GLMd1umejDen0SNjN2AkvhiU2iP4qEpzX2USL2731myMZjDoCfS8O9had6fxvVJ+3FN7deUkKqctNmCxlVQ+Jj8+5XmXQFIN/KiFFQbmF2O58XaocmaWoJMHCbjNaaHZgf1aNLj10UrJtuJplZe1Evc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728380753; c=relaxed/simple;
	bh=WsOm9raYL0spohZbfYPxVad3zsFYlLJHyBmKt/KpgqY=;
	h=To:Subject:From:Message-Id:Date; b=fKKIv53NUTJ8YVdWsCA50cIew1MpcEYC1/osZ8QF9ije/D+yrYaiXcxuoY7KLqtSIyojRgN9GrVHcya7rw6oaaEVM9KAsOp37ne6eo51rAK9ovZx6POmqZXXZfIKea1LOJ5vG16k7LqiPg6lcRmpz8H8zXGavPfRmkU/XynYd3s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mbMP1zAo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mbMP1zAo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6B88C4CEC7
	for <ddprobe@lists.linux.dev>; Tue,  8 Oct 2024 09:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728380753;
	bh=WsOm9raYL0spohZbfYPxVad3zsFYlLJHyBmKt/KpgqY=;
	h=To:Subject:From:Date:From;
	b=mbMP1zAoD2linWZSzqDimcisnTl02w/DDkwb3nDCZId1eij/QaY0ph1hPX2nckPa7
	 t7Olo13mwW2MMG/+QZ5mZp3VisyBG6AEaszHXRuBwtGSh7RjJBps9Ai51w9YhflmED
	 /CeNniTVepyFTolR7sI9TNfdzeVQ1o6X1LoxumRaCPIJSJoKYLnlNPyEHxtScIRMVg
	 FdGi+IeVhKLnYuso5vwuJGY18BFWQHwtUQhWkELQNbsNk5+S4KIiE5BIXuy2q0ohj2
	 8CldMTK9zRInsuedlFuezD6MHX3tJv2nhA3TPWcZdn3oUj2kt562IekeYZ1zQDFiaD
	 DmIk0ocITPhEA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 965C1CEF14A
	for <ddprobe@lists.linux.dev>; Tue,  8 Oct 2024 09:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172838075360.21444.8675116877715071222.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5d9b2db4ada8d0832929c35f59fddc4252666b694e6eca77c8fcd13e95763fc1
Date: Tue, 08 Oct 2024 09:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728380753
