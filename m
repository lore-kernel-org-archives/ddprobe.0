Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DF91F3587B1
	for <ddprobe@lists.linux.dev>; Tue, 16 Dec 2025 12:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765886634; cv=none; b=LnxleNKcHmsPJd++cez6Ww4VGrMFhGi0oQJY8GzD6IDaBuWGQn9BVWceaQlm2yPEPZBIKsNpPwbCr+PpkX/bzyQVXRWoMpFwK4TelHC2twjqjRJ5AOYIDee1vXWKPt6ywKBv+xyQmHJMC40f28nh0TGtsN9Bk6mltaRYmviOAC0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765886634; c=relaxed/simple;
	bh=KsE0oWvjXRSPEtoAEDJ+78lXZOrFSJV/XATsEDY5Gs0=;
	h=To:Subject:From:Message-Id:Date; b=PndfGGx+cvMyTPIACHkiQG3S3DuG0EzgQnPc+/IgZclDFCJmiS1K3jqO4F2ke/DJH51Vzfza6+YLAFgTfGkgNDgQHs2H4HK35hlmWcNCn80HAzIkzBVaD7QmdySEyyoNHTRAhIElQzvJmB09B11XU6XgQgWLNUDiL45ZUGLJqfw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=r9NsLprx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="r9NsLprx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABBA4C4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 16 Dec 2025 12:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765886633;
	bh=KsE0oWvjXRSPEtoAEDJ+78lXZOrFSJV/XATsEDY5Gs0=;
	h=To:Subject:From:Date:From;
	b=r9NsLprxwHfbbbrMP/b9hV3JgE9lbqeTuNAeTsz7LDLzAAeejCBXh3OnRECWym5L6
	 vbKbxYDpByLdadCyGoUaOASrt3gU2/87pPBe75nKAfXX+O/zSR7UdQapIebzJW6q1V
	 n/sGR8EIeHJmVIJB6FDZjbljqi5ICr4pNQDyRbVtfIIqal81MuYSH1Er/aZmcifKG0
	 5+8RDWjUEXtM2q0aS8vi8a/GQCPCTHTUS7KaecX/osaY5aadAPXHC8wMKK/HNdsY9b
	 E3rrFW31XEGegShF7/j3qs3eZl63C1vtLBy8idcccFGvvVveLhmGILsEtRulo7XMq4
	 baflaVAFxCjaA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C206D5E144
	for <ddprobe@lists.linux.dev>; Tue, 16 Dec 2025 12:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176588663362.26990.14781485070254627927.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ac8075aae252b33671cdf16043c2d94e4da8d0ed4a567bb76c0c45152804acca
Date: Tue, 16 Dec 2025 12:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765886633
