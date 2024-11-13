Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EB102200124
	for <ddprobe@lists.linux.dev>; Wed, 13 Nov 2024 11:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731497754; cv=none; b=jHhO7ycSNwQlZ6ig9xrid1WIqZk9lAXkLkLWDMzi06A0L12fWYu5Z4Fpkk9lSEHKnpDJAifPxvHJmg8xngNWG9TEOhvCuxwMxaNpZcXXAOaZAi36PJIySPINURzY5sjtLaAmbyw/wY1lPaIiw8PnVSKjOhuhZZclwT4RaZ5UPXs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731497754; c=relaxed/simple;
	bh=E+hbbNtuH0DBlEhri4s7ZqPIGGjQjRqrvG+VGNnPTvw=;
	h=To:Subject:From:Message-Id:Date; b=ZVjeytTViSz7rLZxsP3gjfw7HAKLdCHi6I9Qt5Am44VJHvZyrbUNZA0tEITXYnikO5FxDMZMqEawuHltMewkjCszlr2KDXdt/IqzdI+T0SGCaMlKPqkvByElq9M5tHAgXtu+FhVwaPUy0YHy3lx9sNRDh4FC/aEDY7NmY88s0ME=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=C3/+lTbv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="C3/+lTbv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C31DEC4CECD
	for <ddprobe@lists.linux.dev>; Wed, 13 Nov 2024 11:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1731497753;
	bh=E+hbbNtuH0DBlEhri4s7ZqPIGGjQjRqrvG+VGNnPTvw=;
	h=To:Subject:From:Date:From;
	b=C3/+lTbvK38eViIlcc+PbtD8lcwRZQ1g++SDjHylHV7HNrd1O/G2ZUfE0mBZYpyWW
	 nDNXKm8Z40Dc9YHrodXAAe7DTjh3AwZyw3vxVq/JP4CqYIVktvjLWtGcqMOZ9jFOxt
	 5iUAFhyreF9MA/2su6/b4Vn4t/cr/ERHfLUUfylZMtmIgRAv3nhSz/XONwOk8o8GOv
	 T9uuuydI+PWMqT2j2AdpujgDo/L2HxMbrJsGupGNtp5xZ8h7XDBbxpzrmKb09vbnL5
	 2rOauf9koy+XVFX+sVvAs2icyAjskR8cEzfrjPTzZqITQEQNgzzNO5xNsVOK7B/cMm
	 16d99KrR5Y/Wg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2A78D41C33
	for <ddprobe@lists.linux.dev>; Wed, 13 Nov 2024 11:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173149775372.8084.13529443865739710151.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f6378b35f754361f99d83ccb5dcc7d48cbaf2c49bb5d7d75572342e819d259f8
Date: Wed, 13 Nov 2024 11:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1731497753
