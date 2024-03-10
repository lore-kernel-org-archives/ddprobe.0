Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E60582B9B1
	for <ddprobe@lists.linux.dev>; Sun, 10 Mar 2024 14:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710082097; cv=none; b=KnYn88bf9ZdT6NDzTrR2RcfdUTUrrafqNhuHGs5QSfdNINUo2wBGcslUmYzJtKUeCM08fTTMmB0GOmIX9gSg4gUHgixX3pj26JbsViBVw+OwGa4Ve0F+efrpRtVZpyKYGQhPZ30bmgNsDIT4VrJ/axdDaz1XMD2QpWQ+9T1mlJs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710082097; c=relaxed/simple;
	bh=Kts72v4lrAgwfyJ5XIWyVFI0ie20yJO2t7aSOXxFfT4=;
	h=To:Subject:From:Message-Id:Date; b=oWFSHJl/r5T7YSEooQb2pZVOQZvaan+/uIxjoc4kuJc8QEdR/28FBCtqTBhZVrfVeN4xYDcoqthXhGTHsY87glmY9AEDvjR5og+kRp7M73hN/RrWXpJK1JItXpdZ52gJFuvub/SaR1KVgql9Gj8pyvlIDc/Q+Twu/yHtcgauc7M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=B7RHPZX2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="B7RHPZX2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 82879C433C7
	for <ddprobe@lists.linux.dev>; Sun, 10 Mar 2024 14:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1710082096;
	bh=Kts72v4lrAgwfyJ5XIWyVFI0ie20yJO2t7aSOXxFfT4=;
	h=To:Subject:From:Date:From;
	b=B7RHPZX2ZSpIxH3FedKFmOqO3S+zCRUDrX3fz0trEMcmh6oFS2bNdZ5AiKMLFpDoc
	 uoKuHhDt8XbByz0QhYFGjuB7pmYLN6dZrXeadyKhT7LlRnu07CFnkCJQQ2QQeJH+Nd
	 g/0b/KFo8rXxhVpbw2nhjNDSO9ko1b4NngjIWAedwJydrfzCt0iOETTto1HHdeBACJ
	 Ld+y3XG7oLEN+JtY/P/I0a6tEwrfmkhFe/lb5OFNDxYbiCsnMIHsidAyYtYHMR23Vh
	 CUCW1YsZqgjVjsaQh0mN9/rdmTzKE02qm3gTbAsVqz5Pz1qXtrj2UgOxbEk1GbrAuH
	 0qnu6qB05ksaw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 67CB5C54791
	for <ddprobe@lists.linux.dev>; Sun, 10 Mar 2024 14:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171008209639.26066.656280622114553530.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d214f156a59f03ab8fbfc99b0f82412ec5abc808640972748c3722deb9cc156a
Date: Sun, 10 Mar 2024 14:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1710082096
