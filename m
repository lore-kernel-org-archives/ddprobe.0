Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37395635
	for <ddprobe@lists.linux.dev>; Sun,  8 Jun 2025 11:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749383394; cv=none; b=QvfnARftMFKdVYu8aULKPjIF7kTrurVLtPM6z2BF+eLVAOKcsxO3fLp6l9OAQLuGhrfeJL5mXa0F2g/jq19MWqMPpYD7UhFOuY5gV3I8A6jSzTap+VPqUHUwkx+Ix65SYHfu5uTpsXVZnW79Qd/J0FqlEdBC9GXZHp3C7w1esKY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749383394; c=relaxed/simple;
	bh=DXizC9o1Lffp0UiQ/Nkn5+/fuqHDbOdr2Jq21oGwlkQ=;
	h=To:Subject:From:Message-Id:Date; b=DydvsL1AwcjTZCf/JM4tHvkF+yEL+AJkPTaXwYJ0AUJIVp1QAaFK/1xYmLBPkhUeNSHtvRYL5mQwb8/GwnK1+NbEZPUFuQbqZmFNEJVq/YILV3hD5Fko5r26O+VS0mz50bd9xCnFCBXq6ByCTu+jl7cjJbUzCDmFGHsVgrvPhMg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=F8eZOoDR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="F8eZOoDR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A11B4C4CEEE
	for <ddprobe@lists.linux.dev>; Sun,  8 Jun 2025 11:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749383393;
	bh=DXizC9o1Lffp0UiQ/Nkn5+/fuqHDbOdr2Jq21oGwlkQ=;
	h=To:Subject:From:Date:From;
	b=F8eZOoDRD8XWifw1bBgeNWZGA09gdJ0Pnsz9uIcZr4HoTYsEgFOdiGrdqyr+nQ2wh
	 bB/upi/1ZkkC/kgEpWaZV+QmlxTsl8JdW+OZTF26IxZ+KHuEjXVll67qcyT8Iv0f8R
	 d5VG/KEqTwUQHkNLx+Dt+J/WGdF1tjkvUc0WZH23Pq4TZwpFJN04wiTKuo13+lVppP
	 VnEEh8ERhhDbvFVzcGcp+ZUer1lvMPc3zToq6jaQh2UdtIT1YwxBND6T/h8jE0ldDB
	 oIV/Mo0wfITdiZ1QPNeQ/YNWfvPQSvU51n+9R8PCciISxOivLlp9oDqyaf3tqjatbH
	 Vks8Bc/Iz072g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92DEEC5AD49
	for <ddprobe@lists.linux.dev>; Sun,  8 Jun 2025 11:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174938339357.7369.15457087560395809630.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a6254579140b4176c63900d267dea2b3ee0b8595a47aae706e7d2a4fbecb7d51
Date: Sun, 08 Jun 2025 11:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749383393
