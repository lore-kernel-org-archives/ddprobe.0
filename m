Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CFA12F1FC9
	for <ddprobe@lists.linux.dev>; Mon, 29 Jun 2026 18:08:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782756514; cv=none; b=ezplAg2gDSgGcgGPmbGsvnKto20XnbSpb+Bh4c8k/NqOcrBFxsNvOcFi2W2v0EwRcsuwXlssy5Jt3ic2DZLlUMey9hNZhvsEcgp56PFubVn2kx3eFPVA+9vIzcv2veW7PjQA7vwosLUvfr1rjh7OJyELFvbI8+y9IFiL1yo2GLc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782756514; c=relaxed/simple;
	bh=wIXi4neArwuVlS5Yz9F0QTuy1k03CN0aOEnvR7Aehs4=;
	h=To:Subject:From:Message-Id:Date; b=g9QBrf+N7J/cSqxS0MZgoPZLWb63AyBevW8M5mQ4BJrPbikLkqi5CG+6o80CDul6ITkX/PeJgrYPdaMlX5GrXEz2z/YGDU1IM5d37zStojSmJI2uhAI6maCyxgGqwQehpQfSfCoQeQA/WtGwoVJiUz7zHdel8+T4Rg9B/gK+ppw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EY+Jx1Yc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EY+Jx1Yc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCEAAC19425
	for <ddprobe@lists.linux.dev>; Mon, 29 Jun 2026 18:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782756513;
	bh=wIXi4neArwuVlS5Yz9F0QTuy1k03CN0aOEnvR7Aehs4=;
	h=To:Subject:From:Date:From;
	b=EY+Jx1YckQo7J8uEmXZZQ+9r16hEml3JTW+TyS8GwDJ+VqgPswsJYfGNMdxQGbmpy
	 9aqKws3baekcCMRDM/JW1nhQO5cj8zIkVQqpDFdNg69NTJkN08VAAIgQeg1cqA3u/y
	 RVkkwua1G3UBg4BPAW/hGLd4HbPhtyCp1I7ODzwxvhTns7Dpkr+7ORmv20wuztRu9h
	 ui94io/5jPO25dB1hgFB9q/CkSMIsyQNvtC8qCGZt1EyfR12lJT9Z0ldUACQ4OQ0/u
	 3Wr2PCPXoBVAkWvmhLGyEnm9JyBJ0m6lZoKrPWVXZT8sqJY4G3W09YAuD/FzftVPZR
	 n9z8wk6GFfAFQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1E80C43327
	for <ddprobe@lists.linux.dev>; Mon, 29 Jun 2026 18:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178275651371.26177.3287369864521841481.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7b15f7f5866bb112705bcdf310c0b4d29f1a4d16f15e2f992a0b3f92eb09e2e1
Date: Mon, 29 Jun 2026 18:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782756513
