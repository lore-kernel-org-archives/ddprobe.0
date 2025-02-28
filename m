Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32B32230BD5
	for <ddprobe@lists.linux.dev>; Fri, 28 Feb 2025 19:48:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740772134; cv=none; b=bvmndFBTUBK+QNi+IZlLuTRwplT0/kAOrajZy+PGz3SfZG0WWPIkOewHC8rECBnzZTWZainudjoGOh+PsYFxgPkAx0CCz0/9Vr7wEceOTSXqWhpnn37KOSk7zYiqdPn0zCt7H1K7VW7/eoTMSG5xxpJ+pKjKVKv3oBK0Rp1pwF8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740772134; c=relaxed/simple;
	bh=6mboaX/vWI+BB7LUSqMl+jE+ekfq/hk++m6R4Tx/z3w=;
	h=To:Subject:From:Message-Id:Date; b=ao/I7wiyAaq85g/O3xelXNVS210LD+rxQqjlYlt2yOWjt7WZE+8Ae18BjarMEuAAXVzotWQvb+HSucMmBYGnpaKfw1iqxp8xwa26jk7wd+eEBuT66wZmwYfwyqadHTqsW8qFjUkpebsXs9E27vvzURJyxugnaZlwjOzv7dQgs3Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tsQTxkzi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tsQTxkzi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0032C4CED6
	for <ddprobe@lists.linux.dev>; Fri, 28 Feb 2025 19:48:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740772133;
	bh=6mboaX/vWI+BB7LUSqMl+jE+ekfq/hk++m6R4Tx/z3w=;
	h=To:Subject:From:Date:From;
	b=tsQTxkziS6POBFzyFjyLs+J56NoazIj+56PvTuZXENZegw2nMmc4yzc2X5+avFX/A
	 95C819lYg3PsuXFryOe7sv5Ww5g3WIgEC0dnG7lN22N+s3qwlbd2IPV9a6OHJ/jzNG
	 zz2KoF0dHQRLl1f7/KqWR3rwych2I0cIFXFbn71lrVAqPeK00e8WW6KWEGOONOXTqg
	 83oo0xJWnaCc/T5hZmc7aqInxtgHbcGk+uqJpPcpde0rM3ohHtNX1hPPIiuzNsiq/C
	 +1fJyJV8l2DyCeA7LqCpzpix7RBpllU1M7d0qdUO5YW7bKVL7C+ohkbCzpbbzQspW/
	 3i1lvvOJ2ETzA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91F9CC282C6
	for <ddprobe@lists.linux.dev>; Fri, 28 Feb 2025 19:48:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174077213358.6869.3121157798461741999.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 17310b8b0fe3868a2a11ab6216be52e61fd8e68b409af5d9ccaf78b6f63f7a9e
Date: Fri, 28 Feb 2025 19:48:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1740772133
