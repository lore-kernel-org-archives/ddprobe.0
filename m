Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22C55295517
	for <ddprobe@lists.linux.dev>; Tue, 29 Jul 2025 15:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753804194; cv=none; b=qMwwxn0spcap48LbEt66HqgySoftZ0nt82U3WnxWIdQquh12XTkTqEhva2f2Er2dhr26C9iKPZT6p+lTmnBFHPk+k/99G3/1Wn0c39c7xypV+GfKzKB/3mtR7ONYnFEl5u89zAkHndIx0RIQe4iKPIOQAw1fnL5xPbe2AwG4M3c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753804194; c=relaxed/simple;
	bh=HoAErVOmpjgTNUZfyppSYkjLffHNrWKxI/MjdkqTMEA=;
	h=To:Subject:From:Message-Id:Date; b=hWRHMg8+LJdeMi/No1GostLe5qLeiLSeUSsozs7LgZh+OrbWtQoZ2Kk8MOY1wgm6DWyTHNV/6uebkCQslZRgys0Ch2SlJOlizlR+WHCX1SXQNi53Ve6V9SIlEIKuyyjJQN5fhX1NLQIpyAeuxi4VKeVAoueKRp2WzDzrGpzrA/A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gyqpweD1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gyqpweD1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0E74C4CEF7
	for <ddprobe@lists.linux.dev>; Tue, 29 Jul 2025 15:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753804193;
	bh=HoAErVOmpjgTNUZfyppSYkjLffHNrWKxI/MjdkqTMEA=;
	h=To:Subject:From:Date:From;
	b=gyqpweD144qfC1AqrkpPucS3WCrJTTzoIEB4bFpm28FE+uVStFsBI5IOw2rc/3xTU
	 iAx+IGvk2YE4DEpqG7B3iKU/h+4aUo2dUE7/+6q2JAr77aPRthT6pO3lBR3LPTrvMb
	 4HVkHKES7Re6+1ViWdrrPQgxfeNujiqh95cBPG+ewoa8ube1+SUgTt7SIEcRUfo3RD
	 DD3w0ZAf9aWOUc/brd3lGAY8c5pqdyo0wBfKqvHGD6c036KFnf6/DLlZKSUiLjWzvw
	 085liOtMOpBTc54JWA+zpBJJ7+8pf2/7QIEvxqTRRxZGE8gNMpbeWYcFrfz9YVPoez
	 yaR0aAhGYDlRQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 908CCC87FC9
	for <ddprobe@lists.linux.dev>; Tue, 29 Jul 2025 15:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175380419358.30973.7128582725260763035.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f859efc5e1a2ce263c02f1aec99a4bb7cd159da7232f0390625f6f6a8378f85f
Date: Tue, 29 Jul 2025 15:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753804193
