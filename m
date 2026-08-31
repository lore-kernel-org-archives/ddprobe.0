Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4993D377AAD
	for <ddprobe@lists.linux.dev>; Mon, 31 Aug 2026 20:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788207634; cv=none; b=ZW8j9o/9iaAHKzAMfHquuL1R/CxourDsUDsU2Yh8W78wq9s8sZ1ZQA9nCOujeN07lqJ7z6tQXIpd5ez8YrKGGAHfw0jysRN1soKrqbffbpzM98CjQM8xystiC+Da+yjMKt8QvXAPnHps0Y9ojVWN6GVpslssqeLxutJOeoQ+iRw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788207634; c=relaxed/simple;
	bh=p2AQ79ULwPA/9RsjIFylTkr0f36ch5r7OXgyTNBSNrs=;
	h=To:Subject:From:Message-Id:Date; b=TAdvpd9ymwKP8tvf1flh36+iSKNTurKzhrgHNnMPmMIMareevn1FL4rtPh1b1FwtYdjFM0rvfPsh9AYLaaIhIsYxUFNy9N5Vyjxif3vR5UWU88X6oNFZM5CGmuh7UFMAgjp6flEjbhNSAapiPb5RdkJVSip2ayp3V2Q2NhJcp9k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gohaogaQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gohaogaQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE66AC2BCFA
	for <ddprobe@lists.linux.dev>; Mon, 31 Aug 2026 20:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788207633;
	bh=p2AQ79ULwPA/9RsjIFylTkr0f36ch5r7OXgyTNBSNrs=;
	h=To:Subject:From:Date:From;
	b=gohaogaQzS4Q1RcbK1bI82OLJmwyyo79RcZXklIhcqATVHiF4ki7NwTkyEY5ZXa+9
	 AhbGvwJmXDgQmfD6UkXHlcW18/fWuz0e5rzFZ/FC6AfHHfNQ+Ac+8DdFT+GiG2qad3
	 9OdJ/xLze9QP64BcqN8ZPBZmPzVjizPgdHJz8IS9DmOZAYcuaDes1NejODaECz5fU2
	 fv3f8BKNnNQ/x226xvu3U74dKPuZetuxmcex+c9/nYtRd8gO4ZtLUczNnnj66QCMFC
	 c/FVa2civC3udk4eB0cRRA4RrdTpOYInL1TUu5qzImX/I81U/bfhgJFup80rMQEyOq
	 RVUnoUp2HOC2Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB15AC61DFD
	for <ddprobe@lists.linux.dev>; Mon, 31 Aug 2026 20:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178820763369.18284.9152613796248289566.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9a091e8a66c79fc9323431c7bc9270a265308908a06318240abc7ec7ee73a851
Date: Mon, 31 Aug 2026 20:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788207633
