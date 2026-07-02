Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 556C539890A
	for <ddprobe@lists.linux.dev>; Thu,  2 Jul 2026 21:48:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783028914; cv=none; b=B8sbAwE1cCPo/Ui5y9VJJ1/rCgSRqKM0lsbQoQO85cTrmlzQI1NGquO+r0b83mdgF1xMDEBYyfABsskzffJU9u3vtRksOiJp0VD+jhzAChv8qR49KpxBG+gNrgUplRpPAFBvhdccYC7EDTxOPaCxKswN0EUL4uO291URXNOM+08=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783028914; c=relaxed/simple;
	bh=KzljUHNvOrFI40jDMpv0wsPD+4enB5kv6yC86w/5w8U=;
	h=To:Subject:From:Message-Id:Date; b=IXwPyHgVtPOpfLvqDxLCTZQ522WRgTUtv8pWd8g8UHqXozCTADQvtEMkaYQA+nmzJaaDiguKj1MUOKRlw7seaHqD1wMq8sEt4Hhu9URQ05oNPv+uDMQhX+GBdi3yPTR9pIjvVvczvFm3kAD+ITbftJh8Ezmw29zSV2M2jRYUlSs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Hqx//U0O; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Hqx//U0O"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CBAA6C2BCC6
	for <ddprobe@lists.linux.dev>; Thu,  2 Jul 2026 21:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783028913;
	bh=KzljUHNvOrFI40jDMpv0wsPD+4enB5kv6yC86w/5w8U=;
	h=To:Subject:From:Date:From;
	b=Hqx//U0OMv/r0N6a09GzTeBhgAF5fus+3yaqqWdM0+7+y1qq8Bx4aN1yNBzZJW+3J
	 z/CgQzEpxOKRZYje2lO5Ab+W4n7USaMIt6x3ZzIIbmXL5x0e8Od+trldvXfCfAfpdn
	 7Ng1lB2+cmpWNqMK4n/ub358QNN40cfg0r9izQh9WCnHkRdnhvLy7caHLbBU548REJ
	 2TYzE0Tee3iEcBJucBdAxu+0X1PylY670G1VyF7afl0oQWVLOk2+/RJSZkJ9AX2HHt
	 /ZwP1LUYkZ9scSvJgmgFaxCZSUDcGI6S7e+kxEBJreDG34W6m9Ubyg1tBQhCSpRXw4
	 hEnqE5XWeP2nA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9A08C43602
	for <ddprobe@lists.linux.dev>; Thu,  2 Jul 2026 21:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178302891368.22935.1803412329564571108.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3b252c7d29594cc3dd4023ae95b7edc6a9d4b159b7e34885baf87d393e96e95b
Date: Thu, 02 Jul 2026 21:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783028913
