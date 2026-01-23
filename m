Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C658299920
	for <ddprobe@lists.linux.dev>; Fri, 23 Jan 2026 19:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769198034; cv=none; b=C6nGzgvvPDRM3Y8gL6U55oReIBuoGMtokxK/1XScvTdxiODiO73vYxa3Urz1nR3iY5aptRvB3b/D82no+KLC/6iXzOv/ibBQCXEZ2dYj5EtKpzVxV5O9MPxo8lnmT/YuLT51c0aaoyW/fuBQ7MPk1VttIorsuYxspCbXl/s/xbk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769198034; c=relaxed/simple;
	bh=bqBq1fv786DUOznln7TW8vWSKKQ2AxqCtf5kXOF7LKw=;
	h=To:Subject:From:Message-Id:Date; b=MhpqUtBhg+sDH8pwKC3Y5qoqC2v+Aix1sAK0c13Yun9X7ntfiq6PcWwl/3eRR49dlGOA9sAHImcIAHv8cL5c1u3wliK/O6tGYUv/Io2GjhxpGeLm0XdydKxxfLGCxLoWLlbWiQEWt+qIbqbWexBD1pUST7VCHB7Wb2jtxzukprs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=syBkYaaf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="syBkYaaf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A45A2C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 23 Jan 2026 19:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769198033;
	bh=bqBq1fv786DUOznln7TW8vWSKKQ2AxqCtf5kXOF7LKw=;
	h=To:Subject:From:Date:From;
	b=syBkYaafJN9SivQaL9jFm3/6EDf1bTAPj5eLHOLmX5zpqVksPbt9XyhkCPpjDWFc1
	 lXYi4d4u9JpVBbDaaCxUxDHxUAl1gnsWohRg2n6N5WQHKVtv7S8O7lSiHtf21TPalj
	 6fg7mXJsdmWEdQ66GMJSvA19ySTtXSI9gyTtxB2JRnvRxri6hX514iWdXP/Y98vBeS
	 X3J1eEcwYVf1PTjzsOywsMcwgrJE+9RY0RS+ccajPx5ItPw6SjaLdCm0G7JwB/pQ9g
	 rvcn4e1HE0ct+idg94el/LMn6yUFq23Jt7U/xMfEawr2aO5nUV4eiMfUyGE8tSSl76
	 tDdPZ8nv0Rx1Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93F8BD778AE
	for <ddprobe@lists.linux.dev>; Fri, 23 Jan 2026 19:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176919803359.29838.10136276747168855649.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 35f2966af1d77ab83450bd5fde7acf7a1f6de23b236b0aab98832e8908836698
Date: Fri, 23 Jan 2026 19:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769198033
