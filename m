Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 10B031EB3E
	for <ddprobe@lists.linux.dev>; Wed, 13 Nov 2024 13:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731503754; cv=none; b=B32kOU6SN4dtyoS7AF6y74gLT4O6RtOABckoawxeW7bfgHEiEo7VUFiCDkqrt6WBT8KQ/dU9bbTokYJZpT2uV9RHGdJwZxdkh4b0O/P2rpOSezopdwoDzyiDMZT7qMTrftdw5WmnC/5DWxgFKofaGfBz7qDdf19SbWyRZNLEFj8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731503754; c=relaxed/simple;
	bh=6PW4KV4IE0L4TtNSO6Czs/ZXBsmU+GcQD610MS971JM=;
	h=To:Subject:From:Message-Id:Date; b=r4CKXbrqPDdk30qybIYXwIaOUJDdYNWUKuxSpL8Sev5xdflFNepTE6v9V9KUMGxWjkQur0HBkyb5OFn3m51ZzLggng3Ae6U0E8wjNJx/nwherJIzpy08pfNCXOn5NS/udgk6rKgHNcow10hkdX6D8nlOksOWFBmkgajNthunWM0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hoxnL4JL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hoxnL4JL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4434C4CECD
	for <ddprobe@lists.linux.dev>; Wed, 13 Nov 2024 13:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1731503753;
	bh=6PW4KV4IE0L4TtNSO6Czs/ZXBsmU+GcQD610MS971JM=;
	h=To:Subject:From:Date:From;
	b=hoxnL4JLYQ+DQXioo1OHaQ4ZWbbsoyBRdZ9A+aZ29Neg01m5eW6bpV6GN91UlpWEx
	 v121xa/n2mrMrM/Y4LDWjXDZyUfFd0m9f6NmyFcxRr7/QIbLZaQCBxS98Ld7Rfrypm
	 3b2yeJPz0sT6mDhdbzNu2Tv+DTJZrpHriQmTqv0Z7NXutDmT1DeySPllEZ3E5G8zrF
	 zjz0k9amO76gJPtWWtm9FX2dKLtuBzJ3CS6tR+Vd6izwniDADzQ8R+Ap2wd0pWfVSZ
	 ZOhW+VaDw6O3s9O/q5qUnNPS3Bhz/ES500a77487NKjR0ttg79iFkLCe5gsTtDOs0o
	 5K78rkOurRp8g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90DC2D12D66
	for <ddprobe@lists.linux.dev>; Wed, 13 Nov 2024 13:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173150375358.17232.13024323217041104486.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bfc73eadbd879e3d1041aa7549857235a094ee7dec541a20caee8f8d468c48b3
Date: Wed, 13 Nov 2024 13:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1731503753
