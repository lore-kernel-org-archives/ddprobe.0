Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6913F17FD
	for <ddprobe@lists.linux.dev>; Wed, 10 Jul 2024 05:26:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720589183; cv=none; b=OsTHg47uQTWXKjiETZOhMKMMzu+DyXk44/UlY7xwB05L1S+xQYilM63ESpPDR1CQzBpSiXRjInpNTU58UhyQaUgtpo915esZ3Kuhh8PhnawjWyeqiLq0P2rrq/3lHulOYmhZ6IXeln2oomzXPcHbwDiF5mz+mK0zE1jrx5mE3Yw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720589183; c=relaxed/simple;
	bh=90UP+UVpIcj0wOwKyOFGFcjBp/O0PVuyNOoHmrYWiHM=;
	h=To:Subject:From:Message-Id:Date; b=RjXFZAKpunxyynsVMa/PSs2tI4sjkT8M9c3hOg5ZPqwQ64MmMLTtS/8I4FQ5nK5al8XSWQmLQciemlUSQ3AhMGR9JkPEMjIYFJHQPBmiHyc9PMszcXBIl5X/3u2EVrOfi8c4IcxecCJDyZFlkkrAuO+cZaPj89o2iXf7Tb7vowc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Vx7AduCa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Vx7AduCa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DED2BC32781
	for <ddprobe@lists.linux.dev>; Wed, 10 Jul 2024 05:26:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720589182;
	bh=90UP+UVpIcj0wOwKyOFGFcjBp/O0PVuyNOoHmrYWiHM=;
	h=To:Subject:From:Date:From;
	b=Vx7AduCaHBa6rlbfx0NlK131HlZB1hz/owcphEi1ENaDkheywH9JxzhTGAEFkp7oK
	 AyWoJNdq6GYkubRBKgWB+TSlhUePxVeYWTrSvhlbJnbiM4CCi3x4LiCEXmyINX1xLc
	 k/GJrZSWu+B5PFd97WKvYtcr/fTaTURQ7GEjl6chkSpFyBypxh1r87VuUnuNo43Fne
	 bJej3IedwmrC4UdriMkPzvtKwkuR0tvDzTll+Q1fwiSmd9jcGYz5QTrC2Xei9YI/D3
	 6MX94g7E56+PRe9SO1uiUp1LSxTBjgtjXvek1n+OO2+tgJc3IF6TDVVNfKgKMGEM+u
	 OmXwbFgBuBq7w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C7E69C38150
	for <ddprobe@lists.linux.dev>; Wed, 10 Jul 2024 05:26:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172058918279.14811.17974772024855719617.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9f07be99ad3f6c31eaad38cfdcfbcb78a100ed50453e76e201b14088d8f20469
Date: Wed, 10 Jul 2024 05:26:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720589182
