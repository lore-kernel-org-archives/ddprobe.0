Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 265274D8D8E
	for <ddprobe@lists.linux.dev>; Mon, 11 May 2026 22:10:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778537434; cv=none; b=Gd04jl7HfhvD5nq/UEgWO7D1gK2iC0JKQiz1GkfBHTfIU9UvsqeDiPmTs3rCxlQF0+ToqrxTXI00pvH5RowHZsH+wXJ5fcjseBIuZubU813LKh/P0pNOzdMr55XWIl4Qh39PKb/ntkHDItJMw+LpxNCkPVjk/+1C3RRK0FmDfQQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778537434; c=relaxed/simple;
	bh=wX4f6NuF9RdLf36D8O4JYN1Uexv5T53FatF0KOEvM0Q=;
	h=To:Subject:From:Message-Id:Date; b=gdMI2sb/5DjBPQQqW1+Fd5fEHY8td5US7mvX37a4aT3Ns68/ONyKiJ42iQPwk42BgIPjqkXMo4REEbUx0Yt0zUvIDDkbuu9/uqh/WGIhOSlxgIAIBvh8I+tvtmiIfnKhopoyj48d95ininT9dDKi3opgWlQyrkMhvylqxLclteE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HeYHmWeL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HeYHmWeL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BBAEAC2BCB0
	for <ddprobe@lists.linux.dev>; Mon, 11 May 2026 22:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778537433;
	bh=wX4f6NuF9RdLf36D8O4JYN1Uexv5T53FatF0KOEvM0Q=;
	h=To:Subject:From:Date:From;
	b=HeYHmWeLcWq/kZYLPxZ3AgUOWR38ywFL0vG48f+cONOyCFJ/Zzv9KLq4Z+ACL5ZQU
	 W2fcM9C94dnVt6yAamI78Vk4QGAdYApGu73mpXHVmgyFl3HEo//AKPARp/pKkls2P0
	 mKdstYLMkL1cEtFZTbjNHVEXxHynee9cKUWVgohZtLRyAhzeazgYxO/kc72qoBybZ0
	 qlNCvfzfo06E1Jvqy9/ROcF6xh/aJv7TI2iP6Ewt1ykJfo8resZpaANAQqtVEDAev1
	 oLpNR7nP+MC/i279YNM0HcZ+QCPyrHWmyH5KO7RDWn8coYcUCF8rNqhqpZXafk30/5
	 aaZoBbxApPuCQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABD66CD484E
	for <ddprobe@lists.linux.dev>; Mon, 11 May 2026 22:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177853743369.663.10191524405118413380.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ddad004e837671bf11b1cc7dd75a1e8ecba8327b5cc13cd77edca7a9414501f9
Date: Mon, 11 May 2026 22:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778537433
