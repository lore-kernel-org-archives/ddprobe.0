Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49C1F1A316E
	for <ddprobe@lists.linux.dev>; Mon,  6 Jul 2026 17:38:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783359514; cv=none; b=uooQwod9ux/XfF+nUaOR7JL6/FZvCPw9eMvSt/VSpawiGLc7el8QJFozM3CY4uXMsO2Q1KitzPgFi03VqVebZMsLfiBloJf1NJoyUj8gUUY/Vu1NGQAAu6SQTrS6rIbwdStwcUmiFw7dmlyG5V+qt0ezYtfe/B8ZTueIwDVmWOc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783359514; c=relaxed/simple;
	bh=gZoBQgYTiVq7yukKeMim/XUDXvuqJ/6xnvgFXajgHzU=;
	h=To:Subject:From:Message-Id:Date; b=SOWcpRpCHTheIK4a0ts76ry6tYd3dC/erSwpGaNwnhSvqJxHsgQ4tTEQVRfcO9kUUaNZ9cyV9WrMVXP5oh1qofZ4UJzplSWeC3BJSM2zVjCqTqIUGJ++bgQ2vHhGCQG20XSnSwCol1zi6eQ6lUozzJjtUAiyjoetbsTjdVCFNVw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=onIpK06z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="onIpK06z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA21CC2BCB8
	for <ddprobe@lists.linux.dev>; Mon,  6 Jul 2026 17:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783359513;
	bh=gZoBQgYTiVq7yukKeMim/XUDXvuqJ/6xnvgFXajgHzU=;
	h=To:Subject:From:Date:From;
	b=onIpK06zMDaRtVH3agFXDQhZ6WaNGPLndaSoHlN3HTLxgR5Kvi7UCmOk20u0GXMMV
	 BCtX+ckzvOv2rxOWTJn/e9XX3z2P3B077SGXbbputfZybgReZ3biSf+ogz8x7SrnxX
	 IEh0045/JR+3jlO2V1jI+yiPIc2E92SfXedKitGm232P6P2eVy/raP3ADbJUplg+pv
	 fpNaRNDAuJ4D2icma8Dc8R7yfZ++ybAriU7YuaXgsXn2uBcueXe+rFcNzMwDsrqPBb
	 gqst+sjlITVa1Gp91fkVGzOztDAx2g1ilq/7/dB+b8/Ljy1aqEVdFhv15EcvS7yzoy
	 1Gjvf8WKYzA3g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8B6EC43458
	for <ddprobe@lists.linux.dev>; Mon,  6 Jul 2026 17:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178335951368.392.7058218763462646814.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f3695ddbbcfcef277ea70cd5732e1c959f2ddb1c21fc043a1c6831fbb7acec01
Date: Mon, 06 Jul 2026 17:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783359513
