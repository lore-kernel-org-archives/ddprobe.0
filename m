Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 534614A29
	for <ddprobe@lists.linux.dev>; Sun, 13 Apr 2025 15:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744558194; cv=none; b=kyd1j2IGSNQ+ceu/GV1cgiaA5NwzVWA/hmt9ljNEUGo1aQ9ru2DX/iM2zXyoePPUzPuBO/hpc8Z+9L/BehBKB4ZykJKG2EwPisw7YD+Vh1cIzdZQVprRgwhjSTVLdiiZAn9yY31PtiiyEWLDgQLO2QUXldanExSN5twtozA8rV8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744558194; c=relaxed/simple;
	bh=RnHnVii8FHZ1jLZs2aYs5Cskode9SvTZVLV912LTGA4=;
	h=To:Subject:From:Message-Id:Date; b=dyxn7PHmmYYDo5lxoIEXuO5ofxW2HNMdm6tYK8SVBgMrmEK7VVtPI+PqI89suBcJ7VdEgPV6oiRUm19GT68ujBm9a5paTCoeaWChvkCKmme85OwboltX80oekiv5ZUGU2lgRB2ejBYcSpkNXEIMw66yT2OPDDkemx+uw85iZNvM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aqcCaIKQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aqcCaIKQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B42D1C4CEDD
	for <ddprobe@lists.linux.dev>; Sun, 13 Apr 2025 15:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744558193;
	bh=RnHnVii8FHZ1jLZs2aYs5Cskode9SvTZVLV912LTGA4=;
	h=To:Subject:From:Date:From;
	b=aqcCaIKQO9xITh5+qhMsdXgp29OriN+c/WPydmO0TTgrOXK9k3q/Q6Rc8ZofQO6l3
	 D/UFHNbbS3icAKZoH3+LxYRtmc0Uuts8tsvcbgpYDpBUN5a7qKC/Ie+zuBmbZw3Mq4
	 zdcMM/7Rtt21X0kEA39Bl3a1eIJ43lTS8WStMEd+Gx3VOTcKLq8g215ZnK1/wFfRwq
	 0QPRvi5RGveX7l9t0fc3QMs5zoP9DC6qNy/m6FgHhGrKtmqZC7HrSiRHhqNC+wUuS/
	 wCe6VNtnZrluujT5/U7+cvZKV6x6kw7HOfG6NzFqbu4wWL44tuK+AZu+zguw4IWCkr
	 tx3/4SuQm2SFg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B64EC3601E
	for <ddprobe@lists.linux.dev>; Sun, 13 Apr 2025 15:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174455819362.25169.6704432687659782132.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 07ba004ed19e5eade7be3d551b8627b458e528dd76e52ccc324813e4dcd1cdbc
Date: Sun, 13 Apr 2025 15:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744558193
