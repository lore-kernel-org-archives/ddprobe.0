Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C63227A477
	for <ddprobe@lists.linux.dev>; Tue, 28 Jul 2026 01:20:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785201634; cv=none; b=na/ZoPPnfgDjUQIxN+tE0vEu4YRzLfmsAegLHa0H4fZuSXmr02X1vcP+8EIanqZASLNHLEbvLx8ukf0WpsiTcxf77tu89k91jqi64vovXx7ESiWQAKKgHeIN5Lg6xpH+wKQ0GGaMPN0FHUCFDmsLn8aRHo2M2MnQdmuoPR1xkoU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785201634; c=relaxed/simple;
	bh=Sgcns9kra+Fy2/XdT6q2lOAW55c+RrHu2IpYIg6Do9Q=;
	h=To:Subject:From:Message-Id:Date; b=Kjj2cJzD4BbVwxcc8XjbZBataUdMr3MEIXBAyFnNa00RZ+ZOD+n/TLNJ3OmNebUe7An+v8/HaoG1iCYlJHpc8gF96suGS57qG55qqxcew4YSsSKAwz4iPfuhdtG08yfCwW6wmU+tM5rD3D6nWG23LzG0m8BoCxFfPrMBQnRNgnA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HkICS8Tq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HkICS8Tq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BBF8BC2BCF6
	for <ddprobe@lists.linux.dev>; Tue, 28 Jul 2026 01:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785201633;
	bh=Sgcns9kra+Fy2/XdT6q2lOAW55c+RrHu2IpYIg6Do9Q=;
	h=To:Subject:From:Date:From;
	b=HkICS8TqSD+sGDL6+BMIphqkLlIlF1KT8YozjPIAoX52cfnaiRTllgKvhrr87I07l
	 tlH6+4KjQ1qjqaGZcMZ81qGXfe5Cb9i9A5NLF7/buPl8gu+gdn9XPZEB100o427/C7
	 svrFBZNpWIcZw7PU+PK+sx3jhcwiTHAj33hhLdE1KoFm+zJscLdvrJSDqd7THdB9cs
	 leytGU19Fp4+mGYaSCsCsR4mAIkTIvPuCi1IOYPCGYrbCJbfHpew2Ali041aSSuG0U
	 CttybmiE21zwBKdHKpFxHwNQs++mI4op43w31yI7+D0P25jpqEOytH5FxOyn0fASKe
	 PdbC1fgwCQG+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA90FC53209
	for <ddprobe@lists.linux.dev>; Tue, 28 Jul 2026 01:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178520163368.29851.17754514785360369424.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f2e38e8cb86c909581c3f0349fec54b5813508f7eae035831b8f3b30a8a8cec5
Date: Tue, 28 Jul 2026 01:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785201633
