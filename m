Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F1D4366836
	for <ddprobe@lists.linux.dev>; Wed,  4 Mar 2026 11:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772622894; cv=none; b=MnhU//Rcr6Q5r22OWWViCerO3ucouYWcRTm7dQOVmpS/a9OJKwmUyUnslJEsbCxXqgsk4cug0kI7ZascqaV8uNRnEE7xWW3LkOTFyjlqpCD0TZWduMg1CTrjHDrknE7slMT/rBUrsuRn4kHZCX8pwFm8ZdSxcXAVrY/lNC7w1og=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772622894; c=relaxed/simple;
	bh=Ts6ZBaD2VvpZWQqbW5jySu87BYidpBDm1mt0TsvQwvM=;
	h=To:Subject:From:Message-Id:Date; b=Omd4VUPdo4CEg+3UHlnNlpNuQGkiapDsU0AzEjuLfC3F9NJccm36vZyjtyqsxQsN0Zx+6/lBD5YYj/J8OtQJZBkdfS+K6Z1ZiWt0MHEmcLRf1QkMPbm/1jvPeCAzT+bPCx3AErVtz70HHUHrUMND8+ayjmQH2y+GowFdxqLCT4Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hYyM/Uk4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hYyM/Uk4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9A4BC19423
	for <ddprobe@lists.linux.dev>; Wed,  4 Mar 2026 11:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772622893;
	bh=Ts6ZBaD2VvpZWQqbW5jySu87BYidpBDm1mt0TsvQwvM=;
	h=To:Subject:From:Date:From;
	b=hYyM/Uk40cojrz5dngWiRUuYbMRmjhrXiYtvqHDNBfgpmOq/bIEhDIvA5M7cQ40Kf
	 9p7vu1Ax3i2d7wYaULwU1ipJhbS50LKL9u1kGF+pNALMX/C8t38Hg3zsnQUDSQbEMA
	 xLQg9/r75I010LkEUf6PBfBEq8JHEIbfdgoTQwMoz6OwnPdFE448iocBV+QVR4nzgf
	 nyuY3usFsxTqH89s1ZFvKiht/z82Wu2EVUUIYxMJr8oHj6Frslx7NIUjgNDJscF+VE
	 yzCWk/48IfWiLxgVKobdXDX5JDo3t7F4J6sEUcHG6BQHQ5nD4q9IaL7v9Pk2bU2Iev
	 EcpITr/gQshzw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A3465EB7EB8
	for <ddprobe@lists.linux.dev>; Wed,  4 Mar 2026 11:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177262289362.31775.2341308486699116490.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 854b9461208ef08e9f53dce6d07d78cc49a8a766bdccb3f1e5b61bc6495dc380
Date: Wed, 04 Mar 2026 11:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772622893
