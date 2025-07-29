Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33DF42AF1C
	for <ddprobe@lists.linux.dev>; Tue, 29 Jul 2025 08:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753777194; cv=none; b=eUVPzNBKLHUK+EWMid31w09vZChtJYByVe1oIX+Is6/7xaz7PxfKjAgKnHKvnwtPW8bX3utroHepwWQoPrar5p1YpZ9232WFpbgcaXdNsf8l34S77iZ+q2KJAsMX5ifhSi6PvCAijJbtm1t6mP+CB8fSC6ipBPQ/hav19QWNgrc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753777194; c=relaxed/simple;
	bh=7pP6Xqk2LSjsGd1T7WLNmbhuoniQv8y81+P9GmlmWn0=;
	h=To:Subject:From:Message-Id:Date; b=YWXBhtlpSaiRWYnY6/j1YGaqKLpNiE9gPi0LQJI23GRnkMNFFAkqvNqSHGWbC7MFyhuICHzvTMQGC8qOubpfWfv/PrSUNYDqaJecB+84Vttq48+azzGxBeeXE3c4gqL2YjDt7PdIp2ZPQpJ1SjRaL8UbtQ7zgkgGnem06CfmESI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UgNJcKdm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UgNJcKdm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2EC2C4CEEF
	for <ddprobe@lists.linux.dev>; Tue, 29 Jul 2025 08:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753777193;
	bh=7pP6Xqk2LSjsGd1T7WLNmbhuoniQv8y81+P9GmlmWn0=;
	h=To:Subject:From:Date:From;
	b=UgNJcKdmCpa/ZbLmLT5ufw1Ur8C/y1ZuRQLRwNlsimIN/Urj+HnJJyy3i30BFZdBJ
	 cMfH06VUbpXla/aXccwqoPD9VQ2cVx9SN8ZpNsi2VH8ypmpSKNNR+VLvBf+2BeMPr9
	 d8ey65whZoKD2C/SYh+7kLEBEdTIPeY7bawQjr6gyBVl9cQlsruRRxj1CwE82PkwcQ
	 fNUAUQezsIA8pXeokg18GLnipmytmKL+2li4Sdd1F75syzm96RqXNdFsgOsvvRLRR9
	 MqKym6nrIHS57xdkoZceCMp4qhLiJG0EnFGxND66zj9NPP3aGeQbI+dPD8Wf+t1l/w
	 vpRd743WwV/oQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91531C87FC9
	for <ddprobe@lists.linux.dev>; Tue, 29 Jul 2025 08:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175377719358.21324.14277826165372837833.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 18b23562133b17226d6a79f82c7966d2c3ff189ef3a4c7852cb94b4d2fcc64fb
Date: Tue, 29 Jul 2025 08:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753777193
