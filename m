Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B29F2494FE
	for <ddprobe@lists.linux.dev>; Sat,  4 Jul 2026 15:38:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783179514; cv=none; b=USe1u53Vi0cwhgmX5QHVC+txvrKdJq2vo1XOwAxpGsLF+1xB3haAcEq1Iz/PDlZCQ5/C+l/QDGnhsTa1HFe4PQub6OLcGvFx7rrUEumXWJER3N0LDjxgAL1iwtzvecPI5o/JX+lcyJDrmN9JPR3puywox+kZWKfDSBQLUbblWoQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783179514; c=relaxed/simple;
	bh=kCOK5zB41V7EDfY/HzKV3bVi1EeQSLScOvrOsLlXNfA=;
	h=To:Subject:From:Message-Id:Date; b=b63HMmjOGLQekNu3+YBpac4IulKrIYpB/WpPOaz2lz4vDVLNMOZaqRbB/Kd4TkRfLBZXJpr/DfEsXkiUMT2PniL0atqV9R7OzWeXnsLQdNLl2e9AR4qd6oRNiOM365eAl1N0LWY2vFaf/RQAyCgpTl6nsYtkLLykSdpg1dKqF7I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Q1/Ustke; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Q1/Ustke"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA768C19425
	for <ddprobe@lists.linux.dev>; Sat,  4 Jul 2026 15:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783179513;
	bh=kCOK5zB41V7EDfY/HzKV3bVi1EeQSLScOvrOsLlXNfA=;
	h=To:Subject:From:Date:From;
	b=Q1/UstkeuZcFhhPy4KInrndLFN0L0xs4PXQBkaNcLtopBzp4C1NLM5UMj2roRJJhy
	 fOODVydHA1lE8LaUTEhc4QC3Txw8H+symqQh0CKBOruZELXtdS8CgkGt6w+V3pHvdf
	 +PzbJpvbp3hB1iOe9YIG+R8sw7gG+m6F4okQSbhMIjHI/Unjyyzq32pN8sFe2a/bvY
	 de3wmI5H3zvxIY3iWbksBTfOy3+AS/SU7PER5RNi0b8HpnKjDh/4fznM+/ikgnI7J+
	 bkOnx7a39i7WVO5tXRF6jNXrkQOk8h5ETr427XpRU02+WkRPBnpDBTifYJvlYg8Pn5
	 IIPvKMWRz8q2Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8117C43458
	for <ddprobe@lists.linux.dev>; Sat,  4 Jul 2026 15:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178317951368.6575.13716360701192997718.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bfa3d3a98c980d5dc0cd171522405b44d169aefa49454aafae41f27ed54016b1
Date: Sat, 04 Jul 2026 15:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783179513
