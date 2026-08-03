Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D5EC42DA52
	for <ddprobe@lists.linux.dev>; Mon,  3 Aug 2026 18:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785780634; cv=none; b=rHaX3l3h+A1lj4rPAo+fiQWoo5HF7vyYjSQCidJ1cRTOy5E8dj/wBpMmwGuH/kmkgAyDvSB+i+G7u3GzCBexWEO1+K2zCDgUDGkml4ylf5C7YxQl5clewkIA8XnjCvqez5QSWv5+1vxQOJ+fpIWMyy9Kx9x06p9KDeJAO72vt20=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785780634; c=relaxed/simple;
	bh=hIyRzIB9IB2zZfCbtQcS6UUpJBiu/bxmzawm6+aDsBY=;
	h=To:Subject:From:Message-Id:Date; b=ZQDKOwdLBpy9J/09NrJhL02dsQOI0tfJoQjvnCJi5Yge0lZBWlXYBOXrRuXeLvNqe3Ud8INSlKtx9TnEr/2fLftTUIE8PVZjO9q/PNg2E82M1WleF3HR2uIIV28uo+5C4OvWYMZbUY3ukUUdiymPSplc+jBO08rdiDy5m7aiWoM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MrSURRB6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MrSURRB6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDC47C2BCF6
	for <ddprobe@lists.linux.dev>; Mon,  3 Aug 2026 18:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785780633;
	bh=hIyRzIB9IB2zZfCbtQcS6UUpJBiu/bxmzawm6+aDsBY=;
	h=To:Subject:From:Date:From;
	b=MrSURRB6eq1irOvXWUmQzHy71z9sXAHyfsndaINxjrfLM5atc9HTfcX7rli17kVMg
	 cir4u0bV5DvewFnACrtiXOaORDIUitvMgRfJNZhWSFsmuWqLRpn5bZquiiX50zKpGe
	 lTWCPNzwjA+rrMA+zONqi4SAlntGSte3x4fMZKoHJi9Q7RyEBfc2EbeIdrVy4QI80y
	 DfZU2Cs3YMzv3qFUL53cPutSt4nZkfAnWyCMd7+8nYE2JnazYM6+S6tSqXie4FBYCX
	 UYzwsSe99UrLceifU4r+7JGKzxUZBavzWqEG1VQhc0uBWiI2eYorN2uum/1wFSY37z
	 fFfEZ408dz1cw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABC8DC55182
	for <ddprobe@lists.linux.dev>; Mon,  3 Aug 2026 18:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178578063369.23663.16785316280258124864.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4c89c4b8553d191124778a38c968675af8c93e1b4b5be8b063e7712ce62be55f
Date: Mon, 03 Aug 2026 18:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785780633
