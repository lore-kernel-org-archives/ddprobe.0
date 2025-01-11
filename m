Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46B67D299
	for <ddprobe@lists.linux.dev>; Sat, 11 Jan 2025 01:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736560554; cv=none; b=LIz9FhmdQ59KqaXaEhYkAFGO/MOiAVWZ8vQ0WbVCkbl9Sy3k4AO6lawhA6X3yGZICfjvmkWLKPqGlesXWiMa93hUH8V9+9AV+MhW52wLvhKIYKgEu8QCLMWP7PL812C7Co8C/ZBDzOth5EMt4qdN3+hbEplMEF6z/ARiSwvLxd8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736560554; c=relaxed/simple;
	bh=A60zQjdv8isT9xFbbtlgc9w0yGHVuoSG82QRKTYQwkM=;
	h=To:Subject:From:Message-Id:Date; b=tzaMbm5/VUsgBkAAz8AB2hxwVzBegorMjPVSM6DeRhwMwxbn/e9KA4bdAiQym2MQGw5tu4/tfFIv2VKwf9rOO1VUw8++ghOkBel5y842LkS4JKyM0x0LWT5n0shbSOctlUsLIis3yyJJ1nKJHkIvr8sibGfs1Rkk83uZ/jGg/ak=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vCYCdGjh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vCYCdGjh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF349C4CEE0
	for <ddprobe@lists.linux.dev>; Sat, 11 Jan 2025 01:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736560553;
	bh=A60zQjdv8isT9xFbbtlgc9w0yGHVuoSG82QRKTYQwkM=;
	h=To:Subject:From:Date:From;
	b=vCYCdGjhYpWCzA1YFDRkY96orlpj4Qct6FGZVwRa5VHxjgFCTZTyEDKS63Kdplk/w
	 XG9GjIDgrJ1loaH2GCVkfcl6PAB/3TZxWvFF42eqTkipArJL+zckzsWnNKU5r+8Q5l
	 M7P0nr5KT6y7MORQIuaFEltW4QVh2D4KfhRI9GovIdKKgkifj6FMGnjXOcYdzrWMak
	 lZ2mFGT17jYNfkshR4NPN98Jm5xCOkfAOWE0uITXzhbNBc2hEHeVxjd8eFmMNSjxkZ
	 ljiOsewbqj5o5BuFJtfKmmQNIwVl0+3Cy2yPBQpHeWvb9xs7frVvXltwfwPF/BK49J
	 Iuv/7QufGm2Xw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93172E77188
	for <ddprobe@lists.linux.dev>; Sat, 11 Jan 2025 01:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173656055358.30427.18163149746162389303.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 91fff7c6c9d8b90da6a770cea49c6bf788a89a3b1d3ee2eac404fde8240d8adb
Date: Sat, 11 Jan 2025 01:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736560553
