Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F3A930BB97
	for <ddprobe@lists.linux.dev>; Tue, 16 Dec 2025 21:23:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765920234; cv=none; b=oGGmGpLs8Al4XrNImDwB4h9ckH4FoBHNtYqfV3dVBaSE88cFOEnaggS2GLtz9oYCJQdk+uUYQz5TLNUUMb1pjvx3oXRs6EhQoeIkGx1AYSRfFeDTO6QU3ktx2GBTOhQUXzNS9Cz1aYdWhYPNd61LFREaf5f5MsUvQR+y//hW8kE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765920234; c=relaxed/simple;
	bh=vlj2BianOwd3Ca2NoZMQTi0S4npnPyK++4hmbjURngs=;
	h=To:Subject:From:Message-Id:Date; b=LqAw9CCsS+rp7l1Aq9AV2bu9IIoGhqKuXc8kaHRxH+BAOljZ2save7G/B3wsrLVxeGrc1XPKAIDoOsTilqz/1h63q+W7Iu0QlNKtWtE0si2JrdKROVW20KrrqIeYAeu9vwLxxQsTjJ4PcW6IuwyUoitdP+0nbnL7pOdVx004AOQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Jem9yYm5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Jem9yYm5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6772C4CEFB
	for <ddprobe@lists.linux.dev>; Tue, 16 Dec 2025 21:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765920233;
	bh=vlj2BianOwd3Ca2NoZMQTi0S4npnPyK++4hmbjURngs=;
	h=To:Subject:From:Date:From;
	b=Jem9yYm5FHH55rW0snFPkUpNWYRJz2K4Lm34Zdmyt8g8EflPHl0+EagFjktCrmwyp
	 TUFisNTFErSMf8S/y1eiYZXNn2fov7SWxJ35fFDBQscqsT7Jn1aywIuTcZ82R1VOTx
	 yFyFoStVOyt99ArwEeAISOGuZ9MVTL1q3sWZSrqdge6YkSh17ejlPj4UuIpDbNapZm
	 /YpSjGVc6/tQnKsBYlM7pyuU4DF22g1PtISZBo3ZaEzP/9VFse7H4pLBf7zoNuWsFF
	 huvSKOvn14/u9NsyCnkI9mUiFcpaH/gSj6OHK8dq1Zwtk37egwipgqhp+jZurPekVr
	 rU9VlHj3yRC8A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C294ED637B3
	for <ddprobe@lists.linux.dev>; Tue, 16 Dec 2025 21:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176592023378.17415.3919309092131008277.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0aaf19f29f9c1d170ecdd60dc5807fb6f58c2c330f74d30e4f0ecae312f28953
Date: Tue, 16 Dec 2025 21:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765920233
