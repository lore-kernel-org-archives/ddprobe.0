Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EC22310635
	for <ddprobe@lists.linux.dev>; Fri, 12 Sep 2025 14:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757689195; cv=none; b=PThxtBwuxBSKIZlFnNqOBwk4T+O1/DiOUNdKg3h6vqESniX/tLf4onYaIT3f5aADB+21K6zOpkfiMWC46tQmqmkOcmgsaCTZ01FQNfacvLhxuh6BwrVDinC1tteNXhIV3mankhlqhEzVouPRz2qIdw2ACeZQtI5eU87ih4nHtaA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757689195; c=relaxed/simple;
	bh=ma95xWB6l4Hv0hCknBuiWGhdR5mYDT+lGyOgEXuTJ0c=;
	h=To:Subject:From:Message-Id:Date; b=tSL6F7Fe28bLUZe0X8ZNLpaU/ryl9V5vgn7SBS7Ue/Ff27+tWN2k367zE/Vnt9zfxNRFDgqIMzPIBjxxi7fjmPaeeJc6/iHIa6Sa7wcj+Zgs8P1y9bra+ZVcJuQWCsXtDFpLrROSBnydsSbwgMeI1pXME+RBv8AqrDlKb2FNpmo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SXVzMC9J; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SXVzMC9J"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9AAEC4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 12 Sep 2025 14:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757689193;
	bh=ma95xWB6l4Hv0hCknBuiWGhdR5mYDT+lGyOgEXuTJ0c=;
	h=To:Subject:From:Date:From;
	b=SXVzMC9J0UXwWVkyR4rIXD8A90DGDpHF+nXWDP72Ui6NSFmyS6EpuQ6dnnX/MATx1
	 XEcfHXrvAD25bX1O8WYkVrRSqJ8W4xbyRyxxXY7/u0ffA4Va/hKQb7/dDcRr4y9fXP
	 rV8sopFI2tBLjIH6z1tTyLIYnilpbsKrDe0dm6Gu7OqRIqDUEeNU+Hx1c8jjNnd33i
	 jw2gey8O6/zJVnZZmkxfZMRxyYUdpt/qTqP0GOcaXsahY1luRYyxRux3puuHtNNSCR
	 GVna+qerMo/aMjJHGEm88WlwYqKlmON5hCt42tUoZdT61cQnWnv7NQ+dqH1iVJcB+O
	 9SEqbogJkVxLQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9945BCAC582
	for <ddprobe@lists.linux.dev>; Fri, 12 Sep 2025 14:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175768919361.4487.10560574404260800633.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 10edde482af7ab23fd80722fbf2b85479dab04695601153a15913f0509f5be53
Date: Fri, 12 Sep 2025 14:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757689193
