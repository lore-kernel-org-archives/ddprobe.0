Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F1FC1DF256
	for <ddprobe@lists.linux.dev>; Sun,  7 Sep 2025 05:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757222994; cv=none; b=RgfV2FHJeY3jmKgrY7PVoOstlySNQXIc1PnBOhJHsRKrHUDzRShikZqU4hZMJizoRFyHHt8OmJbh2XZd93d/OaDoF1bX3eij4WCQQOJ0ge+cg8Qgnf5W+n9Lv5ozV9gzK0ovL8kf36RcOrxpLWLf44ofpsy7/mUSCRRAuSRD00w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757222994; c=relaxed/simple;
	bh=S4o55Qpem5AZovxh3sT8AnSiwNWsjDsKXXHRpOIzotE=;
	h=To:Subject:From:Message-Id:Date; b=qAD8RAq+lI58Hv2WfX6yKCZtfqgwDc4r2mnoBfhpbaWEOfKt5t+ZYGAnONZMVaGn7rTIVEQAFu84WqSvBu78w59JNi8q63ZImqIsogDUYhlw4CsrMIFiMXvmUNSH/C/K6jvwrQVePF5DvVs/QHwtApvEhqW8121jcQa/oBoyrKM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=C6elMmqs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="C6elMmqs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A66DDC4CEF1
	for <ddprobe@lists.linux.dev>; Sun,  7 Sep 2025 05:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757222993;
	bh=S4o55Qpem5AZovxh3sT8AnSiwNWsjDsKXXHRpOIzotE=;
	h=To:Subject:From:Date:From;
	b=C6elMmqsFLvSWb2CGQ7vcLz02MJwlgsdewDRbDLsXNnDmvMrGEUvzhl5n38kVdrL3
	 N1VsMcjERJ7UnzkSio2or4IN+DaD1ETSJg/yfEpeLTWET1wPy7VoFJ1Zw7J8+23csA
	 AKKn4SLkVQ0u/ZdtMrbMA9r0vHqI2y1Aypt02AIUGhWA6nI9tiXIrK+Wi/rU2lA187
	 P+cbLwPqy++OoPfvS9rtYTvcjAij3blWK/URDTbffeGCQzAvS89iBEDWS8sdueMNPP
	 KXgNoIkGc4iYuJ/zUzv8WkXce7CbAkhVX6+Lj0zX4QcOLYuac+nwacA0nandQDRhbl
	 I+DrCJKzrzaPg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94160CA1017
	for <ddprobe@lists.linux.dev>; Sun,  7 Sep 2025 05:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175722299357.22060.4301314535390860289.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6ee1d59094ef9c694681d663319b53b6d8fa3bccb26f9083c3d29e14687e0e2b
Date: Sun, 07 Sep 2025 05:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757222993
