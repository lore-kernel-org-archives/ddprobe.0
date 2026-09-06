Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 513883BC680
	for <ddprobe@lists.linux.dev>; Sun,  6 Sep 2026 17:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788715834; cv=none; b=jEn4SqWDC+QKWv25bMpjXjCTzVjQvNtEZB2ykDO7ikuo++KUtzPAyhBiRSOA3zbRwEmQ19sKJN3BzDbLwwhIiquB4r4RJeEuAUrh6CSzOW95jeDW5CxAcA8lz0q6hs4FggRnOb4gJUJ5LPwCpUjiVy3dnwQ/0OJtAbteC2Dmb1A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788715834; c=relaxed/simple;
	bh=XG0eHeptfCmBmvfjVLJbQL7OFPI5is232clipjIMU9E=;
	h=To:Subject:From:Message-Id:Date; b=kHHraJHzMEDvEXDjKbGXj4cbdOLAC354N2p1jGB6Rd4kJOyZ7W+F26wo+zeVPKZx5wTbDrbqIo9GpCYEQw2Mej6Ho18kf7K1/Unk8DNOPagY8ANvpisenfXrCfz6L60Rb9OwjiNIB4dx8IEW/g4XsWNLgpzCK9LmYV9UQmgX4KQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=U4teINGY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="U4teINGY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D600AC2BCB8
	for <ddprobe@lists.linux.dev>; Sun,  6 Sep 2026 17:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788715833;
	bh=XG0eHeptfCmBmvfjVLJbQL7OFPI5is232clipjIMU9E=;
	h=To:Subject:From:Date:From;
	b=U4teINGY92BjM7Bg+WbxC3Bmk+g+EjN/J5Fb9dsJ0pQssRFb1lb6nxi3ToxveJ1P9
	 CSa/Z1z0Cf4v8/r5wTsVUZiiHtmP2dySj6l6rAnlTKX9QplR/8yoh4jWfRWXJ1fsX7
	 lI7WLZwFzGMKWIe4dQvesHgrDUksDQnFc2z4LBH3vYKZeGuphjMYB54z7yMRxjd++k
	 xeKoENf6yNZIdS99+K76N3yaCBWMMK3HaxeUrRYTINrSa34Si+ocSOLod7WEZLixwQ
	 mOIoZJ0ORL6FfI6QWRsnXs/fvABG9smIgp14zeQiFTo7kP2mAvaMwmhecl7c7C0PgK
	 yXmA+uTStOz9w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B371CC79F8C
	for <ddprobe@lists.linux.dev>; Sun,  6 Sep 2026 17:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178871583372.8367.15564830599804545665.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 60b026fdfd381e26b7b78b79d75691c0d7f92aeab5ed39c2d87c45d162ebfa80
Date: Sun, 06 Sep 2026 17:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788715833
