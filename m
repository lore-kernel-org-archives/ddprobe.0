Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41BEB267B96
	for <ddprobe@lists.linux.dev>; Fri,  9 May 2025 05:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746768594; cv=none; b=YenatCkGceksq/3FPmFO9N/QnOeuLusX9GF8AtfM6GBqMHCNKBHaHBeiR6II1vJjjc91liiZAxCJy28WbRBGZoDuMsoOQjb0TmG8qf6bAl9PFA5UPIg1T2giJuP6JAe89vVctuvNlpRolfAMdYpNSKoqY22JezKXgEsc4tAtb7A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746768594; c=relaxed/simple;
	bh=XwKE4Jy7Mzqb1fXCKw14r4uDEl/ovsPA3bv5bpPedJ0=;
	h=To:Subject:From:Message-Id:Date; b=KB72zdKQl8guH2Tbu9m5hKr9/ot1lXnPqmQynnRgwbOVufArkZZKGcsfUnoznH9zeo8CJCwiZOMCBP2+77fCgtkRqfCabqLiuzN06z2kd0oLNujRfCoKqeu78hbN5cNyGnM3sEca0kqHSe5WPKijWbfh0XCuer65snypg0shdFk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LWXi4k9O; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LWXi4k9O"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADF96C4CEE4
	for <ddprobe@lists.linux.dev>; Fri,  9 May 2025 05:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746768593;
	bh=XwKE4Jy7Mzqb1fXCKw14r4uDEl/ovsPA3bv5bpPedJ0=;
	h=To:Subject:From:Date:From;
	b=LWXi4k9O6Zlkm06ay4W9/OF0scEfRqOfISmrBLh8YcY/S1oe7ZKV1iop0pA7wbuU8
	 VzsiHIQIdoOpMBlpe1tIt3d3+tGKsIa1Dn/l5oNo7dd7eb9UNCVejCBD4Br6HHq1ai
	 NvGRGjMvvO5FEa++pKtj85wsp/UVazx4b6b37iZWLLhBdWyhQCNFYP1xpER5TEk5Au
	 1dvYG6rtTKEJRNtvbJZuRSfY4YgBGlSdc1JdF2aqcvRaGRDHB2vrH5SeUbW02YIpjc
	 6O+JkdEnRy1MtmXlQDTclWW8PEr8OK7OXIKpzl9wCVc4+0nvhcsDGiXtDqhmaNVR17
	 v4UOXynKHQNgA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 986FDC3ABBC
	for <ddprobe@lists.linux.dev>; Fri,  9 May 2025 05:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174676859359.12656.9976155492285039130.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3d97513c8f7d4dd9c8fc975dcc1f889b81f8b4986fd85abda7c62f85694e28d3
Date: Fri, 09 May 2025 05:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746768593
