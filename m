Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D73B34D919
	for <ddprobe@lists.linux.dev>; Mon, 23 Feb 2026 08:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771836294; cv=none; b=cXqyIS1oM5xqkKhiMwtd24q/L6FLlgiHgCiPI0w6Wk2G8lrzsfTe/8s10/tLqgp026fnYOdnyQ94Igtm2uS9rdiPt9IOD1HHwjtMT6yMBP47IQJClpf1pQylEQF57Y2/DwFrqJEijKXc6rNaBfJz9tMT9f9ODylJnMf2V0xMeOo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771836294; c=relaxed/simple;
	bh=k7/7VDG55ri5yT+CTiYJBPXnq0dwjvaFbGcRrz70I6k=;
	h=To:Subject:From:Message-Id:Date; b=kESUGbM9EDqMjkQ44qn/eRRiUONh3RFY5RBu7HVJA/EEWA9gIlC4Vx/kziifRjoY33AXGLJ3oSAV09ZLziM9Ve9ypG692scQ4N6wxpb9dPwpk2ahVnL3aJB3yH0k6tEDIaMwJYpbMAq1B29djDEm7r0JJGsNnAk3VY0w+XB6NII=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aVzFG7b2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aVzFG7b2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A29A5C19421
	for <ddprobe@lists.linux.dev>; Mon, 23 Feb 2026 08:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771836293;
	bh=k7/7VDG55ri5yT+CTiYJBPXnq0dwjvaFbGcRrz70I6k=;
	h=To:Subject:From:Date:From;
	b=aVzFG7b2HcKMnen2Yi+omMMrFbkwdFFPYu1VLkkNathm7ylWQaEAXIekTaWBAbLYg
	 fWOBQWMleylCOD5MW3ULJx3g2uqfyfM1q866LVexVqpGi306wgY+HkhWMaLQgvddUD
	 yOX9VMp9sLDTc45hbYRv5jL2WyrcZX1Fc/KTGrKQ6UhpUuW5BwNb5y9WgCwFOl0h/Q
	 EmX2DD+kaqttqN9ylAQYIPZfd4/AlRD5PKKaQ89xY8MPKRywO534nScCRTA2O7ItHI
	 k0ARp7K2Kw/C7AJOgGywbRslM5TdsWdQPySf2r+Opkkmqp/+Bv7klLykc6WwhbLM6H
	 ydkNXMeU8Mpog==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90B39E98E08
	for <ddprobe@lists.linux.dev>; Mon, 23 Feb 2026 08:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177183629358.4875.17538668378732476324.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2f0228570dd10f79a61c52be2561f65b931217e06158a598ab88434df40de64e
Date: Mon, 23 Feb 2026 08:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771836293
