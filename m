Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 92EA23ED5D6
	for <ddprobe@lists.linux.dev>; Wed, 16 Sep 2026 01:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789522234; cv=none; b=FRfiJNEbpTJl6S8l4Jp4k+YqM6/K3fRPlnjmivXvw/+CQdaKPERoDnbS6bodFwb1ne3DW93i2pgX9qgI669cSlRTNSNMrC15nIXGTnbbhaNnOhS57HcoOHhr5iAVbExOkbm91A1iEoQZ432aLxWhkPZoG/t1rxB7eqwJAeXK5Ss=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789522234; c=relaxed/simple;
	bh=lGfYX8gw+5yQkTUcOqut4bI6IrrHclOWc50UVdI/wEA=;
	h=To:Subject:From:Message-Id:Date; b=qPYIVC+fwuspaoDR8c9/aEqkdNsNmOQPSTYC4mV6pOahMZLXp9oigEzrfzU+MS4KZ0fPWSQ5N3pzLUWcAy3Agl2XvG6SDA2NPLvB7yQDnmXsDVMM/CcZcOFhVz02hlsUzdasHZRtf0e1u+ATohf2mww5KDZNVUMtCjZ4LHs92wM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NJGl8hB8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NJGl8hB8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0801C2BCB8
	for <ddprobe@lists.linux.dev>; Wed, 16 Sep 2026 01:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789522233;
	bh=lGfYX8gw+5yQkTUcOqut4bI6IrrHclOWc50UVdI/wEA=;
	h=To:Subject:From:Date:From;
	b=NJGl8hB8Vr+VZE2b7HRlPa4lnijXPEw3WRAzho4a9lKMoSu2DZ4hk/7jsHwMlzMwm
	 sjOUX6HL7OfmvewU1ZXtEI3P9V5IQoE0QJAOysJ0wpJkRf4MqS9rVOfHhxBJ0mK3Yc
	 XeuiNQOGXMSf80EhiOzKuGMx3Ff383tNB/8KdfjA8qVOlrMo4OoZUvRLOS4rnjM8Xq
	 YD5AWVU2dnnqX9efWCNQCxTEmt3vM/72hgS8/EuJghrXUwBQrkns7sOJ2jkcj5a+XV
	 7LOtHvIWov0SaJ5pTw2BK7dbjF3eyRSaapOZAX+QtYfpwn1sGkxf4nxDj3mFeoszZW
	 c7ivxiaCk47Tg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFF8DC88E75
	for <ddprobe@lists.linux.dev>; Wed, 16 Sep 2026 01:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178952223368.31391.12812427804950000953.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 71551d636422505fd6b5ef40a4ebf54f655f2c3bdaa5cd9245995c47f701a39f
Date: Wed, 16 Sep 2026 01:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789522233
