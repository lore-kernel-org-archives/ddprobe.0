Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A8466EB79
	for <ddprobe@lists.linux.dev>; Fri,  2 May 2025 22:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746226194; cv=none; b=XAFGhPakdirAEQvQaU0+avwxrrBoPMiUIlpQ9QwDLGX3Y4j6DPK9hq79FYaWaT34EvYdXy80DRniVDTG+7K4IrZr/5XuRWRi8RefCIFoKd6RGCeaIRAfsAgSc89/IsNK7TXwdaK0lguypaYWIJuWUMnc8UlcUwjO7Veg9XnOsHo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746226194; c=relaxed/simple;
	bh=6rO9Op5NInWKitYYwR4xj5i2zolsDFUVgmA+NpczzW4=;
	h=To:Subject:From:Message-Id:Date; b=LHZt8+QdWQHYW7Sld+VyxzUlxfzXKDnTIPimqIdkdqd/SNCwd3zdUUJz18nzYOKagACeAH7DeueIQAvUnh8dT1jD9wVKfiVNIWfTUSXu2cV8yGLz/I1O8WQlHsq+I5bJewkSgt5Dt1T5iAxz2G5cyNzPrByc5R7lgu1Q6xzL46c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TXeQIw/9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TXeQIw/9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2DB0C4CEE4
	for <ddprobe@lists.linux.dev>; Fri,  2 May 2025 22:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746226193;
	bh=6rO9Op5NInWKitYYwR4xj5i2zolsDFUVgmA+NpczzW4=;
	h=To:Subject:From:Date:From;
	b=TXeQIw/99b0hcl/Aghk0HB5zp00FZVcqgxHgDaQqGxF2F3+xzgG1b7ufqZC2N6Vir
	 XTKm2Yhb9LFw5n81Ep+q/92Aiyq5FvaH28/Yv2687GyUYPzb8FU+vHatSiZH24m0dS
	 CWdTCmqvELnxzaVW7eccObmj1yo2jDi0if2fgzwt/7GvMqoY0VQFu7l/iWPTAF6J+/
	 XrfGRBOwV0zUh1SitXksUC79n7KaOsMn9Nc3DNku7SNrbX3//2uC2DsPTsONoXSfrO
	 K2o9/e9Yl5dlIno0Ghac5s4rvFTm3aQ9TDigvWJ+aFt1xhj/h0Zd8272Gr3SlaQ0C1
	 k0G45Yi2BZVlw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FAB2C3ABAC
	for <ddprobe@lists.linux.dev>; Fri,  2 May 2025 22:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174622619358.8568.16877710467386255938.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 861da5b35acce5a41d3343f6b68212efe7b88b7baab17f9698574a0a0de4fd87
Date: Fri, 02 May 2025 22:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746226193
