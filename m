Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D32D2D045
	for <ddprobe@lists.linux.dev>; Thu,  1 Aug 2024 00:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722473154; cv=none; b=ANG1IZ7xZe5xFaXE43jlesMnuuPI/9BjElEXMV+oBy8ApExLHCIiDGxndLalO0jwQQk7z4ZMmdePs+IJsQlZ+GywqNy2Q3LfELWWzmofK5JMU2ZcS/887ip0KSQptLs3gTInfPLds/opq6UymW1QbgKmhcex+SBgP+eZaSdi9TQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722473154; c=relaxed/simple;
	bh=b2o1QGZSkNKVju8l1B5JKfKvZtGtyCbh9yjghiHSo1M=;
	h=To:Subject:From:Message-Id:Date; b=iEiQKVRztPyoRb/dPzJIGTp15vZyC8KGo8E/K38FfeAOeU805O+pS9l7I36tA4H3Ds5Mi8s/TZeOsCxzCXB8WBfBIO25BS+qaifdhIxf2uLVSIm+rOID0ykNOS3Q5IWNd5GF6i0hWuMZ7WqXbZyr8doxjnzXypPHtPEUg/W76qg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dB6/jGts; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dB6/jGts"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACBE6C116B1
	for <ddprobe@lists.linux.dev>; Thu,  1 Aug 2024 00:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722473153;
	bh=b2o1QGZSkNKVju8l1B5JKfKvZtGtyCbh9yjghiHSo1M=;
	h=To:Subject:From:Date:From;
	b=dB6/jGtsoeWGvpC4OmfAUiX7YDdArZy3JMB2Honiyq8uPl0vKWidp/5h2ws2G6Jl/
	 LpZLHfCTQXFhKKTexYyva+woNq8sHiwMNNaLvyAzuWyPLdswDZNto62dRCbojdcbrj
	 +bVn880O1GwYOmuojzIPnkkxJ3D86J/jCZEzBg8jxa/gPUhQM46GKPi2ncQktrVTyf
	 RcF0NIfMnmbTOZS7H5cqLT2UHoj1Ek17JbI1IU3WEUWdhnIE6tw6SCEoFKXlzWDTzN
	 533YVx9I6eGeUURWGCj9jvb+F4uMlP64asuCrflT+6JdRrXq+tvXh1AdtGHajpbJyL
	 n+wrNDItkNpdg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99FB3C3DA7F
	for <ddprobe@lists.linux.dev>; Thu,  1 Aug 2024 00:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172247315359.25804.2126839567881710285.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2c8ba8b787dc79b8120e044c17e4e4c32a0971781b017bf5f03ccebbc3bd7916
Date: Thu, 01 Aug 2024 00:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722473153
