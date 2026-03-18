Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0444614AD20
	for <ddprobe@lists.linux.dev>; Wed, 18 Mar 2026 23:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773875094; cv=none; b=Jmq7kqdhdbVysp5Q6Hz4kntJfB+rFJGNUdwFB94ECinji55ptt4D0v9+7I1NeAP9RIKNwJFzIstUg3FsdfXUmrSqvo6J3w8wbhGXNocemvSw4Rpu5fY5OZkUOpkY/FFrA8/RoCASsnX0lc2ib6kdDjA60TiOggiR0rmWu2cJCqQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773875094; c=relaxed/simple;
	bh=sfhzPjTe+lq4mljeftHk0yg9tc34UDTdCDV16uS/Bf4=;
	h=To:Subject:From:Message-Id:Date; b=q1KvVqrG60K2zDeIdIxLaShOGRMhs8n0AbUm7DjCdYU9yfA/oqpDYq6FvNCTezNbZFPVDw+x5w36rUmwUrF0GDTY0CEy8pg7YFXE7aDl6dRl77rl2FIVmJX/u/C78vDVDGtZbuxcEn9Ta3VldcvrTS/XRWdpL70SFgqmB4RxWBw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=f+IFH8KY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="f+IFH8KY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1941C19421
	for <ddprobe@lists.linux.dev>; Wed, 18 Mar 2026 23:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773875093;
	bh=sfhzPjTe+lq4mljeftHk0yg9tc34UDTdCDV16uS/Bf4=;
	h=To:Subject:From:Date:From;
	b=f+IFH8KYrNiO8MGDfuicE0UhtBoHQ7sPcNtMa6sAZ5bFn18zS+RvlEHjTLoo8pZpl
	 ExtxKEnWS5G9PWWIlO+J97Gh7Is8dRrM7ZhorqMS+hTeI8CYV2lt9lItl9PU0SoIRh
	 BjZ1TWq25ADYxtd1dgOo6ZHjy3BWBNXiyoi79RpaATZBe1gs6F6MY3FVqCTpY9koTF
	 wyoSOdkJgB4sn44ZCUYPO8I7KbSiqtKQwhxquwRY4c/o3tFojVK3K+y0l7Q3CFjGQx
	 B3Hx+C4OqDCaXRULlp1YsFwghuOiLDrOucNl2YKXdBXvlqO4HQPOFrQElsb6hCpMXa
	 MNKHpHN3Ua/CQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F6431088E50
	for <ddprobe@lists.linux.dev>; Wed, 18 Mar 2026 23:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177387509357.13186.14328041516306558670.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e6c17e1c745138e2b5afa527c8e25423eb8ad63e6e18af0cf38ceabb8c26ee7b
Date: Wed, 18 Mar 2026 23:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773875093
