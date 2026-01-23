Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4578336EA87
	for <ddprobe@lists.linux.dev>; Fri, 23 Jan 2026 07:13:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769152434; cv=none; b=qWAAVBvEtfg2eI8lJOaLx1qixxNE+tan69H/wgFBrREVnzz/DTlofpVSi0RiDaqAUYOEUIcKH97Vt0WrBdK6SVlzYm23clcAoM6mPzBD6IT1g/iThBzg41/WdWDLu5Juz4JY26xouQj+4tiSWjo8ipR3bt8vp3Y1Su3yAQ7+nnU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769152434; c=relaxed/simple;
	bh=mrBUCyp45vrauqMe7/MGUZFPTob8oFw4krT1lxyli7A=;
	h=To:Subject:From:Message-Id:Date; b=fR5kMJtxjbG55Z/qw3yK1keauloXbJ/5vfJkOqjdm6KfZpMO3cD8ju7bOqBuOHkypD696wc5gOu8DJpdChZGIKpZltOjReAxPo3k+THIBfxeQHXaFqX/lG4mxZGdpdryy3Yr1/kC3puDB/jLo3bIdomRvg/FwZJf/+4Y8IABH/o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=r/iIztdM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="r/iIztdM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1A6DC116D0
	for <ddprobe@lists.linux.dev>; Fri, 23 Jan 2026 07:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769152433;
	bh=mrBUCyp45vrauqMe7/MGUZFPTob8oFw4krT1lxyli7A=;
	h=To:Subject:From:Date:From;
	b=r/iIztdMbxK/89Ktff3tFQZW1U//ng2j+9ptfA+aCDuULaAmdw8VSrKXt1gyJimr/
	 HA2n9VWNNq9TQjT5iEsGDGp6Zs1ryfd6L4xwJTsO+wcwFPM+hhBS12QODOdZwWkjzt
	 sdlsMPK78gaJuP2SPSoMExr3ep+4h0G51kuk+F3aoUV5zX1BouJIcV3BhhZk2S7D1B
	 /VuK2nhkxFqbgnC2d/0HfRLTAYf5Y5j8OMK5FiAL14n++23PEAc7RFVr8IJivMSuCT
	 8ZpDbDUWnjB0RTLK8WUtvOi5cHYcl7Pp125f14PTkRDjr7uZbkIGr3tHaedaulPJuG
	 plZ+XS0XdElFA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A00C2D6261A
	for <ddprobe@lists.linux.dev>; Fri, 23 Jan 2026 07:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176915243364.28080.10817589563506820053.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 47ccadff71b9c47bd6ddb4a4b22d68ffe795f24dd2826202919ddf4f2f65cb60
Date: Fri, 23 Jan 2026 07:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769152433
