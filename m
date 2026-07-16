Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21D513C2E
	for <ddprobe@lists.linux.dev>; Thu, 16 Jul 2026 00:08:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784160514; cv=none; b=GoxYDKoFKxQJS5Ve7Dfw90KWIcSAr0WtzEO5E7tGjuvPkXHF0V++cLkUY9kwnrgy1K+K5d9beISwIRzyubfapvN3Ujniz5pzkmj0Nt+hx2bZEL2pj0Z86UfOEEHx2kHGPX3E86jmjPSHjoLsEaNwVYg5z2L9GAkTrzI4hdQGqE8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784160514; c=relaxed/simple;
	bh=7O6LM0S/EUJPrzZLE+vcQrp0413xiy+61m0250X9Hfs=;
	h=To:Subject:From:Message-Id:Date; b=mtxOJear7BSlGyxePI6bI+zsyD7Otxlwsnvm0OM+eGt4JE8VWXmCTYEjARCTFcOYIcn8MN0PgBcoU2FXHFRFfu6774WIKw4WJFjaTqWd8JZCQYY9BPDYMLOGY1lEmCE9p9S17JnEHeYynamelLkJG7MYBLbC1H87Nltx7ZUDKpg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nT3cTa/L; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nT3cTa/L"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1258C19425
	for <ddprobe@lists.linux.dev>; Thu, 16 Jul 2026 00:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784160513;
	bh=7O6LM0S/EUJPrzZLE+vcQrp0413xiy+61m0250X9Hfs=;
	h=To:Subject:From:Date:From;
	b=nT3cTa/L0tKDbesWCAOgF7HAiRtin56s6uHjaYDSqQ3CKP6XuS9msFXWaVLWf8lV7
	 y+LMSOxbO23FgdahxirBfdHUnJTo1E37BWBVjcxtdkFqeGuAJDx1spNpUuwUDDfsj3
	 3T7ZBCXfRhv95yn+umQshimSLqaNITpRp9qLxCjIepGtH8wWR/+9axTm4EXHrtD/is
	 f+C33U9+BeR79hRPbf0AINH3NayWP3dIPvzPW9x/rFoKyHeavQbCqahQgpYj7WnH2K
	 89LZw/JsyRE8bjW5qIwjnqy7t/TlycfUChf6pSqUxdb10Bya/hE0d5X79JnzIuWO/L
	 RMLiQbQ8gK25g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE57DC44501
	for <ddprobe@lists.linux.dev>; Thu, 16 Jul 2026 00:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178416051368.8737.2154051390672667975.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0c2b7a2b3981c6b1c4271e258ca4b8beb3fe40e82cf71e63b96d7c6367c93c7f
Date: Thu, 16 Jul 2026 00:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784160513
