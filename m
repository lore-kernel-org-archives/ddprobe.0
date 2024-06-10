Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D19B18E2A
	for <ddprobe@lists.linux.dev>; Mon, 10 Jun 2024 22:28:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718058503; cv=none; b=STXyx64tbIaaqUCu/G22vrnHaxAJJt4ZOLZUnefMIKrPqNw3FYMRvRlvyg19faeAiKH+yRxipe8B67O+KJ6LZ1r4R4dDeEzMCpJmgVYf0CFBDX9ZK+goYZdREPF+vdjYgVeLfPbvVuW6yqMn3j+UK+SKosDgIUU3jj9ZbM+MWIQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718058503; c=relaxed/simple;
	bh=mDCn9jbibdAkIFdygGPgwPsV3RAejwPa4l1KO0Kt2k8=;
	h=To:Subject:From:Message-Id:Date; b=Y/5esddwVuqS0tnezAfFSKEEW2Won0gG3f81xWUXOUHj3EV99sB+7BgE4k6/oEKCMU2g7cZ8C/optaOnsbicucMrNSgDUV+DFYtBhxjJJ3Sb4W25A2Zd7B/jazwHlyOI6incGfffj1K/9sV+9F6KmDyjFd6J+wsFUnRwodh3bZE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RE96lirO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RE96lirO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6A59C32789
	for <ddprobe@lists.linux.dev>; Mon, 10 Jun 2024 22:28:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718058502;
	bh=mDCn9jbibdAkIFdygGPgwPsV3RAejwPa4l1KO0Kt2k8=;
	h=To:Subject:From:Date:From;
	b=RE96lirOZBNxlvNZl0HQtcMnvFNPBH+zwrCjF9DyS89xJ5NmW154Oj9ZWNi1IXTX6
	 cerjaKzOHScxXvlK4abaBlQBZGa67rr46mUw5kHDqJz+U19XIGefWEf3B6r1rsfkA7
	 z5fNwz+FDnLP/mwkUHwNR18jL4wjaP4+67+EkJ3+beKGCw+LnY55dJwPP+7kZACHM+
	 kWE73LXN9xEHpeisLm0oJBwrxmo98HGxBcFrQrzR5+VWU+LjiBMsG/nwJ5TJ9Nl6Ds
	 5BF4PA2RxToZayMKm9F6FCSwE1ADf1oi5bu1bbGeJMJvk1GoajyigCvIEl2KVt99BA
	 8146KwlFnjaEg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C111FC27C5F
	for <ddprobe@lists.linux.dev>; Mon, 10 Jun 2024 22:28:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171805850278.19413.13990424733397828210.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 50a12412a93b69d410bcde89c741c1f61171e9e5077dd28775abaf326d1cf428
Date: Mon, 10 Jun 2024 22:28:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718058502
