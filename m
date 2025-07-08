Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 269CC256C8D
	for <ddprobe@lists.linux.dev>; Tue,  8 Jul 2025 11:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751974794; cv=none; b=XdCgK0yaNsOupFCuBi7EVDiY0a4UHtbucGsx1RERYhuFYJp4XsgzC2l29u8NZiXT1D1tk7Te7NvDIX7t/iBgkyX4Q1hoxf3bjypSbPSLLClkXD4nve7mjOd8nUTD74rLgVWXjYvhGnwle28TdNJIqv4OE/VdhIm7RgYtKrh5Gh0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751974794; c=relaxed/simple;
	bh=f6TVLfwAKVquzcV9TWe3MzxkWmQkLRUfcSkReKAZHds=;
	h=To:Subject:From:Message-Id:Date; b=N97LGCfKeln7oP5N2L1xTTAntMRvUXGRTK8upiLCGz/wOUAq4IVNtVwiqi+uOlBqgwuPujO6AlgD/QxXOqqm5fDAfxcknRtExBBo6xbxrXPctqaV587MU6INb98MHv5kFNB8EKkKjOh6uaHus0uLRu3zgMu1mU4OlP0cLCCBJqM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AmdbO2BV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AmdbO2BV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E924C4CEED
	for <ddprobe@lists.linux.dev>; Tue,  8 Jul 2025 11:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751974793;
	bh=f6TVLfwAKVquzcV9TWe3MzxkWmQkLRUfcSkReKAZHds=;
	h=To:Subject:From:Date:From;
	b=AmdbO2BVYg2Q+G2aJDYUVzSMr8X9XkqWwqQylHMLxsxsfjRi64BiZ8xa7UuSL3Ely
	 EzaOdMuca2iuMfLDMpl4k5XwLuE4cfy14FK4hkHwgHxGwX78GqYmywy+ihyKh2NYbq
	 M5yJX/b6y8hUBssbs5Rj/qXCF04EeRwFPEVMlnmGNl/MFvCWugqFlxzckOgwEcak8E
	 KUoCqiB1iqFPl6ZGC2bNOjWs3GjCBQuFHZp2Jex6dNR49Z0ZoY82lrlyuqZR1cO1gr
	 rpFH6mR/ucYvqqqNt8Ll380qSK5jDE3sbhMT8GmGjp+R+H5qNS3+g6CwTa2WsSiXb7
	 cd/9srNC6SzqQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F75CC8303C
	for <ddprobe@lists.linux.dev>; Tue,  8 Jul 2025 11:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175197479357.12577.5836996986741493837.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8a62d1471daca431b9e71f7c8d5a2c48e8ebad0674637e00190c039147df1240
Date: Tue, 08 Jul 2025 11:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751974793
