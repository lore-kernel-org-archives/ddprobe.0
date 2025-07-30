Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 398DB2DE700
	for <ddprobe@lists.linux.dev>; Wed, 30 Jul 2025 16:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753891794; cv=none; b=S8KYprNERSEWCRLjyDzAJodIUBHSL5bSoIhHbUaZCeUwv8R5t0TPQylRVS1aKgzxDxqkDboUHBe5aklHyFLdoJod7slXHc41SOoP1Ov+9a/4siGOdot1+L4hbGGyTiCbMJxXbnJ74fDGtsmFhPpMWUg5VgfRO7wQ6OcSeC7HWeU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753891794; c=relaxed/simple;
	bh=J5sUcskDi6wcI9Cvd5lS7xwnfWnfvK3vCESMeY0XJeU=;
	h=To:Subject:From:Message-Id:Date; b=bsWOb68+1mpqdDy2eGBAm5GaFPHeWX5CuXE9QInD6NRoA4YoNiW6dHz9Oglon9qV9GceeEbutjht8dKCVbunKSYAPptUNEfsUhYTP02LfseETMAkRqI7LoDtmxnDLwufZ9HxV9gPosKXXhCGw+NehNxE/tnfnPsqZua2Oudgjbk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=P8bjROUl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="P8bjROUl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FC05C4CEE3
	for <ddprobe@lists.linux.dev>; Wed, 30 Jul 2025 16:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753891793;
	bh=J5sUcskDi6wcI9Cvd5lS7xwnfWnfvK3vCESMeY0XJeU=;
	h=To:Subject:From:Date:From;
	b=P8bjROUllWtdwa7tc0FwlHcl29zsn+3ACbUfxjJp1eqoeNGei8zbsjtnDMC/HywQr
	 ExG8j2jCkqWp99KFQQwFbIDmdp20Zoxt74tVopv3Sv7wir1AjR5qAlbtYMsfUDaylD
	 WtDX5JP+S4kGfCaVuIhTXJ1MqJ8hqqsR10dhgnq8qN7oYwx9KF/6D5Kn+/AJSAdYi0
	 mzpiSG3V4dMl1oIjeKGI+UubcNXGFTb4D7wPErZXlCW4LMeCOJat1r4vBMVh5G1IPI
	 dQ+qxUcgK4eqwXFFG8Zd3fWi+I2Z0eT90K2UPkOPwz8xyh08xcD59RDYjrg7yiQM/b
	 482Pn7pNnIo7g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9094CC83F26
	for <ddprobe@lists.linux.dev>; Wed, 30 Jul 2025 16:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175389179358.1018.13674757201714612424.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d9151429086dc8e3e0dc7ae197249e651a7fea1f7cc58707d6f19537a4340982
Date: Wed, 30 Jul 2025 16:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753891793
