Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 93AD0D512
	for <ddprobe@lists.linux.dev>; Sat, 25 May 2024 23:54:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716681263; cv=none; b=f1/+QmcoYEr2i5SkGdz4tPFNuBLDBxFn7UlteAnx08LNJYikRgJ1PyFY2t5LRMzTz3xdKKKfokLGj/ovewejDQtkMrgLYL/kRtEYAzLiXfyFbElmc0SMSILNbJuSnV0I2TjUu4sjhQNggth4hubN6B9vnOnC3w7PJrL+4tZMzLQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716681263; c=relaxed/simple;
	bh=Jo41w/VdVN1Gadht8do/FzXvBVpv8zGQTcu1BL32awY=;
	h=To:Subject:From:Message-Id:Date; b=G3A8vop3Wbrf3iS28Ze5CJu98veQi0p/tvkKOr5xOy++zL6/KfByBDApe1uZcg8QTFjbJNgKOeaP9n3mxGy8yrz/aPuu59+56gQh9YGqP5VXAcBgdLDMdrZUSORCfOBGMpshB1hXEfvyMEXiv7tI4B6BEudxd5YTJu1YL8TaWQk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Nr4h7GuW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Nr4h7GuW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 18967C2BD11
	for <ddprobe@lists.linux.dev>; Sat, 25 May 2024 23:54:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716681263;
	bh=Jo41w/VdVN1Gadht8do/FzXvBVpv8zGQTcu1BL32awY=;
	h=To:Subject:From:Date:From;
	b=Nr4h7GuWdea8WrG4HrRMuocMAANCcYNnJ/bbFbA2nEAs9On7QFJ+eCdSSHiPElG1R
	 Slb+b2xEV5pdE1EbbzQbg34+9FxHU46q/EFllNHSRe6YJrPIjJlpSPLK7pH/pg+aWf
	 j0GNyALparzTekJ+OZAv+gaZA2UGnneGp/9mPZa3gNUZgaK512bsrABccR/kkQhV/r
	 wF7KI1c1XqOx4dKYcuhmAa3EuQH8qkGyfDVlz8vzsukpc2i7aozVZWt7cEam3QfJMP
	 Ao6ogv3RHRm/vQ7m6sgK2cojGPon3b242Wb4AzxHHB9/IeLPTJmNbhePAziXNkHkmT
	 UuGdIGdz3rDOA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id EDBA6C25B78
	for <ddprobe@lists.linux.dev>; Sat, 25 May 2024 23:54:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171668126288.30418.11729145961541436092.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: da94ac250543e0b043e0658e1c78f49fb8e311ba30aaa46b5f80872142921e5d
Date: Sat, 25 May 2024 23:54:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716681262
