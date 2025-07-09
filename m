Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CF264207A3A
	for <ddprobe@lists.linux.dev>; Wed,  9 Jul 2025 16:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752078593; cv=none; b=HXJxyVf4z/R4rj4tcd16fSnhZI/Y10ZxiK6RdY9uApCoePIyHykWAPibf8dYl4f25knCfGYP4g/XJA9QLJSynFYBDDEDtdn4mU3KJejsliaafsyYFPdYcY6p3xjxxT9eQHj+HSpsk03jCOAJqxIUBjCa67ZdGanVzeS78jKvt3A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752078593; c=relaxed/simple;
	bh=NZO7K3fu5rbVuFZIjY7RK16J7Mr8Kim1GvqJBboDTds=;
	h=To:Subject:From:Message-Id:Date; b=bYeECLy4aKHPtqMmOG6HC04o9cA41FmKeyWegsBkTSXkUHmdCYBv2RvZvzYAr13QTim9l9HvNPWCVkrjkHscEZv+4Pz24fnDgt77jfBA3JDGUKe3HynY1ptzLthwOPEl2w4Oby+IsytOX+meHyxGcF/CEk4u0gwv4Rv+evx1OTU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=V5BihvQA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="V5BihvQA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CBDBC4CEEF
	for <ddprobe@lists.linux.dev>; Wed,  9 Jul 2025 16:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752078593;
	bh=NZO7K3fu5rbVuFZIjY7RK16J7Mr8Kim1GvqJBboDTds=;
	h=To:Subject:From:Date:From;
	b=V5BihvQArx/8ygYWU8/aXRCyYuGH1toBjMlEDmO9iQlAcrjOW0KJ03CS6S7MSO0Gs
	 AZPU7gU80vmJ8q4Q5xoIovrz0z1XZjgfF09FbQW1YTi0Y2fs8VvA9YifLsbQiQEM8x
	 YfvVvlEax2IeBnwP3QFTYoOZx5r0LXA8mgKRp+g0l+TMibsGapGgTfXxgJHin0r9be
	 3n49GQUHEsonbeOSzsvi+JCN64LCzGeexbck+U8lorwNUJuAlVbCaRRSsCWenk+0LE
	 gjJUkEPLx48tRKoWFURJc8hn/Fccl7M/OsD5wO8hcw0g0KMAID8w2YViWKIGLxDWgS
	 qt9aAD2kVawyw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F8CDC83F03
	for <ddprobe@lists.linux.dev>; Wed,  9 Jul 2025 16:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175207859357.5531.6319879715190986768.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4f7c12d6bd78a3737606400c31facd61c8b1d829478d3254ba314c101da76e76
Date: Wed, 09 Jul 2025 16:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752078593
