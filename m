Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 301FC1547E7
	for <ddprobe@lists.linux.dev>; Wed,  1 Oct 2025 02:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759287594; cv=none; b=GYEcWXot69jzD/8JXDxMWuAPDE00iHR7EoqHKtSKsExMKXvr8M2Mw7Cn5OoyrvtGGv2rG7neghtX7hBztOuYJqd7CpmbJ+yz1z4qBjTVqViVoldiEwqqjfplYPBDtVgzC+ODJWOEm+sYSlGBNCK9bfv7YKxs/kFYICoANFsvu3w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759287594; c=relaxed/simple;
	bh=PF/duZLgiFPKilhsyY/XIZ1+qSdFgZHSIHVvn3EMpZo=;
	h=To:Subject:From:Message-Id:Date; b=YB0u1j1aNjCWyrtGK53TO0W+I2i8KmIUrxgZmOvl5FuhAdljac3r1w5hrS1vdIGbDTn6LN2evvVBy9IeZSyluwkaucINYnObnPg7eVQSdMo0xTmeO8Na9aZMpMYenGOgUqjhSbLI4nth6EL45g4iYbEmSYO/Y2MkfdzYsfLPMtA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rFW5ngiu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rFW5ngiu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A664CC113D0
	for <ddprobe@lists.linux.dev>; Wed,  1 Oct 2025 02:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759287593;
	bh=PF/duZLgiFPKilhsyY/XIZ1+qSdFgZHSIHVvn3EMpZo=;
	h=To:Subject:From:Date:From;
	b=rFW5ngiuR6tJbzw3Us473Fc1NOMy80E6SJk1CrAPuzgxebohZN+/I40RymdsRJ3A8
	 o9+TxtLIkJhrkwHkQtqO2kew7WodW7dJsE6PMAZWOZzK8H0adxgYWt1lTxPstigTM3
	 vbuyDFCFmAPf369hp26w6qNKD0m3S67A8kLPoxZFwLIkj9xnG6k9+o+9UAmYl21pFx
	 Eo3/K6KtaUx78HQMoRHR8mutonfZBtJ04IR7NWefxc0+V6r4kYDDgUqwSYStpGQCAx
	 jF13B0V9JH4RxYzgp1dlFjDmLb3ls5JsxnS2NmvIdl8Tb4CDneq38YiBEiKv8yvu/g
	 800f7+/yId4Ug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9180BCAC5B8
	for <ddprobe@lists.linux.dev>; Wed,  1 Oct 2025 02:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175928759358.4474.14062644929045681802.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 95ac494774a606ed4227c097959e4e2b1b99dbb3d06cd225bc10d645aae28310
Date: Wed, 01 Oct 2025 02:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759287593
