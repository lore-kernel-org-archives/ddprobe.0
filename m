Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A30EDF72
	for <ddprobe@lists.linux.dev>; Wed, 12 Nov 2025 01:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762910994; cv=none; b=NhpfJsutBGuRmc3UdYbpTVPK/O+vxVDasBpAzEckR5+2GFfNGfpsOhS5jf/lBiRxapGYK1tbOJO7aGUCSE8fK4eZbVEeqez1XRWfLoSoKVQsfy7Wz+SH4hvHK5QAY7mxjykc8TP+dnR8lAAn+IRcrHoPWHJDpE+EpJ7J50fJoRc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762910994; c=relaxed/simple;
	bh=PGJp826WfciZejDS7CPYSfjwnOGyqb2sIjo+nQCliig=;
	h=To:Subject:From:Message-Id:Date; b=J+tOpUPLGpdIVSZvAkbCnqcXdqQU1e7EXPbgCBs7bIli/FF4zL6+i/fhkpk07BVvkeKfcPRhBh29fPGMIsdzF/9Ga1Z+lYy8AXqQH2CDcman6nKO0Glrs+Nd3icuq4CCLH1QV3+m1P75iuhkBu8M8qoJ3pe0F7hQ1V6N190DscI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RssWEBMc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RssWEBMc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DBA1C116D0
	for <ddprobe@lists.linux.dev>; Wed, 12 Nov 2025 01:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762910993;
	bh=PGJp826WfciZejDS7CPYSfjwnOGyqb2sIjo+nQCliig=;
	h=To:Subject:From:Date:From;
	b=RssWEBMc/aBgHm9QumVOV21b2Y9iNmDhro+Lhj7rVEXUcUzyUnALQmg8kh4uHK3xh
	 Ozy0ZhIXHWeizQaY1cl9FHrD77//GPJ2uR6R7zYf3ukIlUOqWrmhNAotvSr3J3pcgZ
	 7Eb50TKyW00lWHPqhEUmAN7egJB6RYaR4QWKW+lVj4Xo/DEqPPau9l5Rbkm7NCgs9P
	 wQN5I26b4rtI4VSpLOuedc/XvscaNoI19OXO8giUuqO2JQTHRrzlqKtjYjV79kZDMJ
	 HWWHUIl4WjnP8SWqZoYzoK7q7nCxGKclNrqWMNW6yTQhkLuZM0w1hgQoYIHfbqfayh
	 C6YfSu1Pive2Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FF49CCFA1A
	for <ddprobe@lists.linux.dev>; Wed, 12 Nov 2025 01:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176291099358.28242.12314431469104433691.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3cc2f92cea68a0618a811dcb8a0d27542e38aa99073bbe278f812d911201c347
Date: Wed, 12 Nov 2025 01:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762910993
