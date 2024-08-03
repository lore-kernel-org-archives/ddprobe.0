Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E1DE23BE
	for <ddprobe@lists.linux.dev>; Sat,  3 Aug 2024 03:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722654354; cv=none; b=WRm3h6D52rTc6BrzqGBdyJPDVoqjhZ6WBf3rsgIBaHkUqCdmQ+9EcnzQfh/EoqzZDU4pYLe0C75kitmDp9l1YyZDa264QQBVg8EVaXcByJ1eu4zOIxc8S3xOD9YWc8kiGvHz8ZYCRQvEV6xIw6vCiqu8sXqwFRRGdIpc7pfUBhQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722654354; c=relaxed/simple;
	bh=wu431rRif72QpOGejBLRMzV/OV1L/xZySCZ3HDhdlrg=;
	h=To:Subject:From:Message-Id:Date; b=oviT963axsg4oAVZQFdKDOVk8Ud0nMq+J31dODwY3OzR2vT/Fv+25KJjxXbKzhE849l19nvVTwq+zrpv1/KCHkw1vZI3ilYpUfRfzIy1BuN8c05lJqk5q8ECFcCJCaHqSVn/jvv4OJVLugl2JEjUuBObeSxVNOiNS/V4LUhyDNc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=szCkGGJF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="szCkGGJF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC2E7C32782
	for <ddprobe@lists.linux.dev>; Sat,  3 Aug 2024 03:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722654353;
	bh=wu431rRif72QpOGejBLRMzV/OV1L/xZySCZ3HDhdlrg=;
	h=To:Subject:From:Date:From;
	b=szCkGGJF/W0IVNaPB+ufLsxc6jH3uaaXcg0Qqa/SRDMRl8O5IbUrAtA+XaFPPHDQQ
	 t+BXRdDl8qgMv5szfvUefpM5ZdvJxwX/4fyDyaWjJ+UPXOlaYeQmTxC88ttp8pJuC5
	 Pgp/yAwsbteVB3s9F11HZ29NQt/r4PFHrtUpgiaHas5om2cfNNwl70BpjMXcpz4xxQ
	 R2oFpu8NtFxIgV/9ZicSjyAjBbHWlgEu/7l1/BVA/zJ6m0Ez/f4qfaMMVrShVEbIBY
	 kPvKeDIbsrkNMsaRPKOsP/AzTJn0ZvRWCQfuShx5kr+6yn+DBgak2rIB6ndoJeaEf7
	 f8+ErdLTVk9kg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C045C3DA4A
	for <ddprobe@lists.linux.dev>; Sat,  3 Aug 2024 03:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172265435361.19764.1052489495927246833.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fe2091ceea371caed3fd635b07a97a2c7652a77c7f277634a7c46021928ed314
Date: Sat, 03 Aug 2024 03:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722654353
