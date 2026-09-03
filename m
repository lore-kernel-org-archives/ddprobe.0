Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 746BE503BF3
	for <ddprobe@lists.linux.dev>; Thu,  3 Sep 2026 19:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788463834; cv=none; b=WdN5dk0A7c1oB970fzory0RP/Q0LdaRrrjmpymLgxf9s6T2B9I3Nv9/coQxNzJN/HTD84DcOu7UJ/zn9AqzVwvytRTHm67JYGTzlByAYeJ8I43la3I5Fq9VXBNjKdRVX6FOQyoXKk4fQjELIAckBVxOQ8uQFBXbUgIxjcrPejHU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788463834; c=relaxed/simple;
	bh=I8QaDPS1V1HQhVi+EFR4FoPB/z0DTovZvlNrhy8k2CQ=;
	h=To:Subject:From:Message-Id:Date; b=Uu2vb8fVjN0YHE6YiTz1YvzWC+i3v8LvMjmWZWGUH1NuS7HIX50usu98p5gX66kmEnnJb1ePC4WNvJIcxTk7z31MBUEQoDFHET9QKnCoAPf50zbZKOJyz+PePDgJnlhB5FF2QJDd6zVGlG34mGagzg8zkfC9S4Kho31jg+0CUhc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lxEiN7AQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lxEiN7AQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC3D0C2BCC7
	for <ddprobe@lists.linux.dev>; Thu,  3 Sep 2026 19:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788463833;
	bh=I8QaDPS1V1HQhVi+EFR4FoPB/z0DTovZvlNrhy8k2CQ=;
	h=To:Subject:From:Date:From;
	b=lxEiN7AQIgQhM3bkzEo/ApIwc8en9dFz31OGMM37N4q7GHNM8xL+nRK575adxcXX3
	 WBVg88inXAa62YV3WsYw24d08f7b4ybd4obHbH/Q4OEah+egRFP9VItDjFoLi/le2O
	 lSov0saK/w6R0ClnmNGJJ8YM4W1a7HC0o10mJ88z5bYyoRVoGAnK8DLdlmsMFIm0UI
	 dtVH7fRbA03u+jVnfO1Ilrp++trW1OBnME0q1YheDIl+vocnsBgL5BQ01jMhbMsdt1
	 ndgJiEVu4YEqgROqIUoPkLIank0XZQYGZ1EI/vMrwCxivoonEi2fo/R2NcrJplu0iA
	 gA99qAErP6Xnw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAB76C61DD3
	for <ddprobe@lists.linux.dev>; Thu,  3 Sep 2026 19:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178846383368.3660.1302481795264245543.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 194b32f47fac77edaf3f9511c88129e779db5410f25bebb64d4621376e4d5576
Date: Thu, 03 Sep 2026 19:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788463833
