Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 07B661DA34
	for <ddprobe@lists.linux.dev>; Thu, 18 Jan 2024 15:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705592897; cv=none; b=oVKVqrAa92A5CqvVJHrp0DQBHhCvN0U0Z/+FtSnE+7yGi1QHNVuTQI5I9GpAT106PR3ntF8roAIDtb/FOBfrhCVMtnB+hY44Fr8zRua0ssnqDw/cIDXseaQ9uCtD9OFLP0bdAQBYV8PpoeIWNrM8gf8b0CdpOcHBd/UdCXE7esU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705592897; c=relaxed/simple;
	bh=1IHbhnSUzjanisNk9L5MmrA9Gr4I9adTnf8TejdEVgk=;
	h=Received:DKIM-Signature:Received:To:Subject:From:Message-Id:
	 X-Rtt-Probe-Hmac:Date; b=uU7/sXJrxpU1qyYIR93i7Z2tCxaOMLyddfVtOQzHjvvdfbArgj9AlZyrpSbaNXf6t9ENNjrT3B/beXJHMKMniyirjE8LRHca0VSuVtmBigBZ8uri2Ub5w7pBpJo0N3KLPjdz9TLgVKUNnpnjD2QNPtCW2SVCjtJW4d1XKKON4iQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=acZCkZ3Y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="acZCkZ3Y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 74AFEC433F1
	for <ddprobe@lists.linux.dev>; Thu, 18 Jan 2024 15:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705592896;
	bh=1IHbhnSUzjanisNk9L5MmrA9Gr4I9adTnf8TejdEVgk=;
	h=To:Subject:From:Date:From;
	b=acZCkZ3YO0+ZcdyIha7YNXGEIh2CwbDN3Fa+mzK0uFGOOqMXkEYd1NTxH7nQt6Spm
	 9UcXlXZXGAZ20/e8q39ZDuOAjyn845xip+L03knkMGUDiKn8NwH2kJtOCQcsw94QLZ
	 laXWhtQW+RFY8svzj/GhHjsGwURhOvEX3oRUUFX+ZGXvMq/CcTxRnWZF7OPV3o9cQg
	 wQQumUC2XYbZbMQSXwCSKfh+HPNHQR/ItZ4gx+3ioMhyYPYW02aY8DaIuYcFP4tbm+
	 tBomnmKPruUim7+Ehdo3chovBBHJ+Sc2cXNrvU5j+x/qMYo03F99vGOndApGRYq8WE
	 vWPMGojmwB/Og==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5B6AAC47DAF
	for <ddprobe@lists.linux.dev>; Thu, 18 Jan 2024 15:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170559289636.7977.6234693194391580717.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3100bfd3617179ef041ae4277afa6b0ebd1e6359f144eeed334bac1ce13b8707
Date: Thu, 18 Jan 2024 15:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1705592896
