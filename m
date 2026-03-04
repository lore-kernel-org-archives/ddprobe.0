Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F37CA3D301B
	for <ddprobe@lists.linux.dev>; Wed,  4 Mar 2026 18:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772650494; cv=none; b=qVUnlPOWebHkuTM5kF0ImGKG+ILKg6clM31QUcyGP/alyTA1njU2/ojlELd9wrwNp/q7eciTkShluAsX5+HgjKUFQCnC8h7CGMNFcdqFXp5RPmn8niMxv5fJRtgghR5p8trz4Sm4rZ9ynoSQNC6MWnLztEY4zL9GLRwQqOU01e0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772650494; c=relaxed/simple;
	bh=VW6qQs2XMCNVB7TOjrhHTEtmw/O8O9DyR9gb3XeOT38=;
	h=To:Subject:From:Message-Id:Date; b=PXJ6BGtvEiBgWbSmiINfYNlKdhOmhFGexMmjcQSi5qNRATH8Qp4jkJJegQx/9NyDJpyvE4DcVM4b9Hs3ysI7vpN8LbyeXFHhoOGjrEMbuOX9VeaN+ht28VySMxu/LPp/GnMere+AryK5lKDADwwzLB3midj9rSVtYBwQa3XA/5o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YJa5BoX5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YJa5BoX5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 973EBC4CEF7
	for <ddprobe@lists.linux.dev>; Wed,  4 Mar 2026 18:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772650493;
	bh=VW6qQs2XMCNVB7TOjrhHTEtmw/O8O9DyR9gb3XeOT38=;
	h=To:Subject:From:Date:From;
	b=YJa5BoX54o8fUnyigDJ8+sPYO3YB9n3qAKsGKf3+jvlsCGbw8IBcWwh2hT+DIVTcI
	 g/Pu2R2eQ802sNp2HvhjU8GLu1LEbxhOujkizBtCuVAgs8r9yy3+CURbRBgzJDBMop
	 5RoREu6RGa3mybimlyidOTBKJLY3Z3i34H9dXGjXIn7eHxlgogezepPdHr3QfIJT35
	 SDvVIrnZh0Cz+YNtDAF07ktE7dvB9jmOH/cQq3SCoFEhJPZbg5fyDw0XaTeU9XaWrV
	 CRo54ga/ElU9wZEXZhgB9/RuvADiGWjsyAuCiwLOUkBwQpB0sa0HFX4td5SvKa6+iZ
	 PS9aO6xYqQ/YA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9233BEFCE3B
	for <ddprobe@lists.linux.dev>; Wed,  4 Mar 2026 18:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177265049358.14336.17596593031575078473.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5d1870febe375baf56ecc58662bf3051dfa1ba8b1f0b0a7233df762d179bdea2
Date: Wed, 04 Mar 2026 18:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772650493
