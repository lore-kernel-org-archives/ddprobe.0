Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E7E249659
	for <ddprobe@lists.linux.dev>; Tue, 14 Apr 2026 04:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776140254; cv=none; b=XbACsFvQGFj1VtDEzq1/dUwExFWKR1Jbqiuufb1g14kZeL0bleiCO1x5ryrExu7q+wWlliOVCrnYSREl7lBL7t+iISOObLuel70dvXMOZe7i/YGK83TOmdI7x90tn3ixJCJj0vhjPMV1ONbKaNjifilWUpjo926QLYKOgI4Op2g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776140254; c=relaxed/simple;
	bh=Yws8hnTDJsnkDv21EoJhyKx63XiqVl6QfDCGfGbVFKw=;
	h=To:Subject:From:Message-Id:Date; b=Fk4w20gNZrIuQPEwHo8vohIoM/G9Ldl8Z2n9ERCczdlqSRpfquUFDPRCZptGsYlyIQxpay+tuErEOg0jHW+mGzU4wc7SXSedcWouuyGRSpVwZst72ilbwAy89OSaViUL/h0WfgrJu9UVXqzzPeukOuPHBzkDM/9EldwQxEj6L1A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ecvUbe/n; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ecvUbe/n"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7DC9C19425
	for <ddprobe@lists.linux.dev>; Tue, 14 Apr 2026 04:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776140253;
	bh=Yws8hnTDJsnkDv21EoJhyKx63XiqVl6QfDCGfGbVFKw=;
	h=To:Subject:From:Date:From;
	b=ecvUbe/n+uJrWe1ZN1Czs6bMwsqD6aWK9yrGQ2lBb5LD1B7AGTEWDe6gzcIfsMNke
	 Gn/zhdNyMjkfx8aXm18rlCWQh23nKAOQ+AUTzo9ze7b4Wm0yySuN0SB89j5mlaA1vR
	 dYMg48nUtR4LKar2FS+SmTFWdhLhjS6ZgSuhAxCWATv0/TZnu2DLKrkOWCFEwg+GnO
	 rpIer1WkcEpIVdCZnvgwD1vlMVL+7CYgZ+n0u6dIlmufGQ1Aihs4fPj0beJoNdM9qA
	 nUOmjGT4R80cMMgSNWYHA5/a95pjFicmlurDW+ctnDvRvPT3vTHUUGsVhTwr2zzbds
	 kvO3lkW1c4Wsw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A97CAF531EF
	for <ddprobe@lists.linux.dev>; Tue, 14 Apr 2026 04:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177614025368.29229.2490893558819754570.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 650f90bb3befd453aa2241e8722b7ab5a0a999a147d3622e97cca8ede9f5b64c
Date: Tue, 14 Apr 2026 04:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776140253
