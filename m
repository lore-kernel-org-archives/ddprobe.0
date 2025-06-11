Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F1788F5B
	for <ddprobe@lists.linux.dev>; Wed, 11 Jun 2025 05:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749618594; cv=none; b=KSAjDGLnR6lfTh2hEio3TP69J8lITu8oplsE/4PQ2bQIZjZGxtFhv14SPlcpedzzq56EV/PlDwBTNwLsBCTh1vXymqnYV0wR1SUfnLQk04lLZVyisxczziollGI3InLWmRUy3/FKqsAR0xUpwyN12nLv6P8hS7FZVwdM4QToZGQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749618594; c=relaxed/simple;
	bh=U+0SB5fWyLcDYp1zw8DTojTmpDiX/QwWtNM5Jp8zMAk=;
	h=To:Subject:From:Message-Id:Date; b=CD+5fc+VXBagfmk1XgfXJpjXKBQ8eDRybtXeLt04jlsINXaOr/9/aJ2XgAQf9BOk3Ube4Q7+8NKYZNRV0h4EGF64sV+WHH8T8+EypfwFvOvQ7pr19SoBrNUVBz455zRe9KQo2gMRB/knDwAUYYyU8F+8T2onrinIh1IOerNu4XU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=glVL3+BD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="glVL3+BD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A24F5C4CEEE
	for <ddprobe@lists.linux.dev>; Wed, 11 Jun 2025 05:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749618593;
	bh=U+0SB5fWyLcDYp1zw8DTojTmpDiX/QwWtNM5Jp8zMAk=;
	h=To:Subject:From:Date:From;
	b=glVL3+BD0U1duEl8xJLCOj5t5wfEmtMbU5AhDlUnndwnvFLEvLhIaIIy8cOUNJ39k
	 V7FPHkcoLTv/ZvqHCi8sb2h2Y6H/ttYxPiRUAW5icJXDI/dGDjpNrErMyOkG9IUjx8
	 UH9ohUUgX8usR1UBij1jQ/FwDze+uJUBnVxC/wY+YUgDAV+DezgSI0yMYaOFLFsAeN
	 e+xoHmtTES8YZSUQT46w8UkcAkBewDidtSsdnjUc3HPHOWbVeki6IOrDYntnTv6wDe
	 R5a3ME0xPXe3LUmi+DHzckREUbb7q+Vk4g20CDc5Y4CF0I7TQe8e7C09TzxPalXLjb
	 zaLJKCAY4SRCQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 905A0C677C4
	for <ddprobe@lists.linux.dev>; Wed, 11 Jun 2025 05:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174961859358.10026.6469204855359238269.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 35be91d8322382f9d6d140a754481080fb0f2a95e3dfb5a70def246ccebb89ce
Date: Wed, 11 Jun 2025 05:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749618593
