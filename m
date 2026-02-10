Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33FDBCA6F
	for <ddprobe@lists.linux.dev>; Tue, 10 Feb 2026 00:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770682434; cv=none; b=ITaZ96x8hghE9OWfRKW3eUQsTJ5Ihv97YJlfSeCSWO00FYrnP1QrpdsV/a/tuaKzmnej8spWNkttONdkIfbZCbIHWfIVMicNa5xm4kjpTvoKWSIYIJZ69JJcGue7S4WWFxh9HruQAYNJWwIB8fb9A5tAaoCrCU0J3djFCgM72z4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770682434; c=relaxed/simple;
	bh=iOCqU7BXPrs/+bvL6MSsOCZICSLBazIQ+fWVu1TC47o=;
	h=To:Subject:From:Message-Id:Date; b=TR1GKICYE3w6SpvRi+XF9YnhRxHkdTxTF2Qpze5yzUPIxV4JSGeOGF5c5Hbk2KmlDKgKzvi1iKk07hI5BTaF2KbeGO1xjCpfC/KF5We8BPQ6ClcMXvQVW51wINFW2WYmB1+Sud4oeDLQ4eka1NBA2Jn9TvXJV2BcOaE+FSSjaPI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qxW3xYhL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qxW3xYhL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA554C116C6
	for <ddprobe@lists.linux.dev>; Tue, 10 Feb 2026 00:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770682433;
	bh=iOCqU7BXPrs/+bvL6MSsOCZICSLBazIQ+fWVu1TC47o=;
	h=To:Subject:From:Date:From;
	b=qxW3xYhLVIT265LWSsPoh5Ukmfpo87AwJXaIP8pHg745ftrODmXjRwMOMu8dsfIWr
	 svxA4a8IVproCftRk73Tbbv2Gi7KVHPfupSCamBAxjLJPpnbYxt1QEXYSfB8edfPln
	 Z6b9LFHLvGaVQ6sqnlY0Lj/BZ/g0dXEXa24Sd/1OOPartLyNRSebJ6WVQXc8pbYQ1C
	 nV14tm5OEwMaZGLVf/mfxyzDmMXbFxidjhv0EHU21smhk/IUUALmFZEQoEU3vTyYiJ
	 gx3J8mvLokaH6Akocj6XAye7W9cdJS/KJVb9v+5c+aDs3tH8KzykIdH/mEb9X8voSJ
	 s/f4yznzfwKxg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F14EE94623
	for <ddprobe@lists.linux.dev>; Tue, 10 Feb 2026 00:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177068243361.26777.9711755477758617135.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1622eed0815bccd851b6cb2be7795127993a5219f2978162433fd85f791c60a6
Date: Tue, 10 Feb 2026 00:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770682433
