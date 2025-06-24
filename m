Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24083291C35
	for <ddprobe@lists.linux.dev>; Tue, 24 Jun 2025 18:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750790994; cv=none; b=aQwbnn8IQ8/I6E8UXAGEl/r70IY7r/xL0TodOBPXCwfaJy+XTQu2aBvGkIvVlcRMWkZQ3rgxn8/hGSsK4op203RDq1rSBcwx1aPrXK1wW43mgrLQWfrkQl2DJFJ9r97UDEMsH7JsVU4/xCTEexRna9aMrdQD5hpnak/RhQnDY+Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750790994; c=relaxed/simple;
	bh=RQ2b0/Y22rIw3AnYEvf4CqXJVTZrIDOqVvalI2kOnwQ=;
	h=To:Subject:From:Message-Id:Date; b=XyvDZ6ht7y8yHAofHmsGzZ6W2z20g7e9RzmVrWH3d0Z12irgO8nQopFtq274eIMQnZn8UGX1PVBlfp0yUheLAdLI2GIuurl5a6njlvjlNfJElwtAJCzttWY/uX/82GDiQS+KdP7oWMXy7sIPRALKcT4QexnXPMnBz1fUCf8fPfw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=u4Uqke5f; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="u4Uqke5f"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4E24C4CEE3
	for <ddprobe@lists.linux.dev>; Tue, 24 Jun 2025 18:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750790993;
	bh=RQ2b0/Y22rIw3AnYEvf4CqXJVTZrIDOqVvalI2kOnwQ=;
	h=To:Subject:From:Date:From;
	b=u4Uqke5ftkXngMUaY6u8WybUahp+67nMi5L3AK3z8YL+HjYzFox9xdtUvVjmNnQZK
	 1CIgUJGLQAchvq1WmSk6Ix2t6gzO+Fv0TGxgMvDNMuuw3/NAzrEFbKVDqtWzGk4xQd
	 hnAuUpHTrhygChA1Kz7yGGTCdQpSasfPpdcwSZaeX7RGNYnVViANXGniJJm6tesPVI
	 PRxC47+3M2ak/cLvYZyqCb6KXiBvw3RbQKlfM3LZy2/+9INljeuc4GU6C9MhEUuSuz
	 g+3G7j34XttwwgN8G+WzCBKIU/5oqKxAisCzEpAjJysp0OGoelmwQUbcxQ8jspuV/x
	 GgNsJfYPhYsvw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95A41C77B7F
	for <ddprobe@lists.linux.dev>; Tue, 24 Jun 2025 18:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175079099357.24130.7221561277743328464.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d9a108cbea506f029c81c25f6b51d9202c0180fccd75aa0b492bfc61dbbe6189
Date: Tue, 24 Jun 2025 18:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750790993
