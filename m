Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16A5018C02E
	for <ddprobe@lists.linux.dev>; Sun, 18 Jan 2026 12:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768739634; cv=none; b=JQNERr8lxbQosHCEu1WdAOdpx+0IapSQvV4Y0k6avwsc8JN5AnowOphVAsviIXTVclqnU/KepUiITsTkzMp6U4k/CpQE6nti89nK48bzyMzJ3RKcdp115Rw/VsN7pNNb18nZmX9NOD9sgWowGwgVMgQAd6JhkaxGjbbPY9joLuQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768739634; c=relaxed/simple;
	bh=Tnhnin8AF/XG4ReMzWJ+Sha1dfVBh4Om3/UjEc5MDBA=;
	h=To:Subject:From:Message-Id:Date; b=TvAZbQqj344whzLtJqRkdlZP6hVBi/BKSTVGDHgV1UYr31K1o0mg6iSTDcKIlYX5MQfFhxpxCJVj01LspuGl5vhwl6dL5R+vEdSlNVhXbW077AOdzutq4pyshwrXa05c+4tabhJppxQGya7uP4x+hh2498BLhF1uMsyKLWfyNSc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sw4B7saM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sw4B7saM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4DEFC116D0
	for <ddprobe@lists.linux.dev>; Sun, 18 Jan 2026 12:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768739633;
	bh=Tnhnin8AF/XG4ReMzWJ+Sha1dfVBh4Om3/UjEc5MDBA=;
	h=To:Subject:From:Date:From;
	b=sw4B7saMPgnq4XhxF9GA8prh5b/Ju4gqlCMknjun4/zmHn0PbfHBl5z5QXov78N6t
	 zk/obxJXWR52CJ0EOT8+JmQDBDJxiuW03aFs8q3TJ5pQFJuo1t3pzfChNhMJh8wPQ6
	 dqhvhtb3Fn3Ppecjw4+tN8dfHf2Rz99EI3popwx38oUKVFZorHn4KSnhGyD57i2tFC
	 +0Csu2E7nrU5PXm6lJTAra2anT6FUMWV5Ud1xS5DwkiP4zzNf3byYOkacTmMj+k1+K
	 w7hUin3YbzEWczf6lNJKf6j6iKWSXyCA8I2neAZbwkTlyfb4KIBCLSIAtPvNqJ4h4l
	 U75FwzVnDnWBQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9226CD4A5F4
	for <ddprobe@lists.linux.dev>; Sun, 18 Jan 2026 12:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176873963357.11131.4118624658587699241.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 58adab452c586bc7963cc5aba86e23ce71c713d530789b845924d6adcf04dd4c
Date: Sun, 18 Jan 2026 12:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768739633
