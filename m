Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27C52373BEC
	for <ddprobe@lists.linux.dev>; Wed, 15 Jul 2026 22:28:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784154514; cv=none; b=qGDo+8FV0z/H0fgLaHMU+qqhqU6N4mx573EuhoJzQuGPG2otNpq0sKjV5bKAbQhGRiI/nQa63iwlMRUvVTynsopZl9aWB1yT4Q8HEE228tkHyWHU73IBvS736eItYXJzq1mB430ZyxRQCdfFBt2uv6B/7JB6vDsldCHzFI+OzBI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784154514; c=relaxed/simple;
	bh=9aLJGykdSuDbU7sNhKC3ahPsOsBfkg5k3uPRjmqbZOY=;
	h=To:Subject:From:Message-Id:Date; b=Etcma8gYGKCk7QA0DjVfu0LHP1NQJlsae0e6LW+z05H6xVNiaa2lbnw9i2uxMrx5e05KlXZeGjRkP2QR0lbTA47VmaNkiedDkSnS5OStxRxHBxPhnyVmVnREFqJ3wcU7lekLuEx+uewWk0h0m02Nu0HB0SlkE8wtNghYseacs/Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SAASriO6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SAASriO6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEF43C19425
	for <ddprobe@lists.linux.dev>; Wed, 15 Jul 2026 22:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784154513;
	bh=9aLJGykdSuDbU7sNhKC3ahPsOsBfkg5k3uPRjmqbZOY=;
	h=To:Subject:From:Date:From;
	b=SAASriO6I7W1D0rRFkjvBEog9umU5qA+et5Lfz83XIDOpWjioVo03iQPabJwyIvVj
	 6zORaqCRjryTVAJdu7K1p/48MLXa7Ke6pIhMKMesNLLjjBVxCT8IF38+gzB6H2+XZn
	 k0aetxZk8H20Iv5ts5nJovQQrox/eRx0H690cmH9OrbpxsNP5miwaqWCL56fKihRMS
	 8YMJjUtM+tZ6JMmnXDBcwTMsr+MORPWknlshHlA0TG/JzLdVR+w7ivs9EYLuwmc38J
	 FlpoDeIMIdWa/RKJ183TsJOLHmvHYByS1TR49oIPclQ0VTVcIihuhGGJuNVgyYPGHj
	 OjZuQRq2QoyjQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB9DAC44501
	for <ddprobe@lists.linux.dev>; Wed, 15 Jul 2026 22:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178415451369.11970.1796197622676517308.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9eb247ae9011f67436efcd13208f820aa4aad67ac7bdc3552bc03af255a0a86b
Date: Wed, 15 Jul 2026 22:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784154513
