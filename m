Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5AF31C2FD
	for <ddprobe@lists.linux.dev>; Sun, 16 Jun 2024 14:48:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718549303; cv=none; b=FF4rw5JqVpaR+85sJFFFHE2ZyNiAMhRA+REqd4nZAoxzYcJtjyGH+0vuCciBZmMyYZM5Wmr0DrlTcHqpB1o/7fCspUJE0ooHs4kQ4gD46m2mrOxosnFpnfPJwIOyI5zVfmkYX+21gfyMTiHxZCU0rSWKmdtKS+8+wBRN1PFi/wQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718549303; c=relaxed/simple;
	bh=61cogsu+NDgRBEul8zlKHLoEF4kdu0Z9wjkuwdYGNlw=;
	h=To:Subject:From:Message-Id:Date; b=VUSBfkSX/JQ4YwpSmTDNtB/k3Rh5KLfRBkYyJKkG4iT+WQHAHWDRzfXdGobJ1nfPMEUioGLQdJATvZmsEyG384OfFSGc9Zdgdhf/bWyN6gtQOZr1x3pfxEXvnnvJB2KksxwaYdbtmqRre5hIpj17XinPsWE9JnbRZw05M5luilg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=F55xb8IK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="F55xb8IK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E814EC2BBFC
	for <ddprobe@lists.linux.dev>; Sun, 16 Jun 2024 14:48:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718549302;
	bh=61cogsu+NDgRBEul8zlKHLoEF4kdu0Z9wjkuwdYGNlw=;
	h=To:Subject:From:Date:From;
	b=F55xb8IKU1dhb4op31FUOSP+OJMEtfMNY1NAqqgtbDJsaaBX2Dv52XJq103hG0lOb
	 QtYRKHzmRJe7uK7h1X8ozBtEcPcCl6qGjw+M07krocfrc99x90t+dUs4F2n15GIZfu
	 d+HnO0yz5oCzRnBdgVQQjimzFpIMfIAh9M32P+ZMvEQAubyEphn0wT0gRbA0rH/Soi
	 ZSU4yPdXDSKCNXu2QwSutDQdMDKylCPY76kCqzMZHA+PrsxZVQqS6uuAxaikyVTNAB
	 GC1HCBujktUV2HuLjVdEhZMEbdAqv24CaVF+qq6KTkgsPVQI2n9HFF6rrl9IFe1yhb
	 M/dL77ccRW1Dw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D0365C27C53
	for <ddprobe@lists.linux.dev>; Sun, 16 Jun 2024 14:48:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171854930281.25549.10993692167346648803.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0ac61831483f371289ef206a24f7c039af6e1b48f646276f78f9a509459ac959
Date: Sun, 16 Jun 2024 14:48:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718549302
