Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BC3B42AB0
	for <ddprobe@lists.linux.dev>; Fri,  6 Jun 2025 18:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749233994; cv=none; b=Zv53budWY3DALVzlDT/Mj5JeUJDSSmcwPpSe0s091vkqxOFCtTB3zDO6vKGO07wvGGfCNhbbkaGYoRukOLOFN1P5Z/zTHJDuvy2RlBf0bhJHTGIujlAWDs0/giDxXdK2ZcNo4xxANahhH71CAuesVrO6QI0BzCJljPDgR1+8VJE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749233994; c=relaxed/simple;
	bh=tgDfFURibqD8aQek6z8dwjPcAOXPlATDq+jKzNUHuxI=;
	h=To:Subject:From:Message-Id:Date; b=qhTUDjSQHg+3QuYyRYg5DlXOM6y4MTbIFEUjdJRbuy/c3TMB9NMkLV3UJSM1kmY4WXlOUfvc3HNuv5bqMeUPB6EVdk7fA7ZAmKnoX9TnJnoJ0MMGwQjDNtF9ilD+tasjfpXOq9l/zbd7j8o5CWvdlT4On6YcaoaqvHin65YrI8g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=L/eCuQBW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="L/eCuQBW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4C88C4CEEB
	for <ddprobe@lists.linux.dev>; Fri,  6 Jun 2025 18:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749233993;
	bh=tgDfFURibqD8aQek6z8dwjPcAOXPlATDq+jKzNUHuxI=;
	h=To:Subject:From:Date:From;
	b=L/eCuQBWogDuIAMyB/aE0g0xTI6vJ3nWM6CyjDJ6Llg4J8mLOm393hkNoqIZ23ua3
	 NnwHs6qo2Y0XltOVkfTKJBC3i80udyiLD5FK+rH+57q3jLCok7t8pPbY22n0YveDlj
	 BJL6QIy0SFGMXeqQixBRk7aJS8XScI3qBygL/S7yS84cDk9QENO/RyDXygqcJPtdtL
	 Lxix5QoSREmavirdAdE1KyYkQ1k94hS4Ze62oMvYGNIoFzBzDXtDS2ftshDGfxJZIe
	 wcuy/8a5krrobFs3ADpxClht3lkt3uA+r0fsNCqX3TQwmLHBqWGkkToxYYnec6ArUA
	 8IgJWM5Jb+2eA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94825C61CE7
	for <ddprobe@lists.linux.dev>; Fri,  6 Jun 2025 18:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174923399359.8466.13797527162469482583.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c811277332305e70a180ad3a1154d9b45af37e7ffe411deb41e3739459e7a679
Date: Fri, 06 Jun 2025 18:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749233993
