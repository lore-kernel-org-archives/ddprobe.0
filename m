Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37D2458ABF
	for <ddprobe@lists.linux.dev>; Sat,  3 Aug 2024 22:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722725754; cv=none; b=NRGl8qFkqtVj8HqPaTRu9fV62AQI0iJyofhaOu1vnZbvv1+lW8Mg4UyGsqFY+7MhkUCD4HEZmBQeOwxKlIBRsRYk2dL8IjShQHke8W22EJWBYmEwCkrnzzuWirZ7q7cJwVijLk13UHUZ7t12SVNTwU+jcD3rN8qnNUdWi2zPO/I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722725754; c=relaxed/simple;
	bh=utHrSEwagbxw5vhmAWlOALLeZlxPtRA0Zq1s/Tf08DM=;
	h=To:Subject:From:Message-Id:Date; b=qRqBVTF7M9qIfFQd3NhBbcdPDFlyDt2DR68BNC92KTsSIwC7w9+rtKTGPEpDSLNtMf2x+/ioOpY3S92fb+pQUW2+Rj+iUjpn9OLu6sAnyHUsLO5JLTJXEgViWQgf+rwF6PgMqXF4PS+QXbRVQTNhHzJxpc49pvQYz/2OCnKi83w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oIGd6lDX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oIGd6lDX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0384C116B1
	for <ddprobe@lists.linux.dev>; Sat,  3 Aug 2024 22:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722725753;
	bh=utHrSEwagbxw5vhmAWlOALLeZlxPtRA0Zq1s/Tf08DM=;
	h=To:Subject:From:Date:From;
	b=oIGd6lDXbtQEu9DFuhUaj4ATSh4vuvh3yQ9GN41bvmlwBeqhJQlYXaFEYCQ3fgWxs
	 /ueVxFK8pzCHr/9WlLC0ZUkhNwT8fRpzfqMxQqkJ3BJQY08f/Q9XQIGvPlC7Thhgqp
	 PCcgOQXoORzvaVY0+be1/5HBPfTEjR3PxIrj7zgwAwtAflmnt4RfGSzzPrM8fIi+gc
	 NZGROHhK9wQSiiQH+lWtRJOA/mfE3GgnsohSHgX4pUEav8vsOlIC9/RH0AM9Qzd7AE
	 O/cO0jjlEEQ5bTtytB1eNKw4Q2F+mNMt98wQ+By7hphWdaos0ttpqYz1BiWTs8KKUU
	 nt2FkqRWqUVKw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 980D9C52D6D
	for <ddprobe@lists.linux.dev>; Sat,  3 Aug 2024 22:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172272575359.2838.9358500035390421083.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 15c6a715bac587ae22d712e07416cf9f2233cedf8e092c455304b90ceb6ada4b
Date: Sat, 03 Aug 2024 22:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722725753
