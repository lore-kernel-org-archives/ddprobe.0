Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B79E3939B5
	for <ddprobe@lists.linux.dev>; Tue, 23 Jun 2026 06:46:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782197194; cv=none; b=kaTm3hwxL2zX9WafwHDO+LWSAwDv96L3IfXX4PTP4BJ0qA7CrqHeTj6Rhode0hq0p9xSv9A4l1JVAuVCgsXquuizwGLIZ8pgr7VcfvwQ4xI4r2Z0WO9znsRZYmuYvhNswU0LSRbFjyTI7oqC5ej/Qtbj6C0r5UKxMr3EoSrshLY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782197194; c=relaxed/simple;
	bh=bb2BHra4lbPypsMAGMGz8P+UQC++nnv2aS9S4YH0Rhs=;
	h=To:Subject:From:Message-Id:Date; b=VpbSE/NKNDiJCSebx9FM+B9Iy/krmMJqsZpPfsTN/zwEvF98T4u8kIyB/9DY1WX0bUK5TL4Qg/npnlLdfAcw4YBUyQKJDIVvAacKSwvm/zBWWZqIudjTvvEdCsB5gaMc+31u/tWnC0ZwxPkLoaxWnNVGLtcok3ec/bbHwVp2ew8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JVYUWiCc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JVYUWiCc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CED40C2BCF4
	for <ddprobe@lists.linux.dev>; Tue, 23 Jun 2026 06:46:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782197193;
	bh=bb2BHra4lbPypsMAGMGz8P+UQC++nnv2aS9S4YH0Rhs=;
	h=To:Subject:From:Date:From;
	b=JVYUWiCcETCQmmnhhAaUParTSXOPwXX1wYrXbDtnFZEwbxJc99/w7SbhDEBUDR8JR
	 NZXUo+y2cpq+79CI3xlWabA6XPyADE6koSANq5x2XSgJrm91K2kIRcZCQU6RODu8je
	 fYncZTtbYexUfaohljalkIrBh7CXInuubJObCbyy+yte/JauuYyydG7gP9GfImsdEe
	 cjbiDaddRzLe952cq/CyLgLKHE2Lk9fDRoebo36rXa7mTL1rrr8X33E36W5IAZ7OxT
	 DnejSWo/ITCiP0PoUHW6s9cwaRxDPRosQ3pUGTdu5udzMQdBN3wo7uaVjaMcWiOXM0
	 P8sGw6euvcjdg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB3F3CD4F26
	for <ddprobe@lists.linux.dev>; Tue, 23 Jun 2026 06:46:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178219719369.28825.16040057546887598336.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c83072314cc77977eea72ccbb79d95a18ebb709dc2461af2ca6cb099594a6c7e
Date: Tue, 23 Jun 2026 06:46:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782197193
