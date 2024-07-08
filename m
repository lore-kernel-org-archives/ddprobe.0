Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6911EBA45
	for <ddprobe@lists.linux.dev>; Mon,  8 Jul 2024 05:36:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720416983; cv=none; b=u/y/0b8T/v+LH++ccm0Ify996ABNLO/bT/YeNWmh3ATazjVjZ+4SGp5yXlBRB2Y2Lf0Dgqz6kXCvAEEsqy+5aXiAHidwR4UhRiIhTmHJLKSd9getul/Tgw9XkgOLkbKBSQrDqcDBKv8asj1iOAYYguHOApPyx0To0WPaycid9fA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720416983; c=relaxed/simple;
	bh=U/6Pey2Qj2YE0G3mLmSHLC6IRFOGugBuJfhy9QW26k0=;
	h=To:Subject:From:Message-Id:Date; b=AMlpdppU1UgGYNTOqvZ16yaYHPber3mkfr7AuZDaAB+Ttnjht6WCzEYjkhVzXaYlmpPg3rAWhevPZUGoOTa9X44vLTpguUa2mzV3/dfr25i7kxQxu11Ol0pY7gV3S3p5L26XGOjyb7PaHfCuwhP0NltVUGgPfEMTHgmyjp3NLQ8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZTX667We; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZTX667We"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EAC52C116B1
	for <ddprobe@lists.linux.dev>; Mon,  8 Jul 2024 05:36:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720416983;
	bh=U/6Pey2Qj2YE0G3mLmSHLC6IRFOGugBuJfhy9QW26k0=;
	h=To:Subject:From:Date:From;
	b=ZTX667WehjuAfky+Arqfg96Oeh/tF8tr15I1fkRM5BILydVf+JeLUKahR+ieYJI8W
	 B85//fh8sK95fgStfUc18HeBe3QqMiH0Zm7HMfJNqM3dH7D7RRRaAj6huWnjIJyB+k
	 b+aazsB8Wl160wSuCf9QDuL04xZy1spWpViBb0OSWp6vj5lQopMMZnCpY83hQTAV06
	 5Jf26MQFaiY8I8CVe3Ck740+lCWJJ7mUSGD9qZH8zSZiBEHvCk4zvOyvbYyadpVFAl
	 6gkKMceN+XInVV7qeC6dtEeC9u/s1kc2s01cJKxdWB3EsP8A35xiX+24GQlF7VBrmX
	 Rboq3WHnPiV2g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CC2F8C3271E
	for <ddprobe@lists.linux.dev>; Mon,  8 Jul 2024 05:36:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172041698282.18541.611408289260920539.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: afdc7411f7943a19854f3af6f38e4b7afa3e0d5337503447e390caced50327b4
Date: Mon, 08 Jul 2024 05:36:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720416982
