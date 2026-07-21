Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41304427A10
	for <ddprobe@lists.linux.dev>; Tue, 21 Jul 2026 19:18:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784661514; cv=none; b=XMKqSygVIYp0R4zm2ryiTvf6rz2e05NB8xlZhLUuMwj5i7sZ+LFFdlwW98tyhcKIUDmcIz6+26NAGwrzRvMA4EsQ2Oc5YPyte9z2UmkwigZ8dRUw53Mdh3/+WJlGC1WAM3Rs4GMcZ+M2isLe7YukwHdC7NITWk5WFMFdeS/hLDs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784661514; c=relaxed/simple;
	bh=DGg7pgMEPwwxJnpUtWK9NdXlsfWmxvflOzJP2hYa3fY=;
	h=To:Subject:From:Message-Id:Date; b=p9PMNdqIaqntsD4s2dheUPEYT2gCGPIrZ0E0UZb3Vtrv/FiKzS92kUe91f7KbdwshADjUj3+g/B1uPLFfz/I1znaxGj2gYvvCa11YVrdpsX0rsxovp/ke8KdGRy7K7NgrxF4LCLPgzEY8QCmuvX/qqUeqBQqz/Tt4fBjwih7b/4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nWWsipC5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nWWsipC5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD9FCC2BCF7
	for <ddprobe@lists.linux.dev>; Tue, 21 Jul 2026 19:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784661513;
	bh=DGg7pgMEPwwxJnpUtWK9NdXlsfWmxvflOzJP2hYa3fY=;
	h=To:Subject:From:Date:From;
	b=nWWsipC5T9jClCYiyg7xnaTeSxA5UxP4wFlynL2rOK5OmPYjki84M0jCfEG7MDtmP
	 EU3NnzNj8Fn6bzaMBop5FGE9mhWk16aZTUQ67aF/IuGjjW9RCM9O5wCF+ZFa5IlTWE
	 eGG+snIFfLDqwe9uS40iOGM9nMl1lR3LVHZlxKgbNU8CiY5TtJD8Fidu/etjPAk/uU
	 znA9q2cHgyKyMwX+19yCP8kRcnAHpIetS8AXWB49oM6CoQMEMMU19a5TmXOHMQ5urw
	 NkGKRHJdDBhB8sFfV1zvTRYleLcX6+tCHvDJRQy9DF1OiHasTFYv6KntBgJmOQZy6R
	 fy9YtdE0bnhBA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4FE5C4451C
	for <ddprobe@lists.linux.dev>; Tue, 21 Jul 2026 19:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178466151373.26378.3582323412066861277.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5720e3fd08520d04933b01ee14c7fe5cce8e2808aa1271ab4243863d0f676f51
Date: Tue, 21 Jul 2026 19:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784661513
