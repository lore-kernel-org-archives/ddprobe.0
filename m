Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4424513A244
	for <ddprobe@lists.linux.dev>; Sat, 11 Jul 2026 15:48:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783784914; cv=none; b=Humek0BT21kbZe+5KRgqalZhq8gNXh2DbUS3wu/FzYtNIPVqx1Zy0i+EwV3AiyDTh1RtLVluTDHUHFtaBtHTKcEf4lHg8OE0m/lVkKyZOX22WP+D6KSfKPyw2gcNLfPD3XRjNrHxdx0/gOEFjT44hRlF8iJaehDC2Fc1LZGzx18=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783784914; c=relaxed/simple;
	bh=JsZg39IXCYBxBfL+Vg4u7jilfMFjwCf4Ss+vbPixtRE=;
	h=To:Subject:From:Message-Id:Date; b=DtBbMBuj/SZiRYFQMkOUur5aDEvyu6HDewGRjxjdpqZoTx/AFnT+WJGoWmwaf+QYlWA3Khph+DNp7o54pfDAMi30o9eoFLeSnhsksA9JLhN2rFZpOjTUf1PWvTqtaKUa19M+9YCgIck9tzs4vtPAfW3W17u4wsDn0QTN+IUaLWk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Oh8h5Ldc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Oh8h5Ldc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3502C2BCB3
	for <ddprobe@lists.linux.dev>; Sat, 11 Jul 2026 15:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783784913;
	bh=JsZg39IXCYBxBfL+Vg4u7jilfMFjwCf4Ss+vbPixtRE=;
	h=To:Subject:From:Date:From;
	b=Oh8h5LdcKbYNQli59xtFSQs5wcetFGBEunWZQz89pwnphvprn/KJUpH6xAfoJSkQo
	 RmHaH8EWUvSykXRZTXILR4QC0G+R8SdTkKIPa7jl/NiWDYLe6udndNB+qYdLY6VWg9
	 coxcoVZ6aotDqVdBy62QpZ3Om2XoUyQG+h48ISAJsF4P8HZDt9Zq29ldgaIn1uGACG
	 WhTmppam3xoDh2kURCnBnz/6Ed1eNwEY/gaZIDg8t4t5phleAFNRVeXJiescrdCGlM
	 LnpuPGhp3kYZjeMUzWvbj4AeYwqWwVV0dEreCCfldv7ZE5xLi66tL1ZAwoIwLjF8J3
	 xl3BGc1d7PPEw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD282C43458
	for <ddprobe@lists.linux.dev>; Sat, 11 Jul 2026 15:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178378491368.2138.2164561527942359729.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f9577bf0d1a35953b0819e807141b581607255d1546d8664634b60dedaab2056
Date: Sat, 11 Jul 2026 15:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783784913
