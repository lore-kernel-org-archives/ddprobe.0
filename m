Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E63A1C6B4
	for <ddprobe@lists.linux.dev>; Wed, 10 Dec 2025 01:52:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765331574; cv=none; b=SrfvN658mUR2pMgBPKS9mzLzUS2KU3tm7cywZzuqoglmEzBnuFv0lwam/6/TCd9dHcjTk9HCuEsha3OIJgUS28mZxisewS1p2H8CyKwaJBRGqM1c0Aw58lqfhY3vAo5WESK1eGxUYaE0XXsBRQaLddWy8H5lPW5lTvzKtWih8bU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765331574; c=relaxed/simple;
	bh=Cb5gvhXSaZ0Igh+Buh0RBICH6AzvWJ9JCrYRsU8oU4k=;
	h=To:Subject:From:Message-Id:Date; b=pjiz4nmp/IsM8+sJjSQZJcKfF3LM480VCMkI1uyBoXWSLBU2n/CDUVClQwlTnNeccaaBGih0h4WPs6t02D5aJ6tx+J5ci0riVtnHFJbNpwwkGT26Xt4HRCt3IJU2YejZrWxSXxBetndkIMhFrCwXWE6LWOh13jfLC2VQOtFOLzA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fDl0P4xk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fDl0P4xk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1EB4C4CEF5
	for <ddprobe@lists.linux.dev>; Wed, 10 Dec 2025 01:52:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765331573;
	bh=Cb5gvhXSaZ0Igh+Buh0RBICH6AzvWJ9JCrYRsU8oU4k=;
	h=To:Subject:From:Date:From;
	b=fDl0P4xkUAUJrbkzu65yL60U8O21p8LWkuyINKOVrxtBuDs8IgcuBxLAur+aaDr8T
	 gNfsgPXyK4Zc72wKVJEz1x8WjWFVv0DoBJHAmIaa9gA/n0Evo+HnKgTx09Pn4XFesg
	 0T5NVnkGuxTLcQ/fZ5+6P0Fa06A77X9AlIG6sA67+sGVCW13j27A1dxYclLgs/9sBQ
	 ktwWBICbTUgNcYNZ9Cad2D6N36SCD9Oe8v6thYifJllmLFVXC03Z3KS0o7ofeEA9NS
	 TtulXfjBOIkP8F9TWy/v2Ps+ftpr/PRqPW84Ohk9tzMTAjQNW2g9+vGY1RjAHio487
	 CYokIzTxkl4UA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9DBDFD3B9B7
	for <ddprobe@lists.linux.dev>; Wed, 10 Dec 2025 01:52:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176533157363.27980.8817112685175910454.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9dc38e0ed164d674ab59fe6526e321a70489d74e3323c25b356711ca7b04f3bb
Date: Wed, 10 Dec 2025 01:52:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765331573
