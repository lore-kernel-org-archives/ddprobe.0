Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A20A1BC9E2
	for <ddprobe@lists.linux.dev>; Thu, 26 Jun 2025 05:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750915795; cv=none; b=TWqUjA/rknANQTPNaUghGzU+cNbsJC5PFMhD7Ylg9jDN3/MOEy5NxpG3um5UYGpIE7MNXwwr/qAaG/DhbzeGfViLhHWH8krdAbPFVhoVnzyTyrnhtN10JEcKxmxxOa6QPfV4BNusxK2t201YqnxwZxzypcqxTma5nznnrdspMPE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750915795; c=relaxed/simple;
	bh=i99W2OnxwSxPV9fXFFyH6n963Gm3SIus9M8wBwhp2eA=;
	h=To:Subject:From:Message-Id:Date; b=dMM4FVQwRu3DHqsl/ZO0yjSQyfbsLEl+TK2tWe9DTtvPsilLZtxxqsJjU5zypnTBxnl4rwCez00nmCy1TX7lASs+v7yT/2oSBBvrkyyfywU1+69uuLmg+3xIrwzUrSF0bdkQhyfN7rI1CQiNvQiRd3JRGHcX6oLGRE3kFrXATvk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XfocI5kz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XfocI5kz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4091C4CEEB
	for <ddprobe@lists.linux.dev>; Thu, 26 Jun 2025 05:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750915793;
	bh=i99W2OnxwSxPV9fXFFyH6n963Gm3SIus9M8wBwhp2eA=;
	h=To:Subject:From:Date:From;
	b=XfocI5kzbBF6LB730f5RXxoc/zyknShWD4AQxLd4ZwtkL8rXzdxtQL3T0YI0lLPJ0
	 V1HhcKk1e3KHXY5PnwNqQWDQyq8iNttOY64aeveD9kwbjAhaOtP6+8omlTM2ZszgYp
	 WHotp2Z3iKdL0MSZncbXKCgXzbiyBk8eQv/XlLnjHA0T9z3UmxQQAdqoS76L7VouOD
	 0jKn+KpZqOJEQnCB+HOseGS4PnRxHgX+Q2rrol0E2U4NihHuUA2viZvv2IRcqkDhuM
	 0KOkIjLlj0rSVPMZ+rSDSS226TYW+9W+k6s9H61qfVvTBESnRBpV+yn/nAHBwsut0K
	 L/cMp9Wy2Kpfg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90A95C77B7F
	for <ddprobe@lists.linux.dev>; Thu, 26 Jun 2025 05:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175091579358.31426.15470212674190501740.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c6a3f8dd7e5fef2971d6de8980f144ebb40431f8a6f4addcb134b63364c14e55
Date: Thu, 26 Jun 2025 05:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750915793
