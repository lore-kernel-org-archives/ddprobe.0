Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3500815380A
	for <ddprobe@lists.linux.dev>; Wed, 18 Dec 2024 19:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734549354; cv=none; b=VbtOFuJCXypIQUG3O0p2aa8svrDA0VsANZDC4611UPahFkdsz5zax/1XJlGXkxurAU+k85xOu2Lq6WpxPCVyhiO0mHndPbVURvuq79QSOn8zise47u/gbIbA2rM6kgTFxw8VLP04bfy84YrRyKDu6TtCDo9nwUK93w1iVHlqGrg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734549354; c=relaxed/simple;
	bh=y9g8vtyTfNKxKyiXHf6hH2a9br2QlSyt6T1yGHq2OZY=;
	h=To:Subject:From:Message-Id:Date; b=X4z+wUm50IiCsTQXmJN1BBDnAFY80wnJe1tYgK/5542nr8q3jT3hDNXEw32QtvEc0n3NFdz0Mgsh8hkxj61uBPMcMYznSfXvuXE81d5YzRfBefVDZMQk2ulk9bB+WSFSjbIahmNEJTszscBlri45C1tktn3CJoS650NvnFg94xM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RGc/DOhw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RGc/DOhw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA42BC4CECD
	for <ddprobe@lists.linux.dev>; Wed, 18 Dec 2024 19:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734549353;
	bh=y9g8vtyTfNKxKyiXHf6hH2a9br2QlSyt6T1yGHq2OZY=;
	h=To:Subject:From:Date:From;
	b=RGc/DOhwsP9mk7+pObPDTlXJvnQKkMzZ/P6J1n512KHPqVaqkDzd1k37ztN5wtxyT
	 nFz0FR8GT+rufsD70OSH+qXudsgL8wjYiPCairRdqnjKoMpBt2HB/u5NzkfsaIAHt1
	 SnrRUQ45TzYywu7BhQ/j3WGVFyPNkDvFA3HnEjDlhJDlxWhCwCHDkpsBKY+Ugtm64T
	 f11t5qG5VqWHBj0wMOvKNgDQxavMQxn05LTnSXuBsuGx5TiW26vleU0ZWkMfhyir4F
	 lYqTC8NUUiJ5EvJI5awfgMYa+767X4V9YjQYbbnXBTwjSKbOt6YTUFwrkAYt7NVewf
	 eEcgk9Z+Of1Lg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 910BDE77187
	for <ddprobe@lists.linux.dev>; Wed, 18 Dec 2024 19:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173454935358.25323.6767039630276226955.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3afc157220a15b63991459daa987ce8bfd9babe962f7689d66c91601f84f3b3c
Date: Wed, 18 Dec 2024 19:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734549353
