Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23E9517BD6
	for <ddprobe@lists.linux.dev>; Sun, 21 Sep 2025 04:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758430794; cv=none; b=XX5E4zTT0ujtANfn1N5eDnpdFCcj+q+YxKd2oxSlek2W6Nb4XhfJwFFviPIap2lTfj7hcSAGB198W+d1TiNCqTe00cUSYJO1iAvsGTyJTDuo+BhqRekV99OHoUo2ELRefSZQeWuqFjQKlTTQac9k/Q3e29ZmqWPbKg1UVVtknac=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758430794; c=relaxed/simple;
	bh=3IiqwVIaQA3a87dnzBD6MjAJfuj5UVIZ70n94Gjw7zI=;
	h=To:Subject:From:Message-Id:Date; b=qcKblF1dOOuBC65NwnIx0c/EXQsvqC0kzWdlud3uff4avbq4R0lV54g6m6vUe98zSWMm63fT87JO2ftrMjeBeoXTNFEVX60+TD0bYedldghnoAQt+CDcm/7H/W7trnM5dQ1ArMrNOEt3FB+KyARrlBpQEVVigW6sSSIglyWLv2I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nIzMVZgV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nIzMVZgV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A20F4C4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 21 Sep 2025 04:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758430793;
	bh=3IiqwVIaQA3a87dnzBD6MjAJfuj5UVIZ70n94Gjw7zI=;
	h=To:Subject:From:Date:From;
	b=nIzMVZgVQLZnmP+hJZFnIaqOiJDsgbebg3XHmNUSduTkIre1eSYqAFAX+kDueYwtt
	 tbjzUJ6zE/XxAudY+vAqBDjnMm2UV3nqNkz3M3qa8CvQcOzJeR4ItjXl1Kts69IKCp
	 KdJ/kbMeIj09umDIZi1FxQlAzTdbW6vQJeYbguCzzmJxTf4p+VoSQnQ3p4Tw+YGXbD
	 pb/mRipuPcq4mxk8pGq/U0evnq5ERvTjRcTpxLMkFoDOb2WQIDOFOsd5wX3YJZDpQd
	 ueH75eI3G2YQ7HRYs8m9j6fZ+ZODUKP52QNOuLpQ5fVSV8d/hQOCIUOqE5qu0rYmd2
	 2XCn17PHTdOBg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EDA0CAC59A
	for <ddprobe@lists.linux.dev>; Sun, 21 Sep 2025 04:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175843079357.11836.17300472096338209671.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 88591aad88e19ed2965c7133de1bc8ebad72b9a2f6ae58cf9ca62d86fd05f2d5
Date: Sun, 21 Sep 2025 04:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758430793
