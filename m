Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0254F34D393
	for <ddprobe@lists.linux.dev>; Fri,  9 Jan 2026 08:33:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767947635; cv=none; b=sknKwl0bE1N6KdcBX6RQ5fWoiZgejOaFQYPfBUrgQ8yFtROKbF4/vn8+Pf6tO+PL3Io7h5y0+Ys0ODLS8E7ra3YorhQP7ff6Cmo1eWekXIV+mhvHySrwdbqBQIIgrudz2UMvpVxaTA1np3v73bhdfpi1w/r1KbUnz/sMMmE86rQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767947635; c=relaxed/simple;
	bh=bT/B2uuvhzEHa+Kehg/PfnhrpXbnS3IRpgWEfz6TcRI=;
	h=To:Subject:From:Message-Id:Date; b=TZdpVpVyB5JuCUBU9n0AnQlLc9jKINCutq0CxiJ7X5qAaeOhWtY1Q8w+CWCPOyR+pmhZrSNAsHseT1fBGTslFx8ycmeaqMXaOQYfhELM+B8517Q2dd1fj47hxMqMut/vDFQSI80X1FzItS3mYofYiY9VRO5WvQd3zq09eqfN6q0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IMlkmtAJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IMlkmtAJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F7C4C4CEF7
	for <ddprobe@lists.linux.dev>; Fri,  9 Jan 2026 08:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767947634;
	bh=bT/B2uuvhzEHa+Kehg/PfnhrpXbnS3IRpgWEfz6TcRI=;
	h=To:Subject:From:Date:From;
	b=IMlkmtAJP5Dl9YUw+pVIyb92fUcRPX2eI+924VleiKN6MaBK/lAcLjPK6K7beEsa+
	 WW2i2smX4TF9zy5BghTDRGThH9dLC/cMcdwAmJ8L686h07TnloLqU9ymQTL2AWK9WO
	 O6433/KckkOdXOcPN4Quoysi+GBVHhasPeaP3gRZ1j1LdW+CJNelV9q5y6svuJgJ8f
	 8DgrN4TPUK9SlNNY27yBMKwEgrLN4/yPgnG+zgwkJM+EBFmxbxoX9kde50DP+axQlK
	 xmXw72bJBtttWlITllq0XNG37QyGTMEnz9+YvfYMs89BukX+Og/AF1xMXf/nZ+zF6k
	 +SXqwjiv3ixzA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E7EBD232F1
	for <ddprobe@lists.linux.dev>; Fri,  9 Jan 2026 08:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176794763357.16021.8182549309107166591.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ddd47213a36c94d8336c325ac360fe7b31c593a46c04d25ba19335ad1f9a8543
Date: Fri, 09 Jan 2026 08:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767947633
