Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 54715225D6
	for <ddprobe@lists.linux.dev>; Fri,  6 Dec 2024 08:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733472954; cv=none; b=cfrHxPlrHNDLg44Pt6w7bgy3z6dZ96/iOykocCN6Hmq1vOP4BsTanEXUiP/QROk6V5kcG9SsfFxbTtRXMuGzWwTA2Wt2os6bYhEq2dv61jyHRJ8mKmRDkNQPGVrkj8RBFC4mAhwcNAP1ncZ2GUEYSlWLGnX6eG2VGi6rA9iseWc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733472954; c=relaxed/simple;
	bh=K592R8SmWSD+wj8uajagBSKoiY0OOsFodvoJOMHF7o8=;
	h=To:Subject:From:Message-Id:Date; b=G//PxFQ7iMlMQlnDjeyJiwJDVbzgLV+uoYsJJOJt8QXFsmzBoKjqeH6veKh9Nye29hsGbVbrf2IrEARvWHgPm/lqQqZXTAAQkgFmthZKV+bTjcJtq6A1/F/airuTl+AshPyzSEwXZLQjNgfu7BqG0qxQkK+box6oY6oQ0/yaFOk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Mvl7gktE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Mvl7gktE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1E6EC4CED1
	for <ddprobe@lists.linux.dev>; Fri,  6 Dec 2024 08:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733472953;
	bh=K592R8SmWSD+wj8uajagBSKoiY0OOsFodvoJOMHF7o8=;
	h=To:Subject:From:Date:From;
	b=Mvl7gktE2hCFndYMSpIHl3B68XsoE043tfgvWVXMZUliHNPHMDrTM5RSBATMgfYAy
	 EqVYbo4XggCY9bBmfdDpzizqS2ic/aAME41IRIXH7GsX6TO8NpjqyAcHUzKi+6AB7I
	 lNFo5c9PBXQkhI3YgRgl0kFgtOIpOhtDQ9b2EljJ0dqhoE+QiAhhIjIfhzFHBZ22GT
	 SU4WAsIi3F5xEAhqooz6+5UA0vop/8s5Gx4NIboL7T7jnj9qhBwjmY+xSKTk4rKoyX
	 kUhOqPv5oQ2YyuR7t0/MduntfZFXj+xWMfcYhdA17tkEbjswXpvY4D/155D5U8HoN7
	 NdCspzDoK5SJw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E434E77179
	for <ddprobe@lists.linux.dev>; Fri,  6 Dec 2024 08:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173347295362.26952.3078803027495099309.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 62b864345ef91bdf0190a5974504a6a196260b42116c82cec03e8a11ae379389
Date: Fri, 06 Dec 2024 08:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733472953
