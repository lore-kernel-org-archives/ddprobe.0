Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0EEBC275B02
	for <ddprobe@lists.linux.dev>; Fri, 26 Sep 2025 06:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758869394; cv=none; b=mKmDwsKQbUXEXolOcOU38l3vj8ECVsqMHVDNfKmecYJtpEKnI9IPYkisBQDUJU+6dpSWWt51kDCkajb9dWDJvz4aUXSzp4CQViku6DP9wTguecV7cAJ/ni44JJMLtRZtl1sPYwkfbqKQGNSyhQcue9ApVqXlW4KcUU61Vp+KTmY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758869394; c=relaxed/simple;
	bh=rPbu3MX3G6krMhvXMLMMz6pzRxGGA3e/Eq42PlXJeYs=;
	h=To:Subject:From:Message-Id:Date; b=oeAJyXSV73Am2n60DD+g06uIr3WkmfcJjEimYefoXJiQeg9zcgZLCtwKozlMvba1SgrUypBjwsukPa1/by7ZCC9rEISeNneoH8FiibR2HoArsS5rrvvavT+ZaRP2a6/PACoAgTyEXtITbkkc5HgWgCM3Db4HnpBesOVJ1pOX8rc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=omf+9+E4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="omf+9+E4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9BC11C4CEF4
	for <ddprobe@lists.linux.dev>; Fri, 26 Sep 2025 06:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758869393;
	bh=rPbu3MX3G6krMhvXMLMMz6pzRxGGA3e/Eq42PlXJeYs=;
	h=To:Subject:From:Date:From;
	b=omf+9+E46cPixRSt2oeNNPtVT4eKU7z18u5ivtUMJU7MIbLcAXFNd4CDnW1tQm3+A
	 gnprKvfzfQByQi9ZG6v0Bd4a4OJIJlJeYd9AgFzZLwtk14nRSt8rd4zzzR2zlm7fpQ
	 /TvOBwdc+EqWlOwQj2UJDCTrs+Z7uIXbyrQlcI8mbFiUd/hoUD26FJ5YXYHiwnGkQC
	 a/jEXBjPlIVQeVL2PtV0lSok08MeqA4b3jr02nB0YPY5mTM13J7yHFwg3JznbzvZmI
	 7li36qyQHTlUqqj6eWAaf02HHAVQypd2zv+u1MBzQInTApimuTZcX1UQ8axHwlzsvt
	 zC/h4KA00O4DQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 908E7CAC5AE
	for <ddprobe@lists.linux.dev>; Fri, 26 Sep 2025 06:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175886939358.2054.11942267499646837902.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f51b13eddf41c7016d6c0f320fa514a32418f6f45a04dca6ef5f1748617ef17a
Date: Fri, 26 Sep 2025 06:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758869393
