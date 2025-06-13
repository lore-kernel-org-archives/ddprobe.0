Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FD1B2F4333
	for <ddprobe@lists.linux.dev>; Fri, 13 Jun 2025 04:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749790794; cv=none; b=S/kk8PKjf9Syz9ffn4v777MFunNczX5Ok6C5fCOPgK4Sq/J7jZSy3roEJdoOrvE7lPHRFbwsjFAFCF9vTLx1BuA8QldaGBqNmWlzLYF1WliZh+fseUT+LufBP5W4+brqiypFSsa6S9flCAgrjge9o4zVCuTEiB+DMD0RW7fBJ98=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749790794; c=relaxed/simple;
	bh=b+q+OPpW29Y/rJwvSNO0zvqJhCYg+L91qd5MVS4Zxxc=;
	h=To:Subject:From:Message-Id:Date; b=CupOw25Bh16W8gmKamu7qDJyon7/tyv8NJmSY3QCXkw42//IhSSHWdtkyh+SbCtdloMTc5ZNb8URXIvV7yQS08oBRuudKt9x3dj85C97fkTusx7rIZq9x4RSLKUe6QLqZKABrY+X1VXXUUrBBX75D/bghz1Dsl5nujRZeMnqNSk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ihZEZ2fk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ihZEZ2fk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9141C4CEE3
	for <ddprobe@lists.linux.dev>; Fri, 13 Jun 2025 04:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749790793;
	bh=b+q+OPpW29Y/rJwvSNO0zvqJhCYg+L91qd5MVS4Zxxc=;
	h=To:Subject:From:Date:From;
	b=ihZEZ2fkA8LSUPQwLCDrvBu1uDp1TV23XttEW84+RcxxZppFwFBXBrqd06L4FqIeu
	 u7Y56dH5IGqGwpyvaF4zaxmOzQ2G6GTm/FRgyAbLaTWwZTbyoZn2YE1PdBmqlkbC4Z
	 v21uL0QWBguAeVr514J3Xov54boaX74bSScJeZGJrBpP/7TiI+KJMkApfbvWfAJG7T
	 w05nyD7OETBhA+JNs1gvk0sa3sulHxwOCFWKdjDLM7tlRreUY3xPCjV/GyvqpuiiR7
	 nK1Uei6XDHZC20dzLSL3u9o7apoyhAu9sjOJCP607w9t0pCwkIVYzcddEzynhEu1I3
	 6UjRF9Oc8d1cw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94AF6C61DB2
	for <ddprobe@lists.linux.dev>; Fri, 13 Jun 2025 04:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174979079357.28175.674076403719995586.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a6f3742778a3d0d1a1d9a258dbe38dfa84d8927757d49e465ba79c03252242a3
Date: Fri, 13 Jun 2025 04:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749790793
