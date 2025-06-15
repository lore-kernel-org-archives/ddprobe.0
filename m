Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2175F1FDA
	for <ddprobe@lists.linux.dev>; Sun, 15 Jun 2025 03:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749959394; cv=none; b=m5yrsplN4q+PwQxT9F/MVcg/AJ+z50CJjKvJz3es5Zo+Un6MhSqcxDvAwWYFUzXb2z1L5/WSAqh9RUxmEkgz+WyeZf5PE7AW5+zykpiDLtVyyOeQCriHKzFjxvH6TTOF2BDI1yvT2wCjNK3dbBPI4O2uVRB9zlEa+C34DLikEp8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749959394; c=relaxed/simple;
	bh=U/T6M8r/D/7xmxvBB62CNXN+sc5lliltIgyxEYicMGU=;
	h=To:Subject:From:Message-Id:Date; b=SvcW/IK1eoVR8u330HptSeym7dYOecPGJ1przZq1nOo3g/FPTWS5sngC9wcxPJ/H/Jghh7z4vjO0JujgzhDsgFUWN6dlKhDEAXUMoMiFHVjx+c8Jw6CnahVog3ULdkjrMjRJOWaNaCoeG1HCam5b9Vaz2n8tCDn2RquJJgBUKMc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rDrpSwAL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rDrpSwAL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8338C4CEE3
	for <ddprobe@lists.linux.dev>; Sun, 15 Jun 2025 03:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749959393;
	bh=U/T6M8r/D/7xmxvBB62CNXN+sc5lliltIgyxEYicMGU=;
	h=To:Subject:From:Date:From;
	b=rDrpSwALFXfkGzKz8Sv9ACi7SqPK7aJO806huTUwXCJSYsq+G3g6QRBN6mFn0h8ut
	 e2VWlAjCZL3WBpMgkwUlEaLs6TZsIiJlU8U8F9sZDr4HlgPVICFY6bg4le1R6VkJYo
	 IVRCLuYUU/YOjKTkT0WP6Y/M7JVlDXngAt8drPASSyFDl0li/2OFkx06UN6Asswlbh
	 pGOStTF/W+sOwTVa32q1IAh00CgAhqni4QkficASNh2E/ITn7mA79Tq10G3iUk35O/
	 onCfNwYzIykEsrG7m30HuNZ3qAAgxLCi/cnLOSHASw29zwUZC4QaE23gl5qxDCv4D3
	 jven/+2lCudRA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 922A7C71135
	for <ddprobe@lists.linux.dev>; Sun, 15 Jun 2025 03:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174995939358.19597.15914455889519890072.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 28efe69255782e2a11d4c0d11a8f6e1ff3116a453449874b5e08a30cfe056aaf
Date: Sun, 15 Jun 2025 03:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749959393
