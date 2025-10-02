Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 169762F28EB
	for <ddprobe@lists.linux.dev>; Thu,  2 Oct 2025 08:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759393794; cv=none; b=Vq+75MPv3XNGJfo5mCsx0w8naDGIeoatk1KUA/RdrjUhiHwFEZNRy913Wc56hTOFXzUxzZoAURPjSxtRNO9faYVAIskoUI49nAHkkc/SfZrjhyS3Y3/Hoe5yaH3E2qGQb3JSBy3LZeSOSISqxhLo+U616UvUbT6YpH9fr42eCF0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759393794; c=relaxed/simple;
	bh=UVboUelZx706GPeTxtn11MbnCw5n8mK8AwyGG4fM2O8=;
	h=To:Subject:From:Message-Id:Date; b=plUCbJjma1fT7HYFIOi2tIXr+ld6gaHcbQCfgtxz0f9UIe88hKpELLjdeKX8bSX5tpDyAwK7Xi4mq/uFc/bqsP+vnfWel/5tf2IdLg2d+Kw6xkoLh5BAKDlu5XIEU6vRBj0M7Q1+lvLp3mpg7zul/q2yylm77tlio/F/kBmzPmA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SDkhMMXF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SDkhMMXF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3CEAC4CEF4
	for <ddprobe@lists.linux.dev>; Thu,  2 Oct 2025 08:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759393793;
	bh=UVboUelZx706GPeTxtn11MbnCw5n8mK8AwyGG4fM2O8=;
	h=To:Subject:From:Date:From;
	b=SDkhMMXF36d7RT4VylX7d4HJNvHYLnOM5vMyOLA6+e4opQ7VjW97bMftsb2qsbz0n
	 tGmxPu/IJuG76Gy+e2XHA/E+iVcfYgIrV5IRsL9ZtH7FoXXmJ4q3Dr4+hk8L21eai/
	 FwWp84lLJ5sFp3nImj8rKwdHz20D6u5UFQi5HeIXeC/rsEkWksPBk17HzMovTENXpI
	 QDtdE0VG3iM6T+BXNsFjIzHQMjlmg32W5OyhNW8+cjTZOdokHRYG3Q/Vho9/TR4GAm
	 jcYjXm77gA1Jvten7rbB95z5WYGQXcKy4LEIpNJQoBaM/XdGkhOb8SGE5cAjpcRuMo
	 72454rO715pTQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 914FFCAC5B8
	for <ddprobe@lists.linux.dev>; Thu,  2 Oct 2025 08:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175939379358.12584.8389563347343162007.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1429ec592e2174b4f3248a3b3ecbd07a722a9ba6b0a3742281d6457ca7093e43
Date: Thu, 02 Oct 2025 08:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759393793
