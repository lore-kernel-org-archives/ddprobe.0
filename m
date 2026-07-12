Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4373E25B090
	for <ddprobe@lists.linux.dev>; Sun, 12 Jul 2026 05:58:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783835914; cv=none; b=lgW2xQeQXIOMBADzNyuGG4UtScmbbKsZgPCDVGZ+A8swwxTNkzK/Nu4KdK5IgsBKENJovG8Hdxbsq9QXmhrZQYMzUxpOpzdu+yEaIaHbDGBuC9v1ZUDJ0ddbHr7LBt/uzAmnjLCKs2fEE61mN5W228xogn0JaDbgTexBzVepSLs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783835914; c=relaxed/simple;
	bh=JHLpT5XAgu1qk4pn0XHB/iaQa9uQ2s98pcOXeENHzv0=;
	h=To:Subject:From:Message-Id:Date; b=YzyIj1ERUsV5pe6oSjJWoEZ/jh5ZxUEjA8us+Dd/Kuw2A2o7zCv+RuN8HJQ1lnrNtcKdvCLtOsSbTUAWjPyGXUZd+DK2jf2lWGoec03YiWQFoXgIauPnwVVFfcXkBIvtV+paoJ5A9G/Ddidtr67n0QTHg/zfQvyhfs7WqDbFaOY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OprC6L6e; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OprC6L6e"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE955C2BCB7
	for <ddprobe@lists.linux.dev>; Sun, 12 Jul 2026 05:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783835913;
	bh=JHLpT5XAgu1qk4pn0XHB/iaQa9uQ2s98pcOXeENHzv0=;
	h=To:Subject:From:Date:From;
	b=OprC6L6e/YRP9e+meKApqKCnAJoHW2UTa8fEjd6fUslvOCrugCPI8ic8R8wZSP+g2
	 wd3jRRozA5K4o1sYBESevasyGAJcymLfMnisXLKsmjfQ44lC9FFwvwVKSoswkWolOE
	 TLZxdnXQq4AI0VibV9Kz9DpPnxv230ZpW4DVhrKpQ60rt+DDetWEbdbXFIVyGjzBNP
	 AXiwfRLtN7hLVafJ5Q6+lIU1QgUrUJweoOnUfgCeTajO1ZvVCTSLJJGzLPU8yGqhLu
	 uQKbifssxuNBrusyvlqtil5+Mwr+iqBJuisRtv1qJtJpYOrrf8AEYujY6RRwyRrRQQ
	 mFZz+IAJ6Y8Yw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD8FEC43458
	for <ddprobe@lists.linux.dev>; Sun, 12 Jul 2026 05:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178383591368.25807.10414437600167350901.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 88aea9d93c3ab232f3d45768a8a161275946446d7aac626d1dd54bb8ecb7d168
Date: Sun, 12 Jul 2026 05:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783835913
