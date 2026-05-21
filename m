Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F57D26A0A7
	for <ddprobe@lists.linux.dev>; Thu, 21 May 2026 06:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779343234; cv=none; b=W4LooIeiW1xH3oBYEBHzlCJTAmBV8GqPlCW5i9HxWx6/0e4YFsa1pVyBv8RjKF8ofDMJlVxHwHaFUydX8Lp5eSpeHOsArUc1wwegFycbo2KYOMgkfRb5PEF/O+ACx6+tULPOSfmKCT8M8nFVIc/e42cIat/+3ezpOTUWP3+rs/E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779343234; c=relaxed/simple;
	bh=EI81OPQXerN2UWRpV6hMIu9WK07CB0GGFDsye0zNU8I=;
	h=To:Subject:From:Message-Id:Date; b=Hk8805bed4wehbWBDxU5QyriB8QoXm1XcwQMAtZMsmBjIbxbx6DRijdT8wH87RCAWbwrUPAYRBMqtwxFph/KMoCkeV2ObbeWnC5T952Zx0WHL9xxxaqVCSjuz0m735Udy0dLo2yPpvvbmHetFi2to9ZjkeMBpzvO+I3LU6f66ao=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NwNIr90P; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NwNIr90P"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9DD0C2BCB4
	for <ddprobe@lists.linux.dev>; Thu, 21 May 2026 06:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779343233;
	bh=EI81OPQXerN2UWRpV6hMIu9WK07CB0GGFDsye0zNU8I=;
	h=To:Subject:From:Date:From;
	b=NwNIr90P1Kkp9h0c9EhC8XoxLIiIWEqpYSgXkevd+pa/yh5H7amnrjbL3ePwu1OmO
	 XtUXdotOV1bEnHdtaP/YrnjFbF9Sn88ROSgKIXKsU2JS1QJ6aA9KVVoO/a9geO46im
	 e7eKu4HhdVKIfIpkTlPEqfcIp9e0pnllXc2SmUYx9TQmTPyMm2I39qea9+L75yE+l2
	 0bsjfPGivnIgldCIFkcO0ytnizFgshh39WP+k+TQLgVQnqO71CbAFbC05gLbosQv7Y
	 X5av1Ay2z9f1hBHMR1NlLR5H9+qCsu166hYFCD9uFdpFpj8i3yJhHd/NESYbJ6vyOF
	 l1JmidRQm3AJw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BC218CD343F
	for <ddprobe@lists.linux.dev>; Thu, 21 May 2026 06:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177934323375.25989.13917026964530924575.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c01ba12e0d21397862df4746d80a849e3d3afde7f9a18b082051b4866a2dbc51
Date: Thu, 21 May 2026 06:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779343233
