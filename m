Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CE8B1B424F
	for <ddprobe@lists.linux.dev>; Sat,  7 Feb 2026 01:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770426234; cv=none; b=nUayYZG5CgeLxeBL5WvQfVmj8I3F4lN8QjpFnoBn9f/00vbG/HqXQCYQLGCe60fHHmOAreKfgIjjoJMpkrhbdPaCq5GG710zZYqO0n6SUx8tIKifAZixj57kD5YI+mQFY5NvZJTCrD6M3fc9/0y5xWuVk6OB7vvDCuHe+OH9eHY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770426234; c=relaxed/simple;
	bh=7uFUTE1QdE/mHozCRSL63PA3mA8NAZqI6c/vjMh/VnA=;
	h=To:Subject:From:Message-Id:Date; b=dfcnoLVxzLfX5Khc9RkqjFjbmmwsKD6NcyQsMXl9FGxnHy00J6gA/34CixCkNTCmitkzgRvXqYz5adElmHyzneXL64MVvTIH2MdKlzHfcK1Hnd2htaiUQQdf9lD2CiVyjuK6o+gCQK6rgG8FxmyoGC/gATZIcXR7q0+xmUGgcMg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lDr43UkI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lDr43UkI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C859FC116C6
	for <ddprobe@lists.linux.dev>; Sat,  7 Feb 2026 01:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770426233;
	bh=7uFUTE1QdE/mHozCRSL63PA3mA8NAZqI6c/vjMh/VnA=;
	h=To:Subject:From:Date:From;
	b=lDr43UkIN2mfSNPlG3ygP7DLxBwKsDilfP9D63iWrxzkWZpZ/NtGvmbmrHDqVzWYZ
	 4N3N2F1xGjnqzQAvix4085sFT31I2DH9MlYmxn8yIr6v1s+ReShpUcqpmV+aNqLfy8
	 RJV7BONdCfKAs589I38eShrqzckWbZlE8BLHsqODov+TkIhzSwHTU9adadeVK8Ynn/
	 xX+G8KVDclv0pKrk1lrScHxm7vz53n6HbVfEXyP+GPBi2LCE+fjoR8SF2TqlrhFnYv
	 pLyQbAbWdkcquf7c2MaaMGu+AkmJxnv48MRHobsVqi9bTyu2vGN4vPpJDQnDkCbvnH
	 GFi91JICgthwQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9D8AEE6B6F
	for <ddprobe@lists.linux.dev>; Sat,  7 Feb 2026 01:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177042623365.20160.15086141198240342341.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 42d169b31db96e86595cfa84f94ead8b607d9693a367e7d9328eca56ac47d145
Date: Sat, 07 Feb 2026 01:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770426233
