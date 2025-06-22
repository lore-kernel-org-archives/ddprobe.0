Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31F4A2AEFD
	for <ddprobe@lists.linux.dev>; Sun, 22 Jun 2025 21:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750628995; cv=none; b=i1yNYjv9nKtLnIfzR6N1wfrox+XPHLQtJbiYgXVxyzk6MrXb6EKbEF9A9JsyWJa7sCOuI4Sf5lTksUoIirGai5ioHczA1rhhyQfCUs2sTkrXb+3XP7JJrn5p3D3hbWdlNvnEebVnE1iEGw5bKYFXCBIaIvqtVTWl6Mku5//pNvk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750628995; c=relaxed/simple;
	bh=DnnDFAGoGsjGOXLjevtN/m2phfVBzJ5YN3ShMWgEIm8=;
	h=To:Subject:From:Message-Id:Date; b=kUAn0gjzTGFSfH7GCK5a//EnCG7YYpoCP6NgCwvcvijYkKAdHurohNqkCexjpgyY00nmqEL8IcyjEd9evvOelN8EBDAhNydmw5ZxDOKZ6m/kMjIuBp9bO6F6hjJFZKbiK/VZ1O+mww+mL+Ty57IxbwKxybARq1K7kFZ+Ki0kHcQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JuHBNdQY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JuHBNdQY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B21B4C4CEE3
	for <ddprobe@lists.linux.dev>; Sun, 22 Jun 2025 21:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750628993;
	bh=DnnDFAGoGsjGOXLjevtN/m2phfVBzJ5YN3ShMWgEIm8=;
	h=To:Subject:From:Date:From;
	b=JuHBNdQY6XeXZ8If6w/3Zp6bQtJjbecM4zo8pHQZbWV1U7FHL0ZPtOQG4kFlPOarx
	 BDT9nt3TR2wLdd43+WyeltER7TAUUaRqtVbmq3PssZOLE7NFOuV61nX0mAvNoY3u3U
	 ZE1Hi6xm/3iJpdGRliW0CWzFa5Cu8NOLaDWgjuo7BapkaXRD/nfBA8I3zFwiugQPP5
	 MbaYFqMbkq6ODq0RnjNEiu836McvCz4j91f3gbfJl10QUqrk3856EXwqm3zhjAiTdI
	 q/PkLd9zdB9iR8dLaKQOmyta+tJaaHg9g2t4/kFDTLO7zBfaHzmwa9taqnh/l+wL27
	 a94bT2hO8vOOg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A2A16C7115A
	for <ddprobe@lists.linux.dev>; Sun, 22 Jun 2025 21:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175062899357.23602.12158767335683876391.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 12ab0d6a445a08d4d10b4018bd9ad6a1d63051deb1a39bc0b222e4becab0717f
Date: Sun, 22 Jun 2025 21:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750628993
