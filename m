Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48C071B87ED
	for <ddprobe@lists.linux.dev>; Thu,  5 Dec 2024 20:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733432154; cv=none; b=Ip69WczB8LwDMkyo5heM3osWhClfwPzKaxwlE7FzK7EB4HMXcbi3i8VQiYNK6ofqXtgOPdwfEsGHX1FswsvmQ42JzrCZBt09EFeav5ZDgN4TUvQAcqQFKM1nmk2b5dGfpoaYHOHw8nNegfHNLkD3h/c7u1oeFQjbGCEBpwSVRfI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733432154; c=relaxed/simple;
	bh=g9CC3duI0kOgwYzBavtDgnLkRnHdz5Nr0J3CUum/Avw=;
	h=To:Subject:From:Message-Id:Date; b=BvU3WSC/p78OYs6O76teeq+ndaXNCQPsR4/i1MDIpF9pYqkjo8iPv5C13nkyW1Sv06cRtZfZ+tFdBcBlSYKWpMv6nfpPg7eXN8RHJE03xrnlUMvvoMrUWP3jbMcFqaWi2RlYZO+l7i0E87doCtu6GAopMdJRNVoI9F0P7qrQOaY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nnEF0osC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nnEF0osC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AFB6CC4CED1
	for <ddprobe@lists.linux.dev>; Thu,  5 Dec 2024 20:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733432153;
	bh=g9CC3duI0kOgwYzBavtDgnLkRnHdz5Nr0J3CUum/Avw=;
	h=To:Subject:From:Date:From;
	b=nnEF0osClw7PnvCjmv+lVoVFriVsTcGe8FnP+cFmkt+kcOM0YBb36AtNr07ex2I40
	 gpNqrW2jDfGExDALqXaVjTj2C2AOxfqhLwGrhDkrKE14w47rGmirpbrV+SZQ5FETib
	 SB4llKKn64J6OfWRq9B4QADJvDMuDJJzbWa2enWoGeaezayhvct2PUBvooakMvJFhR
	 vFbBr4nM7pyooc1oY3cn7kklxbm3COK/uF9h5YDE3jykJwylbNcTOALa3MQYif3yJn
	 +E0kO6Om5ms0RNnbV9dAGepOb1BW+kASUdfHgmW82Drxvu1jha+Pv8EARvUZ0Kxqfo
	 bXJPUneK0Lolw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E644E7716E
	for <ddprobe@lists.linux.dev>; Thu,  5 Dec 2024 20:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173343215363.29178.14247197577784725917.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 99edb68fc8a3fe34a0daa556e481e2dd7d5e80ffbba3ba92d6bb1d27c91bbf33
Date: Thu, 05 Dec 2024 20:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733432153
