Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 241AD45FFBC
	for <ddprobe@lists.linux.dev>; Wed, 29 Jul 2026 16:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785343834; cv=none; b=QkqwBipMCwDeyjU7gKUZz7BaZ9iaYBk+Ttv79ZdNV7HIJ7HgKuBJzKgkFaiJbP+iXKpLKMOiQHTtrmDVfiRWa1/Zig/nz9TQM3eo/TxNrRNhlatkahOnKGGfuBoOf+23CHyKhbEnnAzt4q9X0guhhv9JU6+7LQQ+FLui/4h7Qzw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785343834; c=relaxed/simple;
	bh=vwZNzwgMKxhS8xVQWErDg2+cyRRnJBCMAHoKMnfzX7k=;
	h=To:Subject:From:Message-Id:Date; b=EYgfclTs7k+vK2Atb6QtR8f2cBrfWG72+ntAKtEepFWrjcpiEqGo2kuaXAknE4lCezLDhhLWJWBd36fnGr+aOjbTZVu9OJsUjdBAO5GCO1o4BkKAG6XabrZzXrmSkLHwpcuBkNioOpfdFZCD8wH7vPWLOMDqewLEeB+rVaVonHg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=I0G0sAel; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="I0G0sAel"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C96CFC2BCFA
	for <ddprobe@lists.linux.dev>; Wed, 29 Jul 2026 16:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785343833;
	bh=vwZNzwgMKxhS8xVQWErDg2+cyRRnJBCMAHoKMnfzX7k=;
	h=To:Subject:From:Date:From;
	b=I0G0sAelI5vLwVB6nqg1Pd9/48+QIdcyLh0YjalVFcFFhgP61y6Of//HksbVR9myz
	 V5uEw4YFdppI7/7BNSK6OazcsPGE4m/Cw5tmOYAxyt5dVZ3+NNtJ+91UendeIT3fjZ
	 GLhkisKtVaEyUQZIq2H0Cbr/inzkHubc2oWljIYZl9uEUzqzjKArvTmQ3dbZ+z7zc2
	 +xOXPb3zBtm29pahvbqhdsEdvtw/u4znvhvIsBl/pL1iHGPElsPMl49W58pEb0vKq/
	 NRy5qynDq8bx8Y+3sKqN55aMNmP8cEf0e+M8gbkG3ALnq0yR4iUldwuVgZND9fttkt
	 wYgHQdLkPnCPw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8219C53219
	for <ddprobe@lists.linux.dev>; Wed, 29 Jul 2026 16:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178534383368.21014.6941560636578146950.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4775652666d5644a47e8b48e0150227f9ff2adf9578b60895a7b191b6bf4cacd
Date: Wed, 29 Jul 2026 16:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785343833
