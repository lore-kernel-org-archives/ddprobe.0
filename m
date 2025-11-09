Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 06FA92DCC01
	for <ddprobe@lists.linux.dev>; Sun,  9 Nov 2025 16:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762705794; cv=none; b=LHdTIIjmLDmxqsMbCRs6fiFGxWMKe/+4DDvsR/OqkvujfD9+//1VYvDDEmF5tve1HMwaYVOzMIzN8lcTp2AiABTdvFnd115A1rJHBze64CoPsZ2jI13tHbouqB8cfflY8hcj2xJT0zCkKhBY1i1UTQXpvVruBo3CmsXVYy77eaQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762705794; c=relaxed/simple;
	bh=W7PcbP/t9YZZ/XEG709G7feGASEDAVU77ikR4yygTKg=;
	h=To:Subject:From:Message-Id:Date; b=FIc3pHb1epZIpha2pyViJrfAQQXFk9ZahF0T1ZTEGP6P+n2IOn0AjKAsjipN07HDNP38et9/Crq4/r6aUp3LVwJJSsT+w8S3aogDQQWJ/JDcfo5FG1Y46xMijuqemHxxCZPpJU9Kq4M7yacCIXUsiUwkZUGjj8XcGAuuAkjWZHM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AwFIca6f; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AwFIca6f"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A338BC19424
	for <ddprobe@lists.linux.dev>; Sun,  9 Nov 2025 16:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762705793;
	bh=W7PcbP/t9YZZ/XEG709G7feGASEDAVU77ikR4yygTKg=;
	h=To:Subject:From:Date:From;
	b=AwFIca6fXMtdLLz+CeffgIrFPzRs7LC5kEt0pMJtqM06q5QpCK0eFFOldauqUbQqp
	 dHKwYVDHD3mvTzB+lTMD2wJ78VtU5jQ3SQX8O8yqWzVWjZvBNuIRgjWS13XK4gDLDi
	 JSQBxBZI31ugRkrOUbNT6HJgLElTCP+QHvpH7ih2Ew0I1lSh1xBKL+nuep9k/1r8RF
	 qyhvNCDHVAIMvZ9p7GXy+uKYyDQ4WQY+ZCzp1yr/D+mKgwSeBxlMO64BeValc1/PZi
	 yNZ8DSLNUfkT7tuBAQOnaAguipa86CibOX1hh4zMX9Y5mdO2X9yYlPNceQZzRxAZZp
	 b0Tu8NWsG+GRQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93EB7CCFA1A
	for <ddprobe@lists.linux.dev>; Sun,  9 Nov 2025 16:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176270579357.10910.10367392994172141565.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b4ec1e8fc9dada2a5ced1c07ff86ec7984a3a8ec47795137379022a13a160bc5
Date: Sun, 09 Nov 2025 16:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762705793
