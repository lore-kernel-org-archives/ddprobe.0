Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E4DE38C42F
	for <ddprobe@lists.linux.dev>; Tue, 25 Aug 2026 00:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787616034; cv=none; b=uMvsA9rLkFk9WcbMWBsnG6L8rn9LxNf9jnnqPmcSI0uFcG6V5WMgBjPOyJyMgOM8sislAjBpExZPmEVywb8DQcKmpscQqDAlq6Hfdk16d56chZPgmiLXd28DyU+pvzhdzZblzJoxT7m6P0HPbII+030cVcsOg6NI+vImJrgxbY0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787616034; c=relaxed/simple;
	bh=Tpac+yUDw0qCAS1v78UQ+JiVYMfca4+fYl6UiI4HcYc=;
	h=To:Subject:From:Message-Id:Date; b=matR4oQX50KGu5BYX3jY2wEPGLjvjP46ThVlsLPgIw1GDPvcqEclvfNHKqwSRDac5w7bQS4syZ/qWMKIkU980DlhK6Ltyza97KdwOensP/v2JCxBBvC9O6OIako/MSa1kfxtOdCeUXA+T+QxGu+I0Prkof2ybqTcASXWOcV9yPU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VBqvaxnY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VBqvaxnY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7A4AC2BCF6
	for <ddprobe@lists.linux.dev>; Tue, 25 Aug 2026 00:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787616033;
	bh=Tpac+yUDw0qCAS1v78UQ+JiVYMfca4+fYl6UiI4HcYc=;
	h=To:Subject:From:Date:From;
	b=VBqvaxnYDHe9YqDSVBzaszfovrWXD5aADGC6XgelCuTc830KNUongq1MtFXIXbKt/
	 OUs3AlemNguIapVJbohruPUEt/uX/ONyEBo4siPFlF32DCxwi9jzWHsWo2/ijdAJYp
	 adOV11uTCwjhC9IP7hZAlkLSFrerUjURWTcIgFNLjO3tOftmi5wFGcaBpO08scGmZL
	 3CZr3o3I/gNPOslKVXA82NXnV/vmW4T8sZj6hg5E4PRaJenW0f0KVtbVa03oGo+QZc
	 5WKGFtpnNkJV9FjaJy5dPcKnJ2UQ61oMet/NQj/Ie9S54g7jhcOLEtq/HFpFAdNi42
	 Ml+2X9mLhmPUA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFB6AC5DF81
	for <ddprobe@lists.linux.dev>; Tue, 25 Aug 2026 00:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178761603370.21559.2437336468600343459.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7cb068f86b9a6646e4ca9897212573c47affe802343ab883eb4d519cca77d426
Date: Tue, 25 Aug 2026 00:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787616033
