Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 280A0244694
	for <ddprobe@lists.linux.dev>; Sat, 18 Apr 2026 11:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776512854; cv=none; b=kur9pbvpzZYL/mtHNM6xCllYwswT8Lm8hQmpXrfm6g4ls2QpLhg1OgDqz5pE7QSl3GBJFBQqEHvs8zpZP7sV/ssWtRsngqt3HzEJHS6LOVKCC2zcKALgIOTS4CrZxj/jUJkxTVsq6URKgGmA5eRt1oTVP4M8KxMPevEcEBbmX7o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776512854; c=relaxed/simple;
	bh=8/5PaWMng4lkVmqoauimOw/OMrAHdPnM2hwiFNqhqsI=;
	h=To:Subject:From:Message-Id:Date; b=LVZ66puFsmSQriFqjFZ4qLiQyWYhJbptfZ5TJXTm6hvI002bsU8d+T0aREnIXWVQ6st1AKMxqhylikMEi+KB593sXDO+Lhj0806cpSCTu1tgvjMXAARPJ97Oi1QTkW373T3+c+5zt0H9ykhgZwCqqEZsiBOkUHTEWDhHFl5cF7w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fMfHMizW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fMfHMizW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BDD02C19424
	for <ddprobe@lists.linux.dev>; Sat, 18 Apr 2026 11:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776512853;
	bh=8/5PaWMng4lkVmqoauimOw/OMrAHdPnM2hwiFNqhqsI=;
	h=To:Subject:From:Date:From;
	b=fMfHMizWR6yFNuassaegF3fO9e5A7AsgLDe3LhUQdLmdHlp7eEBnjceqqABEYoHxD
	 gUq/pcU0J/tld/gYaNy7ShdO3Jt8sfUcYBx0aKV68G6KyH+kK5P5nCsiYNurs4HO4u
	 Zv4RSdAhQ3bVLfISN5DsCl1uz0Zxzjvhh0dQtKY9T6q0akgkvAmg5qcbXy1lLtd0tO
	 gRNxuguZjf+FDFxAnwWvq+4UsXBibuobp5mwDP0rQ72f7lP/+VEVhFcF0wnnYiN6Vt
	 HLK9W8UwAjeREKGSzlXPI5Ns/nxr+jQ2HDX0oRdtlzvZi5CWSSelkmP/AWvbyT9fwL
	 n5F4yzquajChg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF899F99C7C
	for <ddprobe@lists.linux.dev>; Sat, 18 Apr 2026 11:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177651285368.27109.6575587870941957138.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eab1e7fd7505656c2e8cd02807b3a9b697160af0c056e280f709ca49878c5fa0
Date: Sat, 18 Apr 2026 11:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776512853
