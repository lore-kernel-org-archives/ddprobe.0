Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9BB6D175A80
	for <ddprobe@lists.linux.dev>; Sat, 20 Jun 2026 18:06:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781978794; cv=none; b=k+IlDdIRC78jXIkhkznmCkrvpOmvjKCgrr7hI9cq+qtzu8JG5cFBhpGpKEi1Rg03pZ4zp9BMRRfQVh86mC2ANWl5MOnAWk7dEcSN/yjyP/aR96t2fSrIXu7Hl5QDichncgVTCj2bK940au1ZfNngOWumwS8v2Lbrgg6WUz/lI9c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781978794; c=relaxed/simple;
	bh=FxaNy24MBexryT+IlOLOW3GY2d7Cvw7T7lNi8NF17Qo=;
	h=To:Subject:From:Message-Id:Date; b=PuViiKa3kRbAHa6gAn4Sn6QfkvUR6DrHreD4k7hBJboEs5YQVXZKZzcDQrOX1sys44mV138lNkQGosnH+1y/BOM3ODWf97VpA/1n/cjFnXVhM5xUqubNMKG4Oflt+oRJbIEokstlJKF28DiGeC4zETmrRMGTsKBuKXXrhMBvp4Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AZNadx8r; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AZNadx8r"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA59AC2BCB0
	for <ddprobe@lists.linux.dev>; Sat, 20 Jun 2026 18:06:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781978793;
	bh=FxaNy24MBexryT+IlOLOW3GY2d7Cvw7T7lNi8NF17Qo=;
	h=To:Subject:From:Date:From;
	b=AZNadx8rFj0W1vz1B6kz1QFjJEul7M0EvYmW48AsVAZluQ6Otr1RAGFyAP6F5+XwA
	 qkvKpqI3Fj5mDtUHpGg1RVlrs1sQhC8Gw9M6HLDPzXYRbHBC6eS/Pu1tXG54kKMkrj
	 i7GjYrdF1JtiVNZP880FOc1x5A24MRvm+Irz82ZjMfA+SEOlxaowQ2T8d/zJfBi05O
	 s7RzzzjJ5JODHkhNcP7OHl/GfXT5G1gNQBSjrIMpxXhqK5fof6BaG7XwFVT/W0/uRl
	 Ehv1Q0rUgaFXpnU+N5YH+nT/NRW8X8m1AZjEgUxAYea8mZPUh20Ai6mYfjb7yTpnBD
	 tXSIAcKhgktMw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BA47BCD98E4
	for <ddprobe@lists.linux.dev>; Sat, 20 Jun 2026 18:06:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178197879372.24721.6848658832711807851.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d1cac8676d86bafec01f90363aba2f5ac1e68ca7e67534abd212211e48d36382
Date: Sat, 20 Jun 2026 18:06:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781978793
