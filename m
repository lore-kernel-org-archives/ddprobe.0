Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DD623189919
	for <ddprobe@lists.linux.dev>; Mon, 25 Aug 2025 12:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756124994; cv=none; b=SbwOMG+T6VesPbxx8Be5xTMdMJTeZy1Wi+rN8velSefCefFi9l9gTpErqvSGeb325v1J8rmAsrYycRttp89CYlBn/F3mEJwSDbZdO8V0UNA5WcoOzUgRXsrtVtY/XXSObemqTNHsbOtlS2uZt37o3D7uLjGQ970W7k4VV+JnbuA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756124994; c=relaxed/simple;
	bh=ScjC9QdMaN9+Z9jDzt61NZY4OhYMy1Wp0EqWFlZIWcA=;
	h=To:Subject:From:Message-Id:Date; b=gfmI8BRSLL6BwDpV/DM19Gdb+wvPojZ2Wd2YGOOUpVESv8iHOQ/d/4RLEHjflyPulmtPVEJtL8sE7BiEe2z8tu+NOb43EdbiulJ5C5axSjUiV9lSk3mutVhjeSKjPdb3Ho52fvTP6R/5WpPKtODWOaCKZjqYA8HtoPyIdy1EjSg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=T5osG7c9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="T5osG7c9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6984C4CEED
	for <ddprobe@lists.linux.dev>; Mon, 25 Aug 2025 12:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756124993;
	bh=ScjC9QdMaN9+Z9jDzt61NZY4OhYMy1Wp0EqWFlZIWcA=;
	h=To:Subject:From:Date:From;
	b=T5osG7c9kLJdVs0GYRf8Y3thK3Pf5E6vRK6Y2BR4E36tSjKJ6yEEacASsH/R2XO97
	 OuSgIN4P5abCprktA/Qc690oYbvh0qr/Iit1sh1KRmspJjnfNILS8e5KY5qVCn/FY7
	 sUYACg3eQRrIK6RXg92M5iX5D36Qzr0xdawhsqpqLczYrxAbjEcyyzkuQHhp/Mrdcm
	 JZBikFzcVLoTOBjiaUtmRkJm5JeJvO18UVHbG4v2UdfmkuQPeS5zrPR4ZPyP3Ap37C
	 pl5yLZROtU+jLnv48vtOOO49SdrcmaJpDx1HSmWe9g1BKq775yjv8teAVDgytoXdjw
	 lIQF2uGi0thYg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92FF1CA0FE1
	for <ddprobe@lists.linux.dev>; Mon, 25 Aug 2025 12:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175612499357.3382.7263620756165275358.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fea1465bd98762881150e4a62c6f3cf7d9503fff822b5c28cc0b1234a3e23db1
Date: Mon, 25 Aug 2025 12:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756124993
