Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6816A3ACEFB
	for <ddprobe@lists.linux.dev>; Wed, 30 Sep 2026 06:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790750434; cv=none; b=EaL7UVmxZuGJEmM+ceQDbXjz9Q4W7rCw5LH100TENdmirFbWUHjEakBzvl2O5YH01I6hjGLjZ0cxI6duJy5cWcSUbPRM9V0IegVfWq0ALI13ASDoCUh0RyBcchvaDY8V69wqE/ZxukTOIbRjKWvEf4DREhPW+uY/mDgX+Hv9kIY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790750434; c=relaxed/simple;
	bh=ddsk9gSzOL7NsTLAOod0bSaXZo9z3++/x6yN3+0QWCY=;
	h=To:Subject:From:Message-Id:Date; b=LC3hwqYZ+rIpaYlK8MvcpElJHzELQsR8n3n5Zn62rCojLqBl1Nn0U292fyhFkqt0TIaPXQTYNaRtWGKf0gTUcoTLbHAHvZqVyDAu5WVAfgUUbjTG83FPMjrI+C9Rdr67fcYuC+wOke9CDOmeEGFTfv8RXvRdbZZxQy6ApeJPpa0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=F47A64EV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="F47A64EV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CAA7FC4AF12
	for <ddprobe@lists.linux.dev>; Wed, 30 Sep 2026 06:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790750433;
	bh=ddsk9gSzOL7NsTLAOod0bSaXZo9z3++/x6yN3+0QWCY=;
	h=To:Subject:From:Date:From;
	b=F47A64EVQaHhZlUJ2NSE10LN4CuBr9Qo0FuPKv2gvh8lQc1y9OMsl7aGG3JuP3pbx
	 2/TPt+e4WQY339S2/817jwP0n3plzAYuAz5yuycEduY8GBJNVDljOTGpi7dPmfY6Pt
	 I+S0LCtud20uBiFUdOhFm0UYcVzRqw9DQJWybebMM7lYQh1Y1LUlcuj+AEHrpmC8e4
	 m2Db6LDjSpi06HI+fAtLJUIWOG+8TqBzW9bxMeO90aVifQtiT4Wa4VXD7RnVRiMVbW
	 va4tiwXEm3/Wt+LB58bL+Q1qdTm2/rHXzuTQMyfsEas/0Ot6SElhRleQ5KdwiuQ7gr
	 RAXVDq+kmxBJg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFB19CA5FAB
	for <ddprobe@lists.linux.dev>; Wed, 30 Sep 2026 06:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179075043370.9989.10383531037651919039.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 12d059da9b71404f860ce592d106cba3b07fdc622e8b5411a5d92ffdf6c50ce2
Date: Wed, 30 Sep 2026 06:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790750433
