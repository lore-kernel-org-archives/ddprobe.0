Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 227D5175A77
	for <ddprobe@lists.linux.dev>; Tue,  7 Apr 2026 05:45:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775540734; cv=none; b=BMx3NQOknytvhT9bw7qdn6oRLOvrWqVYPSB3x07Q8vHIboD1g/dhQEqmpEP+CsaiZeWZjkMPYWbla/inACWPeiok9a+6kH02vViHpaZadYo3vVVJ82+hnjISLCtj7aBVgm+TC2ToKtBB+hH6RVH2wLkLvi0T5UwfwcYU/j/xORk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775540734; c=relaxed/simple;
	bh=q3KisrUIv89U/vKt3pkDRnvqC8hS+9+7yU3PqAB7Fyc=;
	h=To:Subject:From:Message-Id:Date; b=aXjqY/owvC4LpMvmLrLMWv/DnMu4GdXsuS5Zk3zLpxPiScLWDI4CzFgY0tvPY2qavyBX2cto+D9jAr+sWRJUSKfubpEzZuvtoPc74WFF6ghOedjhx742ukMT1dOiVNWyklthy2wsc3ekGILqAP5aH9MMn468s3Da+rNE1cwrK7I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vAfCi3vS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vAfCi3vS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9EB9C19424
	for <ddprobe@lists.linux.dev>; Tue,  7 Apr 2026 05:45:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775540733;
	bh=q3KisrUIv89U/vKt3pkDRnvqC8hS+9+7yU3PqAB7Fyc=;
	h=To:Subject:From:Date:From;
	b=vAfCi3vSPSJlDInXyC8IJ3QnrEdXq0UfJfODwpbHh7lMyndPG/XT3fnnBHe4fwcaM
	 VTseBNSjt0a94xuiDWlJCUM9yiqhXmdjCvoXapasC5SBQLJsaRpKsZ+cbGVz4zsTcz
	 MCHfppEi11jiXzSJ0sUEePWZvUyyEq8z4JQ4fWwAHCFZ0wG4ti7GCeKLMQw+Nnb8Py
	 v/Pw+tcp3x944Pz3DnHdAXY2ycCBMH2KAiumldzjFAHhOQ+wz3Y+9gUL3U1NwJc3+V
	 Hoh9d/1y5BcxAapzUxkH/pqtX7xoMkNUt4RyGD3IebAfZ220dAFRzxMYit0CDEofJn
	 zSOUrC/ZOZxXg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9F4BFB5190
	for <ddprobe@lists.linux.dev>; Tue,  7 Apr 2026 05:45:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177554073368.20482.15605340878334331030.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 598e1182e3e4e054cfee7bf385b7f4239f407a69e063d5e6611a5c340d210918
Date: Tue, 07 Apr 2026 05:45:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775540733
