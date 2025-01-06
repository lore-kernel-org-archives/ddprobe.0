Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A9981D935E
	for <ddprobe@lists.linux.dev>; Mon,  6 Jan 2025 12:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736165154; cv=none; b=TleSR9hS/UxTKfyxF8B26fV7kS0d1EikJexILwEJT4xsRh3TF8kHUvyDfrRg+I/5NHXj1LREn2SQlCBbJWO9mZqqiRP7EV8K+X0I9Ce/LqV0y1a2worKv+zjXSx3YaBEZoShyjpD+6fQPaD7OQpHZy4J/5Y2dK5RYE+KgqWKnTk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736165154; c=relaxed/simple;
	bh=1yJGAdUTl8zVk4ZCICjGJryZFMgZYN/Heg/7knHWbAE=;
	h=To:Subject:From:Message-Id:Date; b=jkujuTkiwgoRGqfk6tUj9C/d5TjM3Sf2SgCIouqWCikl+Wbfc/Xd5qlRoL8aru3pUYTwin09JobQFm6Sj9mbBYDepFLdiy/ABtPJttG2q5d+YfXuhhmZoAniAgq3/BZ/ldZGa4536iFFpqGTdlmSRWMgV5AckaRGR1bw1hZsxUo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gMyapWDN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gMyapWDN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B14EEC4CED2
	for <ddprobe@lists.linux.dev>; Mon,  6 Jan 2025 12:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736165153;
	bh=1yJGAdUTl8zVk4ZCICjGJryZFMgZYN/Heg/7knHWbAE=;
	h=To:Subject:From:Date:From;
	b=gMyapWDNCHuAp11aGF/ssnQ8Dp1XzvCw+SmqsK2LWMpO9MKDRRnXZqLPUU5pOwONT
	 p6IsxyL9eBPi6fuVy6GZ1Ryg0HrVeVTxgYnSCFlV+iyq+Kr+Be6dosIyhAn3C0Vm+6
	 RbVUhM/dw3yueln9IeIfZAvqW7B5bgPZlWfZvfYrNkMQVtptEEhzUZg921ZWvbc9D7
	 WlvMNQb6SGS9E42UxuJaIfjAlYGUyejJQezi3OeP4KTXkiaxllUBFif8Ed8lxQPmy+
	 TYmF4Z/ipHK6zv+dqw5RpGdd9b/FaNzxsBcnKPSVv3D/PhOQL7dbQ3IRoJ5yrVS9PX
	 v4p5t4bl2JH/g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98DFEE77188
	for <ddprobe@lists.linux.dev>; Mon,  6 Jan 2025 12:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173616515361.31414.4807907984384358670.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 651f65eeedf818578adb0b068a4b46a58867643953d5afae3724ca69f71ca35e
Date: Mon, 06 Jan 2025 12:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736165153
