Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48B6742056
	for <ddprobe@lists.linux.dev>; Sat, 22 Mar 2025 06:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742625594; cv=none; b=u9akySQWaKPMwXRFzlnZ9B8KOR7kNzhhFGDhvDaH9S90Z0RKnYdRDZGa9va7iETJCKXUKrog4Cf4Mn+zgnfvLKiGJuonYn7pwig2pFzzQ+Wwr35phdn7fd69nb4Wx5HJnjFVq3MeUW3iP+CQSemrfJ3SpX+2pczSODIaxX4US9o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742625594; c=relaxed/simple;
	bh=KP6bOlV6PffPf3kFRS8dqR7zMusXcVIWNhIW1WV6BaY=;
	h=To:Subject:From:Message-Id:Date; b=gS17/Xg9qy5nySJ3kJdVYpejuN+P9CrOZbINl2dBtzUTspQydH8vTNXNUznt1XGINZJTpD/xU/96Q+x8p1AXhQTQkROk2P4k1VNFGH+Hx5STamVBDbNIfmhJ1FSTH6V5qcSEdLcnciWm5nJfZtBYUcchVe3VqzkP43hkpXSih8k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qRks6pDe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qRks6pDe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2CA5C4CEE7
	for <ddprobe@lists.linux.dev>; Sat, 22 Mar 2025 06:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742625593;
	bh=KP6bOlV6PffPf3kFRS8dqR7zMusXcVIWNhIW1WV6BaY=;
	h=To:Subject:From:Date:From;
	b=qRks6pDeI63gkkxQYIqqYduVYCax+/KnfNe8dnny/VS7IlheglhKc8biy5kc5xua/
	 zK0L6ltDfrZEhXu/JXCnD/z243ZyjFp1PGG5vhM4gMbqu7t5wybuBDkc4pvR4Njnfc
	 oZiOL2B/L7ygYMxosPMDhdt590rjjB6/TnumoE2HcBxEBNmEuYXh6MdWyTrkWu4gfc
	 C2UZEyYOp25xBSgukBbH+X/QImaS6mhh+UD2EjwrrvC6x+kRFwYfNY+NsRZ+gr8IjC
	 Mr3R6DAye6LCokOFWz3QuHsmpUzgJJk65zr/MSCF6pQsQZ+u9iUxP0TRhN0hcDDWbp
	 fk1yz+XoCouZw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0383C35FFC
	for <ddprobe@lists.linux.dev>; Sat, 22 Mar 2025 06:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174262559361.31172.6682522516870748989.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 199f03027cc8bec0ad198942d1ba570900f32a18aa99cffe4b24ce7d8a22f4a4
Date: Sat, 22 Mar 2025 06:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742625593
