Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D0C116E888
	for <ddprobe@lists.linux.dev>; Wed, 12 Jun 2024 10:58:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718189903; cv=none; b=YgA4d19BDcQZThE+i6kM9SM92SBMw4mw5f2S0d/dT//fHWVNxhBpIEuXPkHqWza26Cj8zIdIQOad04KJ0x1QG30PZdugCLf/ffovh5GX5Tqc8mUmMYpzCw9kcZUg6lidmPRyY/pybkEoHzWTAXAgAnfwdgDgNb+gSTHfe7jB0Jo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718189903; c=relaxed/simple;
	bh=xgkuLuDb4sTOmAmtSORztoQYLppx8uiQkAXdR4GeK1Q=;
	h=To:Subject:From:Message-Id:Date; b=cj6fAcpTexH9EYdVR2kZ5cw5UqnWvsb6BOFLFs0ZqLzGpUwxLXJtCV3kIyHkyaj7Dy9dfeaGM2qtnHkUzS+880MLIZRedqK5Ho/I9U0Wq0jy+CQ6zgeEElNtYmrHy432FzXDKi57l66hI8MUXz6snEWW3ptj4tutFRqOFpThkW8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=at/oA3Pq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="at/oA3Pq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6972C4AF1A
	for <ddprobe@lists.linux.dev>; Wed, 12 Jun 2024 10:58:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718189902;
	bh=xgkuLuDb4sTOmAmtSORztoQYLppx8uiQkAXdR4GeK1Q=;
	h=To:Subject:From:Date:From;
	b=at/oA3PqAHwDUw2b7t/tqkfHmfczNrfg0oPqoUv0WTODY4FpgCXMwn8pP+YkGff0S
	 K7Ek+/r/ZluZtXX4H1LghO2fr38jPpWxkIXlZgB/q+28AVtnNCK3PIzhjU6ptF11/Z
	 OuuxSjgY4CgXcAjc2u4C01ESiTB8E1mc971FCYPtX3r97TVlnsotrFZFvlUjiAYV2v
	 AaHXdkF8ZdIpI0iCx/Ex/1g3Rs14iwXM2x2D8hsQcLhNJ8lfrLIMGI9zz/gQ4x121U
	 uzsOrwsaRLBIEI9Mig8MeeJ7U+L9q9fkOjqGUI3Es7RY8DQmobaF8pjNccVdpjhzZL
	 TGwExD0WBVpGg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF65EC27C75
	for <ddprobe@lists.linux.dev>; Wed, 12 Jun 2024 10:58:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171818990277.13658.5528457011383409301.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7ff7aacdd0317dadfb1a60e06b37c5952aa01e7448f7d944bbd9136dabfb15ec
Date: Wed, 12 Jun 2024 10:58:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718189902
