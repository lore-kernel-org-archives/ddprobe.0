Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0FB65274B3B
	for <ddprobe@lists.linux.dev>; Tue,  6 Jan 2026 05:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767678834; cv=none; b=UGWePB3fAIL6Xk1e5BcAcgimqsbj4tTyF4iTbxC68t3SC9d4r6KSWQeEn2zvzjUXsYKcfWY1YxhopO+BMLEA1buSMTVt1Pq44ZUp7abIjz/eXg26OvJQNuKfEyLx0cr3dEfQUGqITkFOqhzmfXIfUSoHAKcVaVLlDcMVttsGKxM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767678834; c=relaxed/simple;
	bh=kG8haczjAX9/Bvktz4Y2TcJBhtR37qvwNiRb3fkceUE=;
	h=To:Subject:From:Message-Id:Date; b=Bo7FN8jqEGeByCtZ8ErYVkmUwvN9n79NBYVEqbpFcxNAVWLzOrXVhgZ4bVoLxX4JD43fM6jpQeSHXtF7+EhDvs1StqVoJahAFPv7KBeZXpQmaafg5mq+qX/8sasgWZ5EPulAqOgnR2GpVJ70EGY67tohPcXVwzjs6ghyNkvUnWs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=X5dZ7zXU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="X5dZ7zXU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A258FC116C6
	for <ddprobe@lists.linux.dev>; Tue,  6 Jan 2026 05:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767678833;
	bh=kG8haczjAX9/Bvktz4Y2TcJBhtR37qvwNiRb3fkceUE=;
	h=To:Subject:From:Date:From;
	b=X5dZ7zXUg7r3dh3K+aAnDgYwFZxGbtIXTO2yg3il4Hd9DxguhaSvUUd/Rtm0t5MNJ
	 JhkPChiguBJYvkzbnTP9KYufeSKCOSP0D9S72gpl84L0X2BgqJQo7R5AVyR/isPVL4
	 rfAdQP/7lShfRe3+i0npc5ipmdpM9MUeiAzKFMKpE+h5kNewfaDJFIPmR3osoy6SGd
	 kHM2QET+jXByb+eFUx9GDaGiSyO08/3C3Zf8fsiwyGIoBPdlAsfb9XNkelQt8qLKj6
	 n6q2AWB85yaCad4xuCOZOeT9Z/EKhdbnF4jgOO5lzJhpajSQ/qDz47ciJobORxNySL
	 8BlJ8d08oVjLw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 916E9CD0437
	for <ddprobe@lists.linux.dev>; Tue,  6 Jan 2026 05:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176767883357.1528.16571637252041038905.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 007c86775e97f3937aaf55c55770b5ab490c7a8625182b8d42a3bea25f48b078
Date: Tue, 06 Jan 2026 05:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767678833
