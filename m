Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 227AF318ED2
	for <ddprobe@lists.linux.dev>; Fri,  9 Jan 2026 15:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767972234; cv=none; b=Vbx+ELiqcJxEPYDMR8RhJvARsYqAG02y4N/lfBAqRuxyKQMdiv5jiSX3v5EepZLDwkWovQFtF4SthxndGCcsSxqtY/mqzQNRjJq3IhlCGZokpRlc7x9PihfTR8KlqhwmHkXf2aphUpbaVtZAYBvLlr82X9I8o/8m4MyB895oSvc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767972234; c=relaxed/simple;
	bh=Lse3cu5sNOL63Wz7di5wbVckjjHwgWq/oQD4QbxH2nQ=;
	h=To:Subject:From:Message-Id:Date; b=nTYMSVMBCSFpbB8DXfdJkQ8ytJ7R2LsATULF25DtL9IOdZnMIwZLWnQVP8Zm7ZjtPF6CTBxsXAI+O8+Aq+lwllOfbR60S6O60rFYCc+tW1NqVd51Bx8v73VFHwmlEMoUcJm4q4yb2mIUfDKL6/djPYlXXznK2JAc4OhXu8pOo5c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NYaLDEBP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NYaLDEBP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C285C4CEF7
	for <ddprobe@lists.linux.dev>; Fri,  9 Jan 2026 15:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767972233;
	bh=Lse3cu5sNOL63Wz7di5wbVckjjHwgWq/oQD4QbxH2nQ=;
	h=To:Subject:From:Date:From;
	b=NYaLDEBPMd6megf/NWOhzVgT5TSQe3N1lo3/ilSh2jyDNW6Vi96SvFXdtAYWSjLbc
	 iQp7loyW9fpbwcbnOfSIwq8oO6Ypt1cmctor9EW0sMArgqAZyiBXh4wbQGJxQtUcpO
	 JBF0QV2SWIgyCkWiTQPE8XokNrO9FdbNENXDnu5plNBR8QEHgXi+HOD4URhWxofsvf
	 +v2Te9NIj9GifLIatDdOZ7iFXa/gGImkvHo+xPNLb2Ck1bJtgV4LJUdwt1q8TrOpof
	 fIkJ+kstQpmKqQa8cImjM+lAh6nSwIBNGacFr/aRL0WTu+rbeoX6gSmKwKKCQ75I5Y
	 SwO1dd0f1bYgA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EFB5D26D69
	for <ddprobe@lists.linux.dev>; Fri,  9 Jan 2026 15:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176797223357.6449.10528428898568965690.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 651becf5a3a948bb4f7b6a545696028aac5e968a1b428d40d1ef85be08abd29c
Date: Fri, 09 Jan 2026 15:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767972233
