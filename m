Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 65F52152DEB
	for <ddprobe@lists.linux.dev>; Tue, 18 Jun 2024 10:39:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718707163; cv=none; b=etir0kTtxNArlCYueN6IQYXpG07sIkDNTlz3FNFhRrZRxkx6RweQOfcbt6p6QiNz7+44gxY7Ucq6hRuS4ji9ZjV/OAka/cnUP+1Dc0guRxHzCOEzn3vJiPWEO6D6vdKtwIHTygAuc9QWdbvxGYMSmaiQjQsAaRIzV7PSo29MhwU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718707163; c=relaxed/simple;
	bh=tbcs7mpryp80OjqJl50DsHCONJa+BS1c3P12NYu8zQY=;
	h=To:Subject:From:Message-Id:Date; b=pX+52S1ZSle22FhuY0lFpr0FNK+qE/ZVFzMY3OifskoIsL4xs/oqKIVrJQtcttvW1rdRpmW8b4kSSXg8k2fMzPbhM8N3A+mVEtx5eYnokEnd+oOTLJ2byFWEQYGi06Tdv2QeZeNgoh601YOU4yZduiYotiJ3dQdIdu5VKaA6HWg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PKiDW3ej; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PKiDW3ej"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DDC1FC3277B
	for <ddprobe@lists.linux.dev>; Tue, 18 Jun 2024 10:39:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718707162;
	bh=tbcs7mpryp80OjqJl50DsHCONJa+BS1c3P12NYu8zQY=;
	h=To:Subject:From:Date:From;
	b=PKiDW3ejN3Y4gm+k8XjlPRTB0rd9yKI5B8uUOXl8G/gnQjpA/9+P4TWEQrMok//pP
	 gQ5dPB+Jmj2eneljhyVO5jhIlU24dy/8MMYeknmn/oIbOcovDJL9GsVxLNBLhgmMaO
	 TdYVEmw86CXQzM9gAjEEDyhpIyBrvFx5VFJ7EbvHnv0sJTpT55bs10s7iq8dGZtB+9
	 M45OCoBAyjGGO9mRqc17fmviqCp3Gu1Aoy2FPeIc0WyYiKNSrqQS4Y9SuBydHKHsgO
	 zb41RtyULXRKTroM8Xl3UolYrZF5cPKpGlWU4rIJOGdzG+1qu02/wWMa3O2dwWUM6k
	 bcWludwJN7+nw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C6349C27C4F
	for <ddprobe@lists.linux.dev>; Tue, 18 Jun 2024 10:39:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171870716279.8936.579563139370518753.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 94e4f3906b04c83835e258769b0cf35bab8c359ec8f5d5e50161567730a92516
Date: Tue, 18 Jun 2024 10:39:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718707162
