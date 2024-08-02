Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C62A1DAC5F
	for <ddprobe@lists.linux.dev>; Fri,  2 Aug 2024 13:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722603954; cv=none; b=uHj6Cl2bMSY/1Nth898DwPXO6RxbrcM1unJzkbJdui5bXvRtRe5HlF3dAPAm5uWPVRBxid+OnEPscIBe20F1HtlYLpDon2+LYWLc8rHmcr64KQ/W6YHNc8v7Uew9HmvaQ+bF9haPinWq+YDsKsIMvJ2rMqHzWmflOvtTP6d15sk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722603954; c=relaxed/simple;
	bh=P2QyOfEMUUf0Ss5/PSSocAYkaaut1MOoSSH1blqgphE=;
	h=To:Subject:From:Message-Id:Date; b=SVuyo7HrfoguBE+/MZGSnGRTCSaU93pgI7Tbk/RF8tHiF8WUT2N09HImUS/l0YNOj8aWNayQ4yhZ3R4PM5JBvoNkd2oNpK5H4iNuduqojPbIlJ2yG+IzNfCTjbKq7wJwOMq/tVkZq5HAZFDJGhe6C8cS/IS3RL50qMLWIBh5rS0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ubRryfrE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ubRryfrE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE459C32782
	for <ddprobe@lists.linux.dev>; Fri,  2 Aug 2024 13:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722603953;
	bh=P2QyOfEMUUf0Ss5/PSSocAYkaaut1MOoSSH1blqgphE=;
	h=To:Subject:From:Date:From;
	b=ubRryfrEQOnN3nqzofZd2ExhKLH7g4idbUtTrhtYaYtTi1jKlDW849o02DtqpHJ/b
	 jImh7t5gB17raZaNIeiWurss0EIdeVJZRjLMHYdkWKOAQowE99XlYF/eK2+eHImvHn
	 B9/dR3ivd6aFjSOd5N2DCZDzFMFV32+A2vgxPjF0ZQLpLsLiwrg7qpQCEoDKIxH3Wj
	 QL49RJowj1yLGgThz9oZ+Wv9VEC3N5fZTz2iaGjfWXQPCOIC+ZtMc3STLrHRX5hAxa
	 ini9/PJ8UZlCn4zd+EvTAO3MEgxBRZrX6zBYfQpwqgysdHq080aR2BW9zm3gvKIvK+
	 zEiKb3JSHou3Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D9EEC3DA4A
	for <ddprobe@lists.linux.dev>; Fri,  2 Aug 2024 13:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172260395363.3223.6531608781908726515.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1e824cbbca6aa1180125b4d29d5de91f2ae4b452424f50ef2e08ec957a4f5a1a
Date: Fri, 02 Aug 2024 13:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722603953
