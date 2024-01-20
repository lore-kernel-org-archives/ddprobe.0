Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ED216D28D
	for <ddprobe@lists.linux.dev>; Sat, 20 Jan 2024 22:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705791497; cv=none; b=SnLeDrZIgljv23jrtDOJkmYvbkFTrlfUfMzAu+eqcPuNMS9p8mHDzCu0wKit5O1rXOkBlkEA46qwkB0X3sI/idBbPi4C2Z+lHNz+hxPfuLH+gfGO3TKkemt6pTpUIeDkdiORBmnaieFvevlpNTRF3AsDXbKiBJbEx2yPVbJR3SE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705791497; c=relaxed/simple;
	bh=TrISDun/xqrUH3sriN5HkcfzrBx/4jTok+B51QWutKs=;
	h=To:Subject:From:Message-Id:Date; b=KvYqgv/yaCV/MHiXpNrH7HXhu1GQ4iMe+KxtVSTsj49ltDztwRihaUZMafSHI+VwZc7VrE3nU2SAJ483LDH7Bg0pXiUohz7rpiCzoOTO9HiJJzYZXUl25LcjRNqi2mYKLY7KNpk5Oiz30GAGGfODretx4FMbLqzp0dDUdvbOPV4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gsae4LU+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gsae4LU+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 721BFC433F1
	for <ddprobe@lists.linux.dev>; Sat, 20 Jan 2024 22:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705791496;
	bh=TrISDun/xqrUH3sriN5HkcfzrBx/4jTok+B51QWutKs=;
	h=To:Subject:From:Date:From;
	b=gsae4LU+48PmIqybIGTSBwmvNoMGCFuQbGuvObc+vlSotv0CPJbQWGtBsHNjckSbW
	 xxSdkRio9e1RsxOpHip7QOLQiLu5GIxVzbF9fvbjakcqPjm7mranBsDeq1k3vL+e1I
	 kCDKAgeHRmlf8mMMSXRvKiTomso9uWiKSfbp941K/XoVoslFtcNcc0gqxbU2Kc1IXh
	 rR8qm+yUeH0+Fk7rT7ZM/VbOKTwjpiONik7lUvshlgJSbd6Fz+GuH5e78kaVnOC45+
	 1/P9xqYm0uMeKXVMSE81sB7ShqWj+vaL+j7o+fEV/E1lhElibD/lMzhTv1qiqOOJr6
	 i8cKmqr96/Vkg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 59F5BC47258
	for <ddprobe@lists.linux.dev>; Sat, 20 Jan 2024 22:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170579149636.441.8740128314782756357.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 96f2207ffbd0f0bab51c3d4cd563783ebbfdda931864363a6b766f40aafa70ff
Date: Sat, 20 Jan 2024 22:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1705791496
