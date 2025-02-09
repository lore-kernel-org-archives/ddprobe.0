Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 67207A47
	for <ddprobe@lists.linux.dev>; Sun,  9 Feb 2025 00:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739060155; cv=none; b=hx4w8lAAde9gGxKUoX8WW23KPv6V+TR6UYNzg1MP7LswhhwlY98O9YKfB+AlbO1EOUIZS5ZT1KHCs9gg/gjVx0KTwEZPM+bcGaIIgBy34cmqTapLZv8HEf2h+qyI+h9fzxzCaHxJBmt3jKnZk0qYRq+Sn30LSrefyM7SKeQ6bn4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739060155; c=relaxed/simple;
	bh=rfUvVd38mYII7XRHg6z+1q4R7cSUzh5j5DO5Amlhm/8=;
	h=To:Subject:From:Message-Id:Date; b=qNxgv4JnG996Yz3e7u0B0okT9yVBtMGwr5SBnBCMZeEeTcGTRY4XP8uJlMpou3DU66KJPjt9JPMg+Zy36AQKfwmz+IxjeL9FpeQBmvEIAMDZVDZpkvbljeOzLkYS1IGL4prUgi3ACLCTjQXBfF/ij3i/I9LKi3HDplTHpPHfJXM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ez8TS++Z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ez8TS++Z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8C80C4CEE0
	for <ddprobe@lists.linux.dev>; Sun,  9 Feb 2025 00:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739060153;
	bh=rfUvVd38mYII7XRHg6z+1q4R7cSUzh5j5DO5Amlhm/8=;
	h=To:Subject:From:Date:From;
	b=ez8TS++ZoVID4SnG/hXKa2Rvktr4CkjU6IXdf+lJHOXeFy57/odSofWiWZyzNFcQS
	 KItEG1mJdhiMro8WX/La5gVg+vInwqHxRaJTOan1JPoitUpoLhSijmM1vMUyZ0ZcGU
	 7hCHEJmRaHOapGOCiE6djit+1pRK9/qMwzxdvQL4CKktfUmICmaNSpewFO5zp02xLU
	 rTqo7MiEz4t/SV0o93mZfjoeCx6GIAVZoQilBZryCd5GY9OxE00hFwL5VAWMLMvNCK
	 gNIXu2VPzsxzdgelXE2WV19ckxFcDpXWiYiiM/LF1EopIUXRZVmQ+NBFwlhC1tSwXw
	 c/gSu3TNSF3ng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9634BC02198
	for <ddprobe@lists.linux.dev>; Sun,  9 Feb 2025 00:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173906015360.14206.3934368970110381640.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bc8294140abd3060f142b652493a1365a997066f9c1c8b6aa9722ff3e77f7507
Date: Sun, 09 Feb 2025 00:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739060153
