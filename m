Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 11FAF70830
	for <ddprobe@lists.linux.dev>; Sun, 11 Jan 2026 01:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768096434; cv=none; b=Wo4m75tznDNXUGN0PD+dxXM5ALWYF03Qk5wLwMxr0sH2fPgrn6VapNG1eI7avm8V6JPq3rMkOaSj37bIJyPMKwIP2rtuQ3g/r+kDxQDjr/WVev2wc/uHY2uD9hHUMVX2hoYyUYz2/z3T2vXGkKS/C9LXKHfsrVuWcxC4oUC4r2Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768096434; c=relaxed/simple;
	bh=5/C6l82J/DDfJdZrVf3fXXUFeK4GCMY4XBLhM43tPbw=;
	h=To:Subject:From:Message-Id:Date; b=ihKMJnCm8KMO1aWnEovuzaOSqj4392/+fjJIQIV4dByiyMy4ouaEMajeVJUwjQwIWWvfhf3EC7hZBZxxx/gXywZbHH7DZVGAaEpy+ivapNO6kHR+c+M0ZalHEtyutlOdnPCyi9TvevysRCvrMhZERbAFQNWQ8DFog49FTbFxZLc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VRpBYkOK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VRpBYkOK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8EA9C4CEF1
	for <ddprobe@lists.linux.dev>; Sun, 11 Jan 2026 01:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768096433;
	bh=5/C6l82J/DDfJdZrVf3fXXUFeK4GCMY4XBLhM43tPbw=;
	h=To:Subject:From:Date:From;
	b=VRpBYkOK0siIM30J9HITf/oQkiGqlBzyPn/XYaab2f3+QhqliwTz423iHvb7KuK59
	 NDXR+GlYyhGvhDK0mOh59+iVb/WsPgFdIx2PM2K/fWp/bo5AtibksW8zFqKxCa6F8b
	 bd/qE8/Q/OuNH7Xj/3fG7RsYtrlZZXRCLxXLBNYl0zwZi65jNOJcFRXvzN8k8HPum8
	 4tVOvAiIjIPTH8VwD5TN8mx1g+AODP9IZn+YdkXrFeStRw8YnmZmhJuC1ch9r+ThoW
	 6CwO6FX0HY9K0DdRxBXY6duUo8i8eEGdBRPiwifsM49PxxGuTvDUJonEI6MQKJIMPt
	 HkQpCdwTDBI9g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98DD6D25032
	for <ddprobe@lists.linux.dev>; Sun, 11 Jan 2026 01:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176809643359.23294.4963509363756703415.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 68cbfdd8e71c8d88cffa51559a8d97d3abe6d2f6d0a177722913d1da200c84a8
Date: Sun, 11 Jan 2026 01:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768096433
