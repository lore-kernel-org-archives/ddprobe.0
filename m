Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4790F213256
	for <ddprobe@lists.linux.dev>; Mon,  7 Apr 2025 03:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743997794; cv=none; b=U2jpEUELvyXAZ2+hlzJLJws+yECsX2TU6zq4lUPBP0rMwcaqMIe0vFijT6gM22FYOdhenlrSo5/zBI+X96yQsZ2GW1evKiXW8qBckP7qUV80F/nM5vrLDECA1PZqF7cesozP60uu+EKfaqO/BUPDWIKMWa+f4vX+WKEKqFDdLEY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743997794; c=relaxed/simple;
	bh=gnobk3h4m2W0zO8dA848R388uVKEXLKbcOlx09vCQeM=;
	h=To:Subject:From:Message-Id:Date; b=LsvvZJ4C0HJrz8H+/C0Acac9HWL0PI1SWwgDIGtOj0Iqi3NYmZtbvaCpTGRtw6hiZAArjw2OP94xJJOI/CeerlngL+0tBx8ErnpsSX3/hiziAAfE/jSDB8zpp18qv2oa40OnxFUovYwzPvHaLy5LOlHC9hWc0OSTrNsSW3daNhE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ki70ohsf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ki70ohsf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB4E3C4CEDD
	for <ddprobe@lists.linux.dev>; Mon,  7 Apr 2025 03:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743997793;
	bh=gnobk3h4m2W0zO8dA848R388uVKEXLKbcOlx09vCQeM=;
	h=To:Subject:From:Date:From;
	b=Ki70ohsf11i7lUsFiPZ/5UVyBu9nagUdpWogr9bdh6bwxcAxXef51eFDyCQPg+tRZ
	 IF+5Kabv3IXHbgI2pAurChoihBIlICUD2X6051pDkAJDpUZmhOwrrqoKUAjII+n0t+
	 vPdTI6+gHpV76rpNFmksLmbJR03e0IQTQAz8t/qAgoHJk50Q8wO8T0kuiYugyxiByG
	 O/dpjFkqr2mNCPYKznN5J/hEZJH8mFzPny723lhJLNcnlTgbcN+hef0tEI4A82XZzd
	 hFFWSdK5BmvU+uezESzAK6T1xVE2I1omH7VsfGCEuJ96SxUkguIHffT4UQTmA7xIGT
	 xA3MrXyt8K1GQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91F8AC36010
	for <ddprobe@lists.linux.dev>; Mon,  7 Apr 2025 03:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174399779359.7337.8399120612928517907.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 62c62dcf429a71a70b5f4e5d17910a5575f3df510a242c346844dad17a2925b6
Date: Mon, 07 Apr 2025 03:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743997793
