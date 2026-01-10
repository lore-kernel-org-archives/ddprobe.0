Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15B0223B638
	for <ddprobe@lists.linux.dev>; Sat, 10 Jan 2026 12:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768046634; cv=none; b=TnPQ+7nxm38ECqZSw+/wSLPRdSKVBzq2On+IUP6ZRX2xRJ8uQtCxmPg3dAFyYM3i455Viz2191PNomlzs5gPynWJGk5gZ01tdJn9PTmjRIA6NrigTfm2XEvNKOkUKQSv2Wbb/nH+4dBSsrYG5CM8P3Ta4q+9pk744Q6KhXP9t84=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768046634; c=relaxed/simple;
	bh=t4aUC2iCCkY/PWZdEq+FXr6YPA7/V4XulJZcvODi+28=;
	h=To:Subject:From:Message-Id:Date; b=PbFOCfL1v41euFLWsnqP36tdFaXLqmcLOVhRDJm27dXiAsR6YupmVcNUn6B6EvnWqsCc/Uh1rsivHHSk2JOx0Fr1p4vkgDf+BxB9qSU77b7onYVJuPn0WVdFfs58W/2J5W1Njjfy6B25hpxGgsBJa79oOHu96raAm6j1sMzE+A0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GkjpstzZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GkjpstzZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2127C4CEF1
	for <ddprobe@lists.linux.dev>; Sat, 10 Jan 2026 12:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768046633;
	bh=t4aUC2iCCkY/PWZdEq+FXr6YPA7/V4XulJZcvODi+28=;
	h=To:Subject:From:Date:From;
	b=GkjpstzZxiu8Ai6q8nzR3b2gROhljMMjmv3tow9MrOaW9NDYvZ1eMVwjiqc/Jpy0q
	 DozFWoAQEwbnoLjdTR4w/BDr/2GkVRoAP5AyVaT1HjRo4qDeFwJdofKqvJLmAVyzqp
	 MYaqjLwQfTNPGQu2DKvJ1X1Vb0mePvpug+9H0lZY2lfSvNNLGRKOFtPHae45DVpfSJ
	 Msp2QaRFtP+scLTCS1pSisdbRqLs2Ni57HN+88VKPcMpS3W+FZUp/BncI1Sdcf591y
	 zkqwNbrRLh2ef9blxWGMRKoxmFed4cdS1kkwxnJ8FTdfRpg6BIUq2Q1G3o32DGDmIU
	 aK0/Jewu4IwwA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92316D277DB
	for <ddprobe@lists.linux.dev>; Sat, 10 Jan 2026 12:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176804663357.15017.17076964176367059624.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e95f33c38f6f92cdfc2863cbe1b2d979dc8bfa2e0ac8f3069e8390bcb8d22c74
Date: Sat, 10 Jan 2026 12:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768046633
