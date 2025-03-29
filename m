Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4EFB95D477
	for <ddprobe@lists.linux.dev>; Sat, 29 Mar 2025 08:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743237594; cv=none; b=JHCBjC9TDplmfn2QGFQdYGBYoAyXfW1sYfb1Wmm4a50Yi4EXF+NAjh2dbKy28rKaAkaF2F5SOg5F5yOQX1Ls5VcR14b6TWKuKWiwjEY1kLcLVqfAZT/z7pFaU34ce0/Q6MDHLk7xIyetFctTsOQGB0/eMHo5U2fP4JrY6EdRfzM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743237594; c=relaxed/simple;
	bh=FdjPX7+w+55ztp+dd/XLoHva6sblnajNrPhEyh/409o=;
	h=To:Subject:From:Message-Id:Date; b=V33/ZT8khBEmy0XFs/NZRKQr2wV/w056ChyCJO9a+n8wWh4OMxJEUsmU3u0C6tARaeOtXEPT2ZxJLXoGYXaDuGu3kY5PsEekSEy776Jc/sTpA763g33bIshRskIu7X4WnyctroiSIK9k0Ws2uHb833z3Qi/zc7jQpc+gXe9d1zM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XmCxcX8P; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XmCxcX8P"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5D10C4CEE2
	for <ddprobe@lists.linux.dev>; Sat, 29 Mar 2025 08:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743237593;
	bh=FdjPX7+w+55ztp+dd/XLoHva6sblnajNrPhEyh/409o=;
	h=To:Subject:From:Date:From;
	b=XmCxcX8PogroOaUiqVSOUdx4L+G8+QHIzDVHyVGsXTg0GY/CRsiqvz06XmKUco7GV
	 oKTY993EDFcXMSTmlys3Qeew8qOqYJUC1W8ElsYXwfhLCZBRGq2uwJw7Qm1cJ4zme7
	 gd7k5K9QN87vzdD3VlwfaaCqe9fq1xaJjAaMvT5CxrY6NRXNmnQtw1dr0WaAmApuG6
	 7fU+7+CO59dvRdml65YFdGNaiEDYAzajKLZ9Ot6d1fFQyUjYZxmNPDUcVQD1X610l0
	 +X1kZrOljyRBKn6fn7p5+DVS7Rwutj8E0ycAFQCOT/T8Us+vrsJz20xStUzh5Nc13m
	 ak4Q8fF3GdAVA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BF0EC36008
	for <ddprobe@lists.linux.dev>; Sat, 29 Mar 2025 08:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174323759360.5357.11746757280345441224.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 941566d192e07607c9331b44570526d718259d3f41a74d018ff37b4a0ee954ac
Date: Sat, 29 Mar 2025 08:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743237593
