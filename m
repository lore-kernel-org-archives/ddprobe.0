Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3242615D1
	for <ddprobe@lists.linux.dev>; Fri, 19 Jul 2024 02:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721357154; cv=none; b=E7OSUb0RKXZ/6LQ7SBBMcoWgbScQ960xTYwMDt/D8IatksUjopuiB+t0MuMlmaqr0KBwNXeey24oamFqM1Y/FyPZY4+H/4JBsWBWS5SP5XeKVRGrug9tr/USjU6Yg8F2ZNGrNbbbLhS+zept++sAWB/0HNghTAOHGHDYdm5rMWo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721357154; c=relaxed/simple;
	bh=lbotexonKr98qQT+TrZodlT3tqPEnbzc5tQSwHsucZM=;
	h=To:Subject:From:Message-Id:Date; b=lH7GzEHNkAIYEyOK/41w9lMOGcCIJaihWTGdr392oymsN7/xEcuVC3Cg0885idEfaVvLqDtxCGqYcWoGk6xjKLIwxHGdyGuJ7LLambFPnUQUGRIkRtIi/h8SG1L5yeYW4YvTCbd2dHiupxHlLbMbJBP7WyMtzc986vF00SrhG1Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DwbYw2h0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DwbYw2h0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A808FC116B1
	for <ddprobe@lists.linux.dev>; Fri, 19 Jul 2024 02:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721357153;
	bh=lbotexonKr98qQT+TrZodlT3tqPEnbzc5tQSwHsucZM=;
	h=To:Subject:From:Date:From;
	b=DwbYw2h0AMKJnYrtq4qiEjUl0PHB9Orq/WYzPxhx24KzJHb5VfL/t/5f+Lmp5OAsN
	 ITY55XwOzSdCIFZ99sPrRNu95Y4hLFyBNLDqeSLT6o5mRBLXyD4/6+6XXy7EZJn2Fe
	 dBOYmYPQTfR9mGY7EN8BFpvUFrmtwNipEPLmFwbuUTm/cpaTseanI5zyA1/zw0QTgQ
	 hdS/KSgPn7hA89rrYh+UKIUpstbozOaGgm4R46KSFU8d2Uwa17fMyS3H1MDY41+OAu
	 WXkyXwpbDbbW7qQFGAmUM7Wy8jAz8H2Y/Q2vppvIKgI+WbJ3krURBw2OLPYK7fsJvo
	 +trzOjJigc7Sg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93130C3DA49
	for <ddprobe@lists.linux.dev>; Fri, 19 Jul 2024 02:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172135715359.7029.12270468351275103656.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7c5cda1d7e36cbe2ffbd69dda655ae0a0c9f9ad88cb377f6cd23300c43a62660
Date: Fri, 19 Jul 2024 02:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721357153
