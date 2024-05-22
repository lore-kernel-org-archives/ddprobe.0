Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F36676048
	for <ddprobe@lists.linux.dev>; Wed, 22 May 2024 17:33:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716399203; cv=none; b=IMHd8j74ptdIHlYmbOOHIVgbLAZEnno9lyWTkhHqcaeqfC2JeDpFlm3kpr2uS/T6CfLWDg7Q4oFMJIFcHwQTAjeI5l9wC5O3H6BhWcj4metUnXuRx0NULD9efVqsjCwucht7PiokTJlfPBx5H/CXt1BcB8EL7YUd4Odpr2/o/bI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716399203; c=relaxed/simple;
	bh=zloFYIZ9PY21RKABmt9aZS3K7RqMUQZRa/7ssmncXU8=;
	h=To:Subject:From:Message-Id:Date; b=QtbBcBr+15WguWAn496bpUHS33JgjADeQUKubLYtqX/aNkhIouBfoftr3YMmqcyJWEapusjDnTEsvWRp9Y/rduM/doQuXTvcA0NAM97uVCL35hev1ZmzYtg+z7f2Go+wKLq5p272nwqSIuWoH2Qpzm+mHfBSI1afTUqt+UqJOms=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UAJ93V08; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UAJ93V08"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D90F8C2BBFC
	for <ddprobe@lists.linux.dev>; Wed, 22 May 2024 17:33:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716399202;
	bh=zloFYIZ9PY21RKABmt9aZS3K7RqMUQZRa/7ssmncXU8=;
	h=To:Subject:From:Date:From;
	b=UAJ93V08PdrWKYOlJSUVlTNmIZ4MuR0UET0nksUGss3D6cn6hOGda1//w55WBeeLG
	 FHzoclkRR+vhmAyZxmDsTfG7IStJRhVUQkDxYW8Mj9V2ss1xD7vBPVhu52vmKULe13
	 NDyN7Ok8Yhwenzp1d1ZNWc/e3jN4F/VK/L7UsfbrmgpJWiOk5bNI1XA6VZy68RMGwS
	 D+9j0mZeE9BQul0A+YDVC2xNGkw8oGMoxm917G470AIhHDi4VVYGOQ8C2NH8cxdsA7
	 aSkDmC5CetSBJV2yRTI26hEeCQU4L7kN3LpOQO2XAAXH1a0tDLdWAziZap3FF4N1Gz
	 d3i3EphPLff8g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C4769C25B79
	for <ddprobe@lists.linux.dev>; Wed, 22 May 2024 17:33:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171639920279.10099.18349769230698346404.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b66e07410d4088169c46978d541f85ac3da5cf9e5e48b4a252761df2f206bb21
Date: Wed, 22 May 2024 17:33:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716399202
