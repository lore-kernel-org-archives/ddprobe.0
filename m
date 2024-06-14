Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4ED8619414D
	for <ddprobe@lists.linux.dev>; Fri, 14 Jun 2024 10:28:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718360903; cv=none; b=SRLqfeEuJn5yJEvOT0fZlSp2Gshdem8qhhPeR2/k7iw3Kk4woId8SenxLckk8j68Xez/qXomHFSYGa9jJlLnjBq2ab6lgej7B8ErvbZmwMAtvvt3Lz7w9oxfwl/leNJDEFqnjt4oNCkBdH3OhJnH5bTPkoOqfglPDqj/g4h6uXo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718360903; c=relaxed/simple;
	bh=Y8Mk+YVFF9+zpgfoI18Jc5LafQaFW/NjeSuqjhnkZM8=;
	h=To:Subject:From:Message-Id:Date; b=ONnvA9Vwej0luGiz3xN7eYFaRyolyqx/NM7kJkDXLP06v3T06McnaKpb5/s0vjTnSDJTnuuZVXHnllqw3UMNm7JWpV0iUiNoos4KloMWVM3761Ch+chPMyZyplgBnNcPPCzuC3NezrOL7KzKsabehl+fXzdrp7F4/aofmTats4k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SLK8zU7y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SLK8zU7y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DDE80C2BD10
	for <ddprobe@lists.linux.dev>; Fri, 14 Jun 2024 10:28:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718360902;
	bh=Y8Mk+YVFF9+zpgfoI18Jc5LafQaFW/NjeSuqjhnkZM8=;
	h=To:Subject:From:Date:From;
	b=SLK8zU7yDCKGdMvt26/k28DNJow6lLjOH1WCZdSOm2g/ErELpNmFOBF7+vbofzu0O
	 6AFpa9ChwyHCJ5KkJO+zMl5y2NhWsDCmLJqe5lwEwOALZg+zwNXNwp2DA3i7/q+CM1
	 jvIVppwfOrNsVmjVRoG8TIpkdk0RDCdPeZ6z9gGRS/jA6ytqBqTIU6htv8lTnMNX9T
	 8P9IFHJ4JtdRW/zrawPsMqwLSbNmyxy9Ku2AvdKR7vevs7EFWNud/xAvjgJdI7oUv9
	 KZfUQMdWI8SdBopCk7UW9aQ+4uOyeGGjFT22XDzuALDw8RhIoHWc9gDtxGuP9mEIg7
	 b12hsGnfP4Njw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C95E9C27C79
	for <ddprobe@lists.linux.dev>; Fri, 14 Jun 2024 10:28:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171836090281.10537.9010122526998373759.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 419ade6e21efe11a82552f47866c93066f416453588a0bc2d0b0cf60c72f6ead
Date: Fri, 14 Jun 2024 10:28:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718360902
