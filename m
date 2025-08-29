Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1455E28467C
	for <ddprobe@lists.linux.dev>; Fri, 29 Aug 2025 08:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756456195; cv=none; b=bQ7ainn15hhmOYmA6C0R8bIo1n0hP9XIzn/qR0IBG1iQJDTeii/QVaIT/2C8nAMhOluUi2hJtViiL73jdFX4tfC4YgUokI7R42eV8QFSl6nnRDHYs+FS0lPu+2mRM6FdOoPNeHY8HEbXvlJJf06c+4LHvYZpRq9W1S+Em8AnfmQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756456195; c=relaxed/simple;
	bh=8ELRLT9xKdyTw0Bo4rjxQSt+N8I6Z9vNSHNkdo3hiTI=;
	h=To:Subject:From:Message-Id:Date; b=f1SKA8yoiv+JWtaYgvNR6DaHl2HWumZvFbESBH+JMOrJhJ5xz/tr2X0kNrebMsm9uJqmU+j7n8bJh+C0BmwHwYzyIHXrE4FVzB6w6bVfFxn3rHd62nOXHEIYrBJxp63x7xMVUlsRf47pUywGUg08/MW3COJ4ligEWXUS3QSvn28=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PGqocZ7W; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PGqocZ7W"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2980C4CEF0
	for <ddprobe@lists.linux.dev>; Fri, 29 Aug 2025 08:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756456193;
	bh=8ELRLT9xKdyTw0Bo4rjxQSt+N8I6Z9vNSHNkdo3hiTI=;
	h=To:Subject:From:Date:From;
	b=PGqocZ7WHnCjaXAfzDiGBzQY6D70o+WrVPDxncufctzReBhY7vGu/CO2xomXKM7wC
	 V9rU2G+siHx1lyrXSGLTuqJvPJJa4Fz6XpxFFXnam3zRaQ4oFrk3qhhKw11czJkhTT
	 DXyRiy8h9t9USfpFqf+y1/bK/HLEPTHQfKPsgQGd3qB1bITr5khjlnJgBVmDbqWPcZ
	 LTXljIHlVEovEj0BjTHVBq71dYZLTIoM0UkgJ4yj1WYCHIo/e4bkYO+cJy3VWaZDZj
	 KggQQf12IVrcWsoezhP5riVop7SX9szjOFrQDbQc/HbQl/ahDce+tXOU+GdI9FZHRU
	 wZfp9e2BaPE6A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90AB2C8303F
	for <ddprobe@lists.linux.dev>; Fri, 29 Aug 2025 08:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175645619358.5954.8083736663861507451.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 983036ddcce9879b85856ee4bed759c64c8c24580fbdcf7945e77b0f07f141ba
Date: Fri, 29 Aug 2025 08:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756456193
