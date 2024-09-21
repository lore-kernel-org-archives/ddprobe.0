Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4DA9928F4
	for <ddprobe@lists.linux.dev>; Sat, 21 Sep 2024 02:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726887354; cv=none; b=UnXYyTOAfrY1xPFKccdv8r/dWc42twOCkfrQeN8QINrJgmsBj0qS6GUKq8HSWlt5NUAFdDpoV6TimwJDQUyZfIbDXR5iNgI5brnaUZh0nIQ0cx9/PewMMBc4G/ZVMwBN/jJ3OVz8hllDNCMUIvAB8YpWqhc5vMW3Jrx8Ky/M/FU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726887354; c=relaxed/simple;
	bh=ZBV2oM2l8wXunubcB1Qlk4VtEhGrIkCWEMm79BGe2Yo=;
	h=To:Subject:From:Message-Id:Date; b=EsRXyeQ1tFFkVBbwP8IRLQf729IGA9dbMIPoIu6ZBCmSJ2OgAEBXazjOMhc+Pcrb5IjOSwS/4CgwQbGu1wA/gF13ZMWjeoikEyOCmN8Tr1Nb736cETdie+PNtin7K4YDxa6N3xvZTGayhWE81JM2wRM0ZUqbghF9+Ojx9qQSkE0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pEftMU/e; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pEftMU/e"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1D73C4CEC3
	for <ddprobe@lists.linux.dev>; Sat, 21 Sep 2024 02:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726887353;
	bh=ZBV2oM2l8wXunubcB1Qlk4VtEhGrIkCWEMm79BGe2Yo=;
	h=To:Subject:From:Date:From;
	b=pEftMU/eaoLD+Sos8ekUORSV5C7cUwiUKSiq2INETwv0cFh/qyj0HBJJ5YPz8pzqG
	 Kxb7shp/BAIHH3lxS6drPQOYznhM98Q2OQI9rrOv92JHTQJdS6LQpiPS7rm7ro+nMz
	 1u4QWimUZiiSKwT6j6cahn03RsnowFtgTtO42iGpSNiwp87V5RQMBNnF9gQasChp83
	 LPcvfuQCylSGz7o5nb0pMKBqkKlX7u2xaLjFRHXkME9n1vLONwE5Z/UUiBx7yCDyi8
	 cSa6MgJNEXa6PPPhk/WGg9MhCE4DzHJREiCtAcPqMpMSrdAN/AhM0buzNjZmLjRE8P
	 TEwPYfsDBAuhw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9CA88CF9C69
	for <ddprobe@lists.linux.dev>; Sat, 21 Sep 2024 02:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172688735360.24114.4862545424008108003.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 92a578d26b017a5d234cff7d535fa8dce9922dfa7881aa8ab6907a7e2b4a1e1c
Date: Sat, 21 Sep 2024 02:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726887353
