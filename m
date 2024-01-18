Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D962E7497
	for <ddprobe@lists.linux.dev>; Thu, 18 Jan 2024 02:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705544296; cv=none; b=DXwWyNyJUC5KZsBCyKJsVvDLowvRMlL8oopZW7uGCFXwue/nNgUfhnjb3uYwByl3RdZZOv87YivG4xqjD9YYuCiybRDFZyA5SxIfwZ77Rj6b87CKx4x7+09s2aAPhxyS9BVXNGBuTZsl4nlI4qnb6JyoPHv+i/aaYB80pViGL7U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705544296; c=relaxed/simple;
	bh=lqoEA+Pg63txT+amcNkJe4qsp5iyz67JNJBDzikPU3Y=;
	h=Received:DKIM-Signature:Received:To:Subject:From:Message-Id:
	 X-Rtt-Probe-Hmac:Date; b=mD5HnnGI3MCfRORD7o02SCTbLkBgFws3tmBzYAUtENmOn/kb2r9lCk+rjXw6APWEa1IzgHd1v3XjaXD02tKcTToPppbwP16enkI7BxYDLVzXL0Wa+Imr4HOF0XpEweCWohg89TlLOZVdTPtM5RWFPzxJbmzpb5P13nMHA1tkRMc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=A7TiGTHY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="A7TiGTHY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 78438C43390
	for <ddprobe@lists.linux.dev>; Thu, 18 Jan 2024 02:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705544296;
	bh=lqoEA+Pg63txT+amcNkJe4qsp5iyz67JNJBDzikPU3Y=;
	h=To:Subject:From:Date:From;
	b=A7TiGTHYhwzIfVAGqHaLDb4F21iHQk0xmZXa9PQ8f5gA1FcrnFYxSbHNeMDRjCg9Z
	 3cM0IJ/qBgRm0Y0upDJ38JJgPDszZYZOSEZRefUVaV8kPedtMWZwR6HEPztgdYBc8H
	 TLHcjIKvJZTlhG9qRXlwRV6NNHXJZ9vqzmf0k7Js3HjrqrXqIo3VT/2CRVGmVaMEu1
	 WGi9B3CO1GC2gDe+0/iVvC5FBYSw+RyoziY4XMDEJdcxMyJMUBs6QKHr6Uz6uSn44N
	 L84Pb/VJF5H+pFprXG/iV9OFgrOa1jlnNAR1wzr3qBUtp32zd4PZgBo6zgikj9uHYc
	 y355gLCQqLSSQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5BFAAC47258
	for <ddprobe@lists.linux.dev>; Thu, 18 Jan 2024 02:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170554429637.23532.4634021800102966293.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f8d6cfa940019a8c4b9f6aa877984ed66286586d5219e0ba5385beb2c32a10f4
Date: Thu, 18 Jan 2024 02:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1705544296
