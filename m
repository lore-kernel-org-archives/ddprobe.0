Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 315B233B6F9
	for <ddprobe@lists.linux.dev>; Thu,  7 May 2026 23:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778197054; cv=none; b=LQiCQQeX+KmSvc8TXE5m7GmLAvFsjX3XfwbJXRmDxHBZ6Uv5jp9tU1lMkLiXJ1tFkCtmQzrlS/DI0J6zQMnvkuOCIoxKuRsuYAFEGXiG2huex4DhGVRpqOOWbTqyWE0wcSpoV5nDRMruB6GR/mAoKM2PPp076Id0l4Z91uxyqI0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778197054; c=relaxed/simple;
	bh=gG/p241XpQX+Dic//t9MhFRDLOCARx0KPQ/2YMDSIOY=;
	h=To:Subject:From:Message-Id:Date; b=KoZ4Ymo9ZMQsc6K6d0w5XvzklimsdAtjycaCCsrtiEFU+rmV6CGEF0UotqGN7i/C3saQJ5kCfrqd9AErr6jCBxY84RO1h4tG55MbhlVha+v/hzeuAq3CRdv4bDzwXQWiSWCicZ//Kqir6DaUiBwNPGukjrenTBXWWU1iuPqonM4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sZpOYa+d; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sZpOYa+d"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C4F9CC2BCB2
	for <ddprobe@lists.linux.dev>; Thu,  7 May 2026 23:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778197053;
	bh=gG/p241XpQX+Dic//t9MhFRDLOCARx0KPQ/2YMDSIOY=;
	h=To:Subject:From:Date:From;
	b=sZpOYa+duUN33ioL7J8l+cO+J6pYzRxV4wf83kj5NRw/nFJEsEnYwG1b+8LoFMNsx
	 B2LG/Hp1Cwohc6t2eVzTvk3+bKNFfTYOFNwlFoFpnXF4OfuR5UmBJKU9PgO5UVYCjd
	 qeYn8hhPxuZ7fE1zv80vSorJfk8s/YSD6Bxo8/XxW1zBMRroatgkeLS862kkQlOqKH
	 /x+iN6KYpctiMYxgA6YQ38NwuPK6pkyHR3xII7w3McMcNJZacGCBJHsAewyMcQ5cim
	 ZdyfrDrBeAL6myMoThzaS4xVmrT7j1NkI8cNUk3Sni2PCjUjLz6Ri/XrF9b/CYZPhu
	 dG59IC5o2gyoA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2742CD343F
	for <ddprobe@lists.linux.dev>; Thu,  7 May 2026 23:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177819705370.22590.13098757440665140043.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0498f56be74b47f52a4b7321b6ef2ab19a9b7f8f67a44ae375522a5134241649
Date: Thu, 07 May 2026 23:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778197053
