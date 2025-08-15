Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 417FB220680
	for <ddprobe@lists.linux.dev>; Fri, 15 Aug 2025 03:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755228594; cv=none; b=H40U/dN4y0amur3+W25TZeUrrgsB9vK7kzP4fESObjyDb+a/OMHtLQNpVtzaIxirkNTzZh/WfJNdK43Whl8zEIgJjqkCunVybXau/r4Cb6OA4W55+Dqecz0drPC4E7x+oMOEsFGNCIEr3TzsIBv6S978ePQ127XQxjJYiiZTcoo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755228594; c=relaxed/simple;
	bh=C/UqktlRKJ0bl8pVAS/7WQddrxEN7Qm1rQqHogOPu6w=;
	h=To:Subject:From:Message-Id:Date; b=cRMb0anSB0u3Uu3G2IUew7Tmah9wP4JQPnyZ8QNKwStkPySWS5/jAkQjtU+s8b/oAx3lFFHpnyUG0NGG961w4lSh5DsTXlxAeR1sZyTAuL3QPFV33o+zewDS0IV8RAOGUEfGi4AswLkdWu1Y6eFheca1EvHF3DQF4may/9dGSZk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=it7JB2yV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="it7JB2yV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A22C3C4CEEB
	for <ddprobe@lists.linux.dev>; Fri, 15 Aug 2025 03:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755228593;
	bh=C/UqktlRKJ0bl8pVAS/7WQddrxEN7Qm1rQqHogOPu6w=;
	h=To:Subject:From:Date:From;
	b=it7JB2yVfCLTxpui8AIS+l6L9r3IRm89sKmZhZdVdF4SJnq3KOMloeFAgLADifsV6
	 ARl80mgKfzVVjevE3X3YcUlBHzCL/Sk/J8C0S/ne7QgpSDT6K6zea0/ZfRqr7QNsKB
	 aoqkMtItQ7ksrZ0Sv0rRDSwPTFGpO6Byp0/hFOUMeIbgaitdObzLrGPZSHtB4fin4E
	 +EtBhYvSOcRunOQcVwqEPbuI8tngxIfZr5T8IzfCa51Ui0WlPi8IKliLI3AUiHygk0
	 hN83Gewqx5Q/6h2HmjmXg122ZyXkzsgjs5u5Jsyq4YCGknvFMdiHJh6d4mvCAc6fSV
	 h1+X7pm8TjD1Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9213DCA0ED1
	for <ddprobe@lists.linux.dev>; Fri, 15 Aug 2025 03:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175522859357.9867.8543446391529476277.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: da8ff5cf4fefa81475e318c8e675a6333af61c343590c61cfb7fbb9044ba6016
Date: Fri, 15 Aug 2025 03:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755228593
