Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FAA31DA4E
	for <ddprobe@lists.linux.dev>; Wed, 29 Jan 2025 04:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738123554; cv=none; b=IrBtRnMp3D2lyjcQMP2W8KoZkD53iVUo4lz0CA2VUI+PEs66tR5qaNIYALA/fXNNq5KXc1JCYR1YLZxF5PJp4gMQMzR+RWcIVXl5faznTjoA2dliOJLidzzdtd27PAeAWV+xNvuBPWL1W7IsMjdIM2iIyg8ewEUDQgi9HMO3dII=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738123554; c=relaxed/simple;
	bh=EbZApCYZ+4YW3O7v29ztlZIbNLvIUwL5cmdAeFzj0CY=;
	h=To:Subject:From:Message-Id:Date; b=FCpL0RobsXlHnCBJ+lIvOwRyYfQqGNcFZmXLDBQGAkSeCTs107MP1EFjKJ0IGeRTZgjkSqaOzsnQobusxdKJ5EqwbKw119F7IOY4foFDlMCedRg3Ux8oZTcvuKPKmRC8OGSRz0dA+8BiEEv9umkRn/qz0a58+JqTk2G8JWbfh5I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cxapPa83; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cxapPa83"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A69A3C4CED3
	for <ddprobe@lists.linux.dev>; Wed, 29 Jan 2025 04:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738123553;
	bh=EbZApCYZ+4YW3O7v29ztlZIbNLvIUwL5cmdAeFzj0CY=;
	h=To:Subject:From:Date:From;
	b=cxapPa836qGatkZCJh7KKGsJrH7XPxr1jeU9Ok+8P3wX7K2x+IQ5Bxs92I6m/QXvS
	 XIwhAZtIAnsTizrA+xHISRxF2SAtlJm6gYT2b06jVuQLjy5Qjam+XW5gamvvdc66Uk
	 TB1m4XBBVkVGsMCVr0dLSnLznTVBHei7njLEw1lvtIPJ9r1kLafNr8MePf6yUyxliN
	 wOFpoU6aSqS1zwxKGKaFkZinx8BkHD2T6Ik85J8822ThcIW4sIjEhxsoIlZ8bIBCvl
	 K2dfkjGCar/6eKcnp73bEtfkNj7cw5y62QkqTKAjPHFtR/ul/pKt7MacFURsEmsGEs
	 jdMEYG15S5Nog==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 942D0C02190
	for <ddprobe@lists.linux.dev>; Wed, 29 Jan 2025 04:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173812355359.31618.6013417460398230682.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b1b5380f62fa50d5c661073290c53fa823f5c91a412014049e071914583e3610
Date: Wed, 29 Jan 2025 04:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738123553
