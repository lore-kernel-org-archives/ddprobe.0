Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 367511C37BB
	for <ddprobe@lists.linux.dev>; Fri, 16 Aug 2024 17:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723830954; cv=none; b=RkFiTHf9hhRgTFkowwSgWk2J163q7bCKGhGQnAekRsCkS23SYWpbymkjKGc8oTv4ih9yTYh42SpRX11QOjLsP4qSGh1CMLjBZW5LabMS+sCISd4316VpHDHpIw5f7Xt5DMkzTbjMZNeTUta6Ro7WRzOnAZMgQi9s2E2fHKigL1w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723830954; c=relaxed/simple;
	bh=IBCfph0fk5w/mNX6kla70NUAIiYBjs2ls58Z8RvkNTs=;
	h=To:Subject:From:Message-Id:Date; b=gUxmHb9rmTIy0Nd7qMPbemNW8JVW2ilUG7mF12lRO1EKmQyvABzODfee07aa9tLZTt8sKLXeE9tvIrSSxIK0U/R+1W6TUtv9Xx2Djn/BBpVoilhLZMHxxOqqOSVEMsiGn4zXvwEB/vJKYDAk10R1izYUg6g7ULdpBELVz92Vjus=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=n8NsubWW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="n8NsubWW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2CA4C4AF13
	for <ddprobe@lists.linux.dev>; Fri, 16 Aug 2024 17:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723830953;
	bh=IBCfph0fk5w/mNX6kla70NUAIiYBjs2ls58Z8RvkNTs=;
	h=To:Subject:From:Date:From;
	b=n8NsubWWHjpvOfNsgRhZiqScYvSlVfToKtWx537sD8dPf6oQ1LdOU37srEoCjqdRQ
	 ceca5eTvz27aNoyAnQDKLqXaulyZLi6B9lpUoP/TIJCh6GtZZXAvHKSQtPJQZ4Y/sb
	 ZXuFdP+aCOGPLNRXGUFf7YStBQ7aPDQcE21SBOW1PWRIdVdJT74nB9WHBZud1XpfGM
	 vtb0VRiXEHJLjDZ0J98Ko4ThK+GatJLY1r1igD35HRqIm8VThsYwIEw9VXS5byL6yL
	 w2X/v2553c5gxRlfMBVOyxQ16s0/m68+BsGYcgjggfH9pig8q+wIVI49PdNKJFdt79
	 V3z8/+1uFm7Uw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92A8EC3DA4A
	for <ddprobe@lists.linux.dev>; Fri, 16 Aug 2024 17:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172383095359.3243.15632629066416000239.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b69b786ceb4c1b79adb1a02cd9f6459c07925c3769c3b2cf561ae7726f252dbc
Date: Fri, 16 Aug 2024 17:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723830953
