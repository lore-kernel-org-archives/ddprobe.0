Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BCA01096F
	for <ddprobe@lists.linux.dev>; Thu,  2 Apr 2026 00:15:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775088934; cv=none; b=NP+mqSVn39CGh/YwYewVx9NCR8RmM1OpO9otfOzDwJl0SlM1zUolmu07y6pyZ9yxl+AqkO2Vw8lAvJg5aCMgUFal4RiCg9YqiI4zuJTyjVGENsTrp54fdksYCDuCkTkz3ZQ/mL61oTjQ4WWnYLefMvrw4rO3Gm9wmG3WgOIc3hs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775088934; c=relaxed/simple;
	bh=Uo7asEr84K6RWmfMmipbW+Wo1egLNX4NDUoC3/4MiLo=;
	h=To:Subject:From:Message-Id:Date; b=jMYy1UhNmfBu4lxfnUidTPCI3CfrieE8rd+7vSjbeu72q1QDTKzW5kT7pHSGyRCYh2lO4l5mf/rPfYGTSrGfc0f2ytREd4XSsXl8mn0X4Er+0ydztGWfDKjSHeTvPj5ptjPg5Pht0BbXdHruUcmM6IsWmpbOJ4xcwREZuPT8tn0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZQ+XGNp+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZQ+XGNp+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C5CE1C4CEF7
	for <ddprobe@lists.linux.dev>; Thu,  2 Apr 2026 00:15:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775088933;
	bh=Uo7asEr84K6RWmfMmipbW+Wo1egLNX4NDUoC3/4MiLo=;
	h=To:Subject:From:Date:From;
	b=ZQ+XGNp+lX+QNg29U7kFSVFRRR/wiefBLVPCZlKyPa0S6qsOWMpsrXm5m7Cx8aODy
	 c78CuxiaEARKWhF7nvRreeWyg4mIITbq2i1/nCQG/sWgDoQcWMBLaH+aXDK1ArfN9+
	 tvejUY3fATSx1LPbmn65YUzxkc22PiiLIvsfKlVZGp5rA55jUsHmazlYuGZxQIr7UA
	 GJQmXIkye2ISnMYMHli9YWdeJ6GLiauXTGxpYgNk+ioM0o42PwZvJxPyKuKoGjrpeh
	 15JFHUHLCZik694DeRDbZ9x6A+O51qm6zlFqAGCHayF0y3aTJKEd2EbWcalJMqx6I4
	 kPyZJOr1VMlqQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B01421112247
	for <ddprobe@lists.linux.dev>; Thu,  2 Apr 2026 00:15:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177508893370.10451.11798736809631264350.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f1a4b76ccdd3b4ea304815b359f37ca72c4fe9a6f22d3acf5b73658398c12e7e
Date: Thu, 02 Apr 2026 00:15:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775088933
