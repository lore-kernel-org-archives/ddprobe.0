Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 160331AB6F1
	for <ddprobe@lists.linux.dev>; Sat, 21 Feb 2026 13:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771680294; cv=none; b=fOnqsQ7rIR5LqkGNnZ7s5IePOmOsCM7qmgtImhL6H3mTyBVF0cd3KDPjdbJV+dnpcmNYsqWn4NJ+n54zoWDhhTrpjYZSbOSbHPj2PwpLs4RzoDgPNIXeCEB9fe3J/6+yA/FPE6lRg/NzbJElzMiglpBOK2Yjg27QhYVdzXEhZmU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771680294; c=relaxed/simple;
	bh=QWdGj5/PjVea49FoILsI6IY08EjJnY1zWeXfAgOlGyw=;
	h=To:Subject:From:Message-Id:Date; b=QosatH+QoWiwjN9STPTR7MSX+xB0yuL5g1U72GmAflOdGGt1PUf0a7G34qviC08rCKZlNRrHomMFYzbttgDClubtdNotwg/jH8fUDoZu3oRrRL/S1wSo55Xry4U7rXINaSG9FoDyxK4AAhukaOu1NHZvBXgwppPKg+EworT044E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=m5hD92n2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="m5hD92n2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE9AAC4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 21 Feb 2026 13:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771680293;
	bh=QWdGj5/PjVea49FoILsI6IY08EjJnY1zWeXfAgOlGyw=;
	h=To:Subject:From:Date:From;
	b=m5hD92n2wN+6auOn9txbOvYUOALA/ohDRYarzS9VkYOJ8pH2HHJSZ1jbh0nmhwLvg
	 9e7S9c3PKvbN1rFF3zDU040Pg0sDFX7RsZf+j76EHe/TPEYc4YJjCkJafjgvuMaqQL
	 KchXqXdgmPRGGnBBFAK9WC+ytbIleFL5/ef3GtROiFMrvFKBhTg1gji6+/LqPWFabm
	 iB0lVnoGWkLrDx46m7dMcyED99h8clGNZ9D5r/K+OSMqJxuFEGk+lRFXtMdWrdHN4m
	 Z8rCfN86dqm+nG5RImgfaSZlSsuHJ4C0856skyhTTDCQnOzjm6ObzE6xO1u86Dh9h3
	 J+ROvy9V/iOfw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96D7BC61DE7
	for <ddprobe@lists.linux.dev>; Sat, 21 Feb 2026 13:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177168029359.26628.15812509864441362988.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: da2f0e4fb65d7760727f501ac867b6982e1154665a7973e3e08a23a42aafa27d
Date: Sat, 21 Feb 2026 13:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771680293
