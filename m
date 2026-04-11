Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 291B1191
	for <ddprobe@lists.linux.dev>; Sat, 11 Apr 2026 22:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775945854; cv=none; b=WZf5kZH39ZSao1sxAnNGsbvQwoQczTbPv6phIY8EnESe7k8KL6cPHPYsJMt9kuBWQTdTGrAgi1G3dtb9oFXtJy2erBztDZyJDE1Nq0mkmkGcq60P81clNioCMcRcYnuezx0MAABrQZg3oTe4gYLRg0kSBr8ou5KJ+AbLz+isuyg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775945854; c=relaxed/simple;
	bh=IWBkBIBQPBrlE5dZdi7L1rclfEtsE7d4SZYUkXfjpYQ=;
	h=To:Subject:From:Message-Id:Date; b=JS0QhKrgT5CyVj54G3D1knjlgerktqY0zduQlrQNO34zC2sRO40H90G/zrg6BdGDOKIVvhKTcqZwBXpaCzmXCJtrtavfSxsRgSJAS5E6147bmZxEaqOqYB/u1mtY+64/7ifw9Ecb/CI+IqTtROUKyH+swoTk042MFbv5wSWL7YM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Sfwpk3sg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Sfwpk3sg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2507C116C6
	for <ddprobe@lists.linux.dev>; Sat, 11 Apr 2026 22:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775945853;
	bh=IWBkBIBQPBrlE5dZdi7L1rclfEtsE7d4SZYUkXfjpYQ=;
	h=To:Subject:From:Date:From;
	b=Sfwpk3sgh6EoaBg9cWewWKyjh6MqKOkHsXCfPhlqK89Mwu4+VqsRJHDZPHGYgZZ9U
	 NhTmw7nzp505tAeKOTcEXDF04nMBfIUCWMIbpnmbtnSKGFaG2ykWeLh8wRAtFm9Ty1
	 XdILLB5bIJEjyylz/hXCXMvzI/Am9ENJSe2xhrUWtQSZWiFMtUbiSQx947dvRMRRq9
	 hmysUEBCW7bJtOXN3feCsnQz8qK5HX5rQSgrmmEf4MvsmMY9ATn1jezNXFm9u1Gnx5
	 hO8nKvldgIfw5hjk7Z5tTkqHwXqMC2/umiW/F+lxd5BawX0WmVrnkZVrYTzKxUCvB7
	 V5ty4snYx37jQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD8E0F3ED66
	for <ddprobe@lists.linux.dev>; Sat, 11 Apr 2026 22:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177594585368.3606.17200549496833983102.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c0d0f00e6176615a6fcfdd096f5ffd030620ac37cc1a9e4f1d23bdc06cb4a1ec
Date: Sat, 11 Apr 2026 22:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775945853
