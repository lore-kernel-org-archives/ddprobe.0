Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D0B9B13B2B1
	for <ddprobe@lists.linux.dev>; Thu, 19 Sep 2024 10:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726740953; cv=none; b=jaunVtB+xopSty0A/CfEzHMMOjPfyuraJIZYr8V+jDLK2ri02V/6plBv0uHFRTFUwLirIysTjHY5d/0POaLZHfQfcwSduSObg5bivpGYtJkAHKUjJKcCzXDolf0I5xKszB0g8PojFj27ilSThPfEVzXFnREcJ6L5g8kkFD8Lt4w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726740953; c=relaxed/simple;
	bh=4D0ZmeWce0YIZoKFKqSsZSeKPvNurZAAVRQ1RNSj/7M=;
	h=To:Subject:From:Message-Id:Date; b=B9YxQFismjfjarGR/ahQai6um7EAiFbp1flTqupl3lKhjuXU1VvaRiiBEsfV7MhlI2/0MQDjYNZkOy4HtnpwoaWS/UU3/CFXqYizrtSi1aDDneTXakrVrgrdnXAeFuLJc1E2jaENgIPD8jdiX1ZepZ4nPtibi0pYdtRlJNDf2Uw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YaVXFQJi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YaVXFQJi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7760C4CEC5
	for <ddprobe@lists.linux.dev>; Thu, 19 Sep 2024 10:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726740953;
	bh=4D0ZmeWce0YIZoKFKqSsZSeKPvNurZAAVRQ1RNSj/7M=;
	h=To:Subject:From:Date:From;
	b=YaVXFQJicJYvPHro15qZHMtbqt7+hOthz9BbXAu4jatISpmuFOxdT+cyMWipou8zi
	 JzDyJfc8OmVOvyo/dV7db4Z5VJ7BBsDUDINUxpJYFvh+ysHrE004APv4TjhX1Iy2E1
	 cHzB2qN8eEwSdXX4gf5NhnQvl2bifh1gNKpPJj75zoenP+mpEBl0Y29dvkF3yuLJNR
	 Si0kvJtIYvxc5XfgmPwASDQDlW9pbZlzgnscQbPSsSNkr79OnS89lYoXJfDoZj4zA6
	 UkeIyVWoI5yzuX53jaMZpbfanRXdLlQwnIkeHu3wbj0pqps6HechguQgMUJ9obszT5
	 JiNmbqGx+/neA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96494CE8D72
	for <ddprobe@lists.linux.dev>; Thu, 19 Sep 2024 10:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172674095358.30594.12386578507467991031.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 41cb08bcb1ad7b3755e08082d2e166e76288620bee1dee8acc35c79deff35ba5
Date: Thu, 19 Sep 2024 10:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726740953
