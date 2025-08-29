Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DE632EFDAE
	for <ddprobe@lists.linux.dev>; Fri, 29 Aug 2025 09:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756459794; cv=none; b=FgA8kc8/D+j/ES9c835YAqp1ivIDyUgMbWY6CFeF0Z8W6q/1Ho2yGYUTnjx7M2SGylJq0ao8N/z3fyMMOTM5QFzZjvit/nJsM1Xck1b2dYCnuwaC7Y/oiVD49ggBzJt/L5wYWl9EG4eYfXqlbXMLqUnbn0Ii6tBMATL0kvMST2k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756459794; c=relaxed/simple;
	bh=1BLUcIr7jSE8tBttwYQUcoDiyk8KCGloqHG42dAcl5c=;
	h=To:Subject:From:Message-Id:Date; b=EMRVZo5ejrlAHQM3s/loFTQ7rQdQTMQSwItDN9PBwjfBHfZmbJ5cOBgtIRcohw6aa/f1d40w1bt5zISg6CKws3f/u6TQxsE2ijzWvf9Wg+ZfWakzI1ZXg76ZkzT9uN3MgWnvPIyVDMQZ4uRRg7gYofseLRlukA9S94+k/pvujqg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SUXCuMhy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SUXCuMhy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3EBDC4CEF5
	for <ddprobe@lists.linux.dev>; Fri, 29 Aug 2025 09:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756459793;
	bh=1BLUcIr7jSE8tBttwYQUcoDiyk8KCGloqHG42dAcl5c=;
	h=To:Subject:From:Date:From;
	b=SUXCuMhyO28B4XcPwhkqk1rZmKZ9ejc1p6YzXxyg0LUqYYhtOtQ7TfMYJxdsxaWR+
	 quoig4p0iFQBmhs/QwK7p2ubTpHKm3waTxyadMKVBWOU06LNxH0jQcG4fGDUcGjcfK
	 j3pv+s/EUrswLNQIR3F+n8KAJO0MbJXnsgVFy8v5yZQFb8BiLhuuXRy8XuUbDz7zKN
	 Fmx4ZOzuUoOcUMW+lxtiF2/FZD84hauhoKeXlV4v/lsgWZlMD0Ks5gtIppmTvZUW8/
	 OhQmYM83p81XG6q2a3qcDWCkXy54AmVqKaOoKHg13fxNVtt7aqUrHjB4GYYKfSQCWg
	 6mZxtM4UZeutA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92580CA0FF7
	for <ddprobe@lists.linux.dev>; Fri, 29 Aug 2025 09:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175645979357.9666.8718528308254834305.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b38ee234bf9cbcfb653f123988b0770fd954ecf1bddb05eb44a98edce7e3f5c0
Date: Fri, 29 Aug 2025 09:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756459793
