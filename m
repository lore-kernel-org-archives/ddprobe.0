Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F031F2E3E5
	for <ddprobe@lists.linux.dev>; Fri, 29 Mar 2024 11:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711712297; cv=none; b=F7Kz1B1AKlYFhSBMxnCSskqPaNz1JLkZlar4wAQv4LsGRebV6izm56cknuXF8ureOSJQ0aBK1jKCm6QPBig2FOhn2CPl1j2FPz1VumPOiYCcfefu4hnxMulqspZ7bJCls7iAZfP4sXoY1YNWLSZxbthSN9G8UL3GlCCwwfvCmzM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711712297; c=relaxed/simple;
	bh=dXBn/nbHeBy3a+cPidlsC/6AiiT+VjlyhXxItqnqTSU=;
	h=To:Subject:From:Message-Id:Date; b=Jrvrb4ZPASGd5cbpLoWbTEcRSR10OwvjTLE3X6sXEMMxPt1+c4uuBWxRQiMNb6654WIZWypVxIFvevAuhycAmdQCoK3k58SOvgNE9DMM80ugz/W+v4SM6co5ZM5rBt+si79z458Xg3AxAohR9e9cAjr5u4OyguE9O1OGCha0uB0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Duih1ZUo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Duih1ZUo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 71C5AC433C7
	for <ddprobe@lists.linux.dev>; Fri, 29 Mar 2024 11:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711712296;
	bh=dXBn/nbHeBy3a+cPidlsC/6AiiT+VjlyhXxItqnqTSU=;
	h=To:Subject:From:Date:From;
	b=Duih1ZUox0N5IAs+kZxH+RpJn2V8xfu/pH33z4gLCt8H0ngazT32jrOzj/v7sefCJ
	 RZAj38Lthp/3MaqWpHD6Sw6B/uShsFJd655Fe4mOX6xCsuGhxLgsz0QnCcnWg+BhEi
	 1WXCuRTr2oSjaflJO4QAaZI/97XCeaG4fICHBvodURzNgR73sFw6qVZCmkDlr6+FxP
	 DV10Q3ZSuKhBLQvtPjyqUiJKA18og/EkzGsTDt8t9qsbnl4v30iATrEx9zv3wPEeY9
	 alFN1aGGwNXbWB3vqentyZMl4yA0GST99gBfVfAMmDQbC8H3xgvkdIN6BymtED8ESW
	 LttdtUtjrE9hg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5DA2EC6FD1F
	for <ddprobe@lists.linux.dev>; Fri, 29 Mar 2024 11:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171171229637.15661.11218069529187639975.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fe2849528d3d79afee45913576cc5b1cd111aeebb85fab16715537d01552c5be
Date: Fri, 29 Mar 2024 11:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1711712296
