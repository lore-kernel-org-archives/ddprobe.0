Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D15B2199939
	for <ddprobe@lists.linux.dev>; Wed,  8 Jan 2025 05:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736315753; cv=none; b=C3g1MOh+h5EIv/Zg0EMWLu36Ucg2M03LubCKCqwSVzF8kHRmm2WriA2xQ2viydMOLLPmzjBJn0LkQN3mF1vwYQTwyBdD+6MYZFuKmAk9F3h21wqwdnbonyXyC0+a1gJhO54bEAncG/DGiFUCIP4z4HY/MdEjdcH5oYTPkUAfgl4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736315753; c=relaxed/simple;
	bh=FFl5998aYcmxNHtzgeSw62/4MMBpltc6PWaoU88/RIs=;
	h=To:Subject:From:Message-Id:Date; b=a/ds+cQviTI7QvVSEAKV2o1O0tbYD0qKJtx64JR/BO/L+CChj+6mYXibwCcuv5gUy8YAj2JwKhbPoIGMuLdtP6Ilt8Q5DYR+ajnQdXbMxTCqNfZ5DGwg1TquUiTUha+DLwEyViqzZfHZ7ht8ECKF96m92gSW6hbfESAVbVbnKug=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OKF5IoD/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OKF5IoD/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A52FBC4CED0
	for <ddprobe@lists.linux.dev>; Wed,  8 Jan 2025 05:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736315753;
	bh=FFl5998aYcmxNHtzgeSw62/4MMBpltc6PWaoU88/RIs=;
	h=To:Subject:From:Date:From;
	b=OKF5IoD/epInr7lmzl2Dmzy7h1U39DBh5WKoBTtWtMsMqN7vWoTwjJ8+7J9gBv5p/
	 oacdSu2rXn5ucIzrtEdYFOgj9EJIGzC+Eljpypo5xJbVkW3QvTrAhNdy4g1LJZNnVx
	 EfxNBcJx4jlTltgsJ06RBYKAyb7azJ56DPhw5WP0K7eFEZ5gujEfFNPSM152+EZSQf
	 +Z3sw6GYGWFyLBoavMuziE50PdAOdz5y3uV+jQl2Fuyg6AEfKAJfbMxlp19x5I5S3L
	 XIbfQT3UjIC1gYj2eAD6JUSTgwrCu3MqsF/VeKBUurNJg/cqlFDzlwvProFEZUkRxH
	 HhlpKUmOfqlww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FC3EE77199
	for <ddprobe@lists.linux.dev>; Wed,  8 Jan 2025 05:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173631575358.565.15095842669941804926.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 17f4468200a8a3054eae16d816204776678810ea9cb67d9a9258b9a09e693f67
Date: Wed, 08 Jan 2025 05:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736315753
