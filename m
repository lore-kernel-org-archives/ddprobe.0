Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 12EB31D278A
	for <ddprobe@lists.linux.dev>; Thu, 26 Dec 2024 11:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735214154; cv=none; b=njoIdG30UAnKR1hFxzy+JX6AENy21him88+6fh5/OB2FpYv5E1b0KXC99bMxCS5WzVm/KvVvjsNv36kBwS+B86oj3GKmXgFttKiRo4QYk5kLScJnoEkndCwzXZxpDM0ISwFcSdMhC0OVD0JXMctlid/sVUdJNwJj74puLvzBJ0E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735214154; c=relaxed/simple;
	bh=7ngxQ7JS+ltKVyhvHToFo+eu29Qa2EtTOaUJ2V4aRIw=;
	h=To:Subject:From:Message-Id:Date; b=khD6RRSI2c+K2OpmV42cYGtZBvwrzRaPkNb2LqbdmbRLDbQ1DuoTMjFOY3HBL7Jo7rpLmCjl0xwWOWeK0/w+RP1HaCfeK/rilwHYQcCscODBs7MEV5KC4c2rDAmikJujrMf+z4xWRy+3J/igCM5qSTPNN1SSf4r3sAeW1UjhRmQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iKj/N8kK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iKj/N8kK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACA26C4CED1
	for <ddprobe@lists.linux.dev>; Thu, 26 Dec 2024 11:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735214153;
	bh=7ngxQ7JS+ltKVyhvHToFo+eu29Qa2EtTOaUJ2V4aRIw=;
	h=To:Subject:From:Date:From;
	b=iKj/N8kK+dNDeb04PPaZ67qebovEvkYAZOkGSy58DHJmAKQMNerBkWuGGfJZZPyT4
	 AxNTc8kRCg+mpEHGHYXsSRP/9RrS9KQ2Vm92t8lV+nIpixyt8c+eI0Xq7s2kA3tT6L
	 sn93CqvTgtG6XpQV76Muxyuju4j9C04DBoaBC7w4pdzRHRMlH47fW1hY/lLFE9bIE4
	 +6dBNWBny3L1fwHIf9IUHCHHGT6LgfIU4UkvAMvftHM4cXPsBOGKtz7a2spKgHPElM
	 puxsFTlCq3gz538YLBnmqj/CIaZI35lR3NV63rUmouVU3PnCQJXA8WGo4H6GEvZhDv
	 Is+dOeNQig75g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95C86E77188
	for <ddprobe@lists.linux.dev>; Thu, 26 Dec 2024 11:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173521415359.16203.5431610497053021041.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 633e2925004b33cd99dba4a6270b9cb71516c3e3409dab07986a164b13be20cf
Date: Thu, 26 Dec 2024 11:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735214153
