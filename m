Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 294F921256F
	for <ddprobe@lists.linux.dev>; Fri, 15 Aug 2025 18:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755283794; cv=none; b=jQDQs458OaERuRNtFfQQFANzo4ZahzlFsYc147zzV/lLHhTuHLcIyqAGhdi9qT8vsfPCUu1zmeJCfY8Q95PeN2W4Ud2fAXf1A4BKDI2QLUGmHjWOuDddppUz/YjxejzrnHcJmMwuWD3iLNARTALrxRIRuGvLOC2SHkremLaez60=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755283794; c=relaxed/simple;
	bh=xRuHykJBEa0Dc0/L8OUdkt6vbjf6nmGVmFgNrpQm+/g=;
	h=To:Subject:From:Message-Id:Date; b=g8kq336N84TV3AvwG6IrT8X8HiS30LuxbEtaMk4FZyR9e4IN3gmEvcr2HgzaZm8szE0TXAU72fDyyy3lAugScs6GECdkGjXmoX7pYgHZaHLUahT7aOWcgB7VHepuCZ9v4VaL2SR2vlypODj5PJndn8YHjvjJiHayBz9olsYu6Nk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VQafsXcs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VQafsXcs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A03A4C4CEEB
	for <ddprobe@lists.linux.dev>; Fri, 15 Aug 2025 18:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755283793;
	bh=xRuHykJBEa0Dc0/L8OUdkt6vbjf6nmGVmFgNrpQm+/g=;
	h=To:Subject:From:Date:From;
	b=VQafsXcsWLrYG2pVzFg+0E5QvqL6Ic2G57v0yS/+Rwv5iAGpJDA3IGurpg18ghC62
	 zFUSKT+Jt+IT9+qWsIIy1Fnr2GtRjWsMzvF5SPE1Kj3IkO+zVgQRN0dxLs7DEb+Y4p
	 5WLoDJjpo4j1YRypUKKgtIWtr407KC5ZL9ffvCv9/MoiGygomGNXEPqITBphueHLZM
	 B33X0QsbOPGWfzOB2CoYPv70WnctImC1mkN8RXipvlRBzuR56EGhdE+k6vTcYzZoVS
	 3uV0wqjqWnNpDMLonaleQpE7rEGqdGZHP7s0rwJJ6lU8gdEt7yeNTqp+UrixTcaoyr
	 1TiviZqtn/8NA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F4DCCA0EE4
	for <ddprobe@lists.linux.dev>; Fri, 15 Aug 2025 18:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175528379357.1035.18444906442450779502.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 941174a266d34912bf53be632ae72b091b322aacaae28a77848a073a7e539f7a
Date: Fri, 15 Aug 2025 18:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755283793
