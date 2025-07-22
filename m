Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E1ADF2ED165
	for <ddprobe@lists.linux.dev>; Tue, 22 Jul 2025 14:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753193394; cv=none; b=hQtP4TclGafadkkGn9Jxbb8Kck41jcJZ8u72n8UgLemGqQ9M8/o7TL9f9MmqWPFqAMdATq/Qsi8Fv38hD1XMX4V6lM+7m1w1eqk0KFcsW8+M44uGpkrXpUQ/socCFLHFPCEGuYmN+AOFbzLwKkktv3/YuSux7z3GNjb6+CsrVZU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753193394; c=relaxed/simple;
	bh=+MP5auGhLzVBHHVuFy4c5E6b4naOLRrapx902hjnYdU=;
	h=To:Subject:From:Message-Id:Date; b=YoxGNrh1XuVoc56N/spuYaHKgNohP2PUAYgI/mCBmsYWOpdmSizzOpjdermri1LbbVukD0CGWsITk9x/gGeuGkQDN8xgywdNGscABhyTAPC7FKxVuMkSOkMIzmzqQnR+iMOF06DosTueR9GGO+IXvESQOD0AkvF54OJcfKO7SFA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VWqaX2VS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VWqaX2VS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2743C4CEEB
	for <ddprobe@lists.linux.dev>; Tue, 22 Jul 2025 14:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753193393;
	bh=+MP5auGhLzVBHHVuFy4c5E6b4naOLRrapx902hjnYdU=;
	h=To:Subject:From:Date:From;
	b=VWqaX2VSxzT9uLBD5bY3wGoaaMofaCWP17n/mf44rYe5GTgSf52pPjGyJG3XZuJMg
	 1JlpadeP2T3Db39oqE5gvg5QOnk7NbSiMeiubGfqC28DJJVuskG14z7X7WAKI5dzMB
	 kXoUQ0ZFNDoss72mjWLHHdiudMHnT44smkv//huI58nAKYLhi23tS7MK1833ii+12q
	 oBqddBbYvCmz+W/32WW+svbugrEhNcxJdjlQDhm7hd9eqV9tz9Ttm1+Ka6qwOL2UGR
	 +bXdf0BjkJ685yN4hZCh72IRTSMDV21obX8IhgwuXkBEZ9XB7PTDy3yEJYcbfOhEF7
	 MtZ2nIMZHOUsQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 931B7C83F34
	for <ddprobe@lists.linux.dev>; Tue, 22 Jul 2025 14:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175319339359.17610.7234754510303783261.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4e877d586819e2d868a684a8ba59b35172e8228b120105ab04fbc841fc35ac85
Date: Tue, 22 Jul 2025 14:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753193393
