Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23E8432340D
	for <ddprobe@lists.linux.dev>; Wed, 17 Dec 2025 16:13:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765988035; cv=none; b=su3YxIQdAA6pjY33qRpO3elF5fIvcKylorS4DKdfzUhDBzrE1gz5u+wK+SVKhfRgu+PTRs4KwRbCPgCBDkEW8Uq8P73OMLUtXUmakbP+lnbDSx7N4O3ge/XYerw4A9ZQyOeKSVkANTaOSLkZiHdDFc6E0P2yF9KceUDPh4Lmku4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765988035; c=relaxed/simple;
	bh=Ngx3JfaQhqWfKh4GCMDvgfhGeLor/bfkkTdm4WK2VSY=;
	h=To:Subject:From:Message-Id:Date; b=JtvkiCFq24YjjY+N8k7L8yzyww9JMdg/TDcBFNNU7dohrGQ7V4tZ4Bl9hVEpUSR9Ux+vIHz9frbTXbSJTF7zr1nXo28gqoLlwIBkJIU4Mg8/W6pkEAqiHDRH0QxCoGyU+2zICxXqJL7YUouwrBxLU/FjRSObHmXWKbY5bzSbt6U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dx9QfxAG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dx9QfxAG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7D01C4CEF5
	for <ddprobe@lists.linux.dev>; Wed, 17 Dec 2025 16:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765988034;
	bh=Ngx3JfaQhqWfKh4GCMDvgfhGeLor/bfkkTdm4WK2VSY=;
	h=To:Subject:From:Date:From;
	b=dx9QfxAG8xo4dmPFRM9CHv+sxLrc4bVFBRyDTfkP2B5vGL0vVQVQxmge7YcTQO+Rv
	 E7wJvNKuBv4zCVCqGjx+XKgSiOe+ZcBq2yM2Z1XU10PO3SqIEI8a8mXrdhGNtzm8PS
	 Xp5OMcEIad5lQOCXj6iyXU0nFOrdh9nHTxWvVqO6bUVJ31Se3g39255zot+p0EE1In
	 ALFmBqZZxCxt29TzHOr6UivahuzCVaY7bth8bA9RYt5cWIbncwKz2OiUZct+Wo2mQ7
	 h7mgF+0JThHXi26aztvlU4K8BxXfgdUxheZ7jOB8gqd56CsVe7IGwqQK5L4ZL5wlRe
	 tTDU2WRFC3LVQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9393BD65C77
	for <ddprobe@lists.linux.dev>; Wed, 17 Dec 2025 16:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176598803359.13590.8516673549560876166.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 48c65384831655ea9e85979c508303b672098bc25cac0b6b3fbd42bacbd48e1b
Date: Wed, 17 Dec 2025 16:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765988033
