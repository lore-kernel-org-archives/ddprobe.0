Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7D05C202C29
	for <ddprobe@lists.linux.dev>; Sun,  6 Sep 2026 19:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788723034; cv=none; b=kskVqC/m+1/jABy8ucTkJx05X1HjxxRcMgeJgnemOb7N2mm8OpFsWXxsDY/S8MR11ZQBB/QPUU6pgzEVociF+Qmi1nWhW9OjXrbiPD/D+4HuR2eywwFuZ7opKcIGRaHdXxRrc/eNtHsna8tuc8gWukEV3fmUiSoY16RHOMiPnmY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788723034; c=relaxed/simple;
	bh=5hXgDV2gABnTSRbl4ssx8tzXOW1XFFHMlvr2VJ3i7XA=;
	h=To:Subject:From:Message-Id:Date; b=SBc/KCSsd9cotfQX+iq1j6o7knqua83aBcVxfwubrG07bXdgXPaPMZg03XWkUe66vb9BSUZAVNcW57PxYAZU4XonhpQx4Gv+1OiHUmECYI5grGB042SYyXOjdxmwZCG4GPajv4fW+UwJasz+RfYyAok+7nMNYCpahBo8xI+bNoo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vLnqQ2gF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vLnqQ2gF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4074C2BCB8
	for <ddprobe@lists.linux.dev>; Sun,  6 Sep 2026 19:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788723033;
	bh=5hXgDV2gABnTSRbl4ssx8tzXOW1XFFHMlvr2VJ3i7XA=;
	h=To:Subject:From:Date:From;
	b=vLnqQ2gFrJdqHURHtObh/JQp6O8A80Gr6riQwxkXaUEbg4YDCJdq7M5CFNlih0KmJ
	 rvaV5Drt5EV45DHhC8LQXBrLsbueYgGmG3BwxsIxmvDaEB858s83b9z4SHhFCfiUmc
	 Pu5moaSqRdxSMPzFJRxpzOI6Du4tUgMGwfZi+TmTE07CB9PXl2Fy6CnfAXl9GfhVlP
	 JwpZ97vFc4gwg+s1bMWziRs0kBLEG0Z0PSJZ26Px02fxWvzkvuy01ZKmOzTokOyqNI
	 erJ3yRUzU3ywEjiij5AulNxIeqG51mAL3pMzUfcmwPlmKAZsl1xP+4HAbGAF5xgg0v
	 JSlo2JERN6omA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B19B7C79F8C
	for <ddprobe@lists.linux.dev>; Sun,  6 Sep 2026 19:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178872303369.14413.5711334255872561217.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dda64cc117150ebda946ba98722c5fa6ffb57822f6b6b9107849b14f54db7a9d
Date: Sun, 06 Sep 2026 19:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788723033
