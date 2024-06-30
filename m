Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 62166139CE5
	for <ddprobe@lists.linux.dev>; Sun, 30 Jun 2024 14:34:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719758063; cv=none; b=Jd+YTE9fypzJ8I/nbFoOE6hgATpYRlodYraXRIXFI9Ve3l8L9/2CKLg0iU4McjAgLgWgQoJcf2yyheV7qjigofMV48Jy+b6TuIYYyqvkHejhGgtqnylX+H+eB3WL6I5o/UxJL7G+DJgYrblun2/tLAOnQQJQ/qrEc4qpzTc8Kp4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719758063; c=relaxed/simple;
	bh=I0zXNN0Hn0Air3dhVrPQsg+z6/7uDYz9vKv6dwnw6Fw=;
	h=To:Subject:From:Message-Id:Date; b=eo2rvM3SgtOzQsIW3RE8iv94y5j5AnD4+xFJJHRJDJkwyMduOaALIXhy6z8uQiEpOJ1hfrQQIwvjbWZqcqwkDJwFD7fIThsCq3QteoycPjw9QuhRGHfnRNeMr/oQUat6zTLCxNVoCj00Up64VGNdKsl/rJ15weCE00P2e5772f4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZaRAdZtH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZaRAdZtH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E3293C2BD10
	for <ddprobe@lists.linux.dev>; Sun, 30 Jun 2024 14:34:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719758062;
	bh=I0zXNN0Hn0Air3dhVrPQsg+z6/7uDYz9vKv6dwnw6Fw=;
	h=To:Subject:From:Date:From;
	b=ZaRAdZtHnnXEHVfZC6+vSP6MHj8u9MUTNBhED4hSVjVD4YE/wz+Jxrkd1EnRd3Wi3
	 qexOQYAXw11l26ZlM7dtGxLQi2k3ISt0gufMVzVkmG3grZnnOCv9E4ndl+KoPpwqYp
	 7/qs/YYCFZJ8cmJcd87eQsyU7FG2JWPV7Cvv7Bhn314DKzEqZxo5KbmFXxnNR/v6aI
	 a478g46nS2CyOdcRhWi4IvjrwiA0RTLCNyToe2PURtlEtPcO5p7acN1NZ5Ky84QWtR
	 7u+kS5Y6iKtxLOdJvbm6jLIU9TFKJrjWQESrvC2j5FdxKcxeZbPCe2y9dmWfPztMgH
	 Ts59AhaF/Tcmw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C962FC27C4F
	for <ddprobe@lists.linux.dev>; Sun, 30 Jun 2024 14:34:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171975806279.12543.7330011249915687891.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d3fa058d43a0405eaa56e846cd12194af91bc3c2e03e30c0ad701672a14564c0
Date: Sun, 30 Jun 2024 14:34:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719758062
