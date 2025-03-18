Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 438BE20AF71
	for <ddprobe@lists.linux.dev>; Tue, 18 Mar 2025 23:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742342394; cv=none; b=ONV5ql26D+r9FgYmNcKrMG2FOfubej+dZrXgvHg08r0Pl+NSW9Ogn/gaTmNqfl1lD7z6tRnpYYJMdCIiWZfSxzYOIIKSLVCCMKIudftRNvu4tXOztERBoZMIMB4znodvguuFohN087HlKCRAkt1ULlDsH1NY0Hz3WoPZQyQVlR0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742342394; c=relaxed/simple;
	bh=D//2o0dG5voYhB+WPj+pA34GuJdFv+YtR5Bo5dCqNEo=;
	h=To:Subject:From:Message-Id:Date; b=n9b++D9cVrMqEImJIa6gkeD6PkASIaI6QovfaNeAZCh+JdG3v/jmyDq26l5qmz67ABqn8DLhwfplQlXwBDDeTptzyM4ayutRQVVMyjdupvuleSdxq46Agr2whkjvwgHiNgG9S3V6brqI/ra3Y1f7n7s/jVvC9BeftpDCWOpwcjw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kBkIU7Bm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kBkIU7Bm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8E02C4CEE9
	for <ddprobe@lists.linux.dev>; Tue, 18 Mar 2025 23:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742342393;
	bh=D//2o0dG5voYhB+WPj+pA34GuJdFv+YtR5Bo5dCqNEo=;
	h=To:Subject:From:Date:From;
	b=kBkIU7BmuIEPaNCY2H7Km0NDXI6r5oNGFYUm/V0/yM9dnBrWQr8Ndcs+38uBUYHwM
	 gmdoocuJVtsRSOnuobkuwKsKTXyGQmm6tOOTsLYdtSSjrhyivL/tqi2+VmNPFKzZfP
	 O56MKG43KW1pjTfbX1qbesxlD5xzqx68RN7K82VwsKQlBP6trIBLnaL9sW5tNJnNnY
	 HQ++RW2IvxqBO6ZgC9kFkTXH9g4dl1MqLNcny64+N8x/bgHD+UFTifZmTO4SElyDZ8
	 NNubplV7gVcl6zthi+W9tOtrDBxqEV+84MqH0NigkCK2R8j3quxIRCa9Ycjn7isLtI
	 fSc9r7cqRIbDQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F96FC282EC
	for <ddprobe@lists.linux.dev>; Tue, 18 Mar 2025 23:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174234239363.11608.7072606288958334755.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 28b6ebca5fae89f0e1f80caf848df48b2276cbe884660b4f2673e3c83e1b403b
Date: Tue, 18 Mar 2025 23:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742342393
