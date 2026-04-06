Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 12B301FF1B4
	for <ddprobe@lists.linux.dev>; Mon,  6 Apr 2026 15:45:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775490334; cv=none; b=DJB154Nz97wJG+TubkGhNmkUgibrhCVA+HKigtAj2bkjARWpvZoyEeZwEIpYTvEE8Nc6CHD+qZYGgMvhQ5O2LC87KStn+PQ7TTUgaqr6KTn9Mrq0LgSaHBRj1amzKCTu/lvCpotOW1Ob2jewbo+g9YlDatxGLRJTEVF+genJv6g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775490334; c=relaxed/simple;
	bh=w3yIc6UAmyyFmuBALzTJOh9LFYcXFtRzGRNPipQTnko=;
	h=To:Subject:From:Message-Id:Date; b=IxZx7G00SYaih3TWvY6L9rGQ96ocxdZgnANXf7T7Fy/hwp3meoYQguyqVPZS7GWKoPWSWcP0K3jWEqNRbWmfyL6hWkvxTCHWD/KjBvh2BLwXHZuXB5KYBlEMGYvUuXa6/ntXDjs6/8RukyURB+rpE4Dp68ayC43aMHEIRukZ1PU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=doqc3MBw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="doqc3MBw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE12EC4CEF7
	for <ddprobe@lists.linux.dev>; Mon,  6 Apr 2026 15:45:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775490333;
	bh=w3yIc6UAmyyFmuBALzTJOh9LFYcXFtRzGRNPipQTnko=;
	h=To:Subject:From:Date:From;
	b=doqc3MBwVtToGOse9pU/y+8LoqzMlbJnfW8V4V1fO5MZg0CM/UGZixyKBtfK+8TCZ
	 huaOkzI6sk990OuMHmErIXUkfH9qc8Gi4R0lHMhllg6UVUFoL15oQenRgw9JJDe4BD
	 dSGzMfrZvwUqygTWm92+by8jlltiDKgxkNg+x1ji0gdKOOTaIaqkaE3iUyWA5eoQ5t
	 fs/b3OoSCz5H2+vHpjPakxm+EK4va+ktSUGw2+pdYEnQ6rwOXdqkr1fxtozCGIkTVQ
	 UEgfjZWEAnzqhwMKiaW2a35yvtNhoIZYO1Z4c64pejuqSwpIRDIltEtgdsy0eqqIOD
	 AwrdzKROdBb5A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADAB3F46C4E
	for <ddprobe@lists.linux.dev>; Mon,  6 Apr 2026 15:45:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177549033370.5805.6402793099138653603.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5fc227061171bc7a5bc0a2f464f6f34437586322743ac9a50f6ed8068113b7e1
Date: Mon, 06 Apr 2026 15:45:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775490333
