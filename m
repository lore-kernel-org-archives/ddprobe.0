Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2345927381F
	for <ddprobe@lists.linux.dev>; Wed, 24 Sep 2025 09:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758706794; cv=none; b=QhcuEw6RKJl24859yIUPTt3H0SIM0CaOfU1wI4QiYuHE4kOhke29cON3sTzOpPRMaxIgPeXdB38Wr87WH/l5t2tvb7+2Qpr8AsqMXTOzzu05P8y7MkMGPyGoxRySq0a3yc+3JMnVm/u+Bwz/doQq6BWPhNduZl1c3H18vi1u3wc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758706794; c=relaxed/simple;
	bh=WxqDEa76ltgpynU84+nvZD5QN4xkgzi97V1du/VHtCo=;
	h=To:Subject:From:Message-Id:Date; b=n2p+dKOtimxXCf7jvrlHOS+WJpKeNiFu3leG2JFWvD23421gZMRzrOuNwps4sMqPAeAOFBiUxBmNRnxsmMo7nEo/6DrUWMLZt6eUPSoQ3KCM0GPezMuZdon1prvtkAWjRKGIUTj4PB+dE3TD1bHAnRKrRJkCeR5mTkDK3eGxw+4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hxBu0cWx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hxBu0cWx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1E70C19422
	for <ddprobe@lists.linux.dev>; Wed, 24 Sep 2025 09:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758706793;
	bh=WxqDEa76ltgpynU84+nvZD5QN4xkgzi97V1du/VHtCo=;
	h=To:Subject:From:Date:From;
	b=hxBu0cWxSmZey1fGKvrmmw9/OCwDDH3K2L9QIxQMbgqpgAI8l1fN8FjJAA5SLoDSD
	 xcylBFz+1z6efIaghzOgCYjHfEJ514ZoOZIT4fpv+3+ux6bbuWh11QFQWpU3HHSZsS
	 GrrkDselGJRIpEpvj1t22BBn2LNPJuJeCA0a2L/WPtKZ4rJQsl12Cbn6Nv0hM/AKGN
	 nVRp9Kg3qt1ixFKiYXaZ2VNCqiQSIQ8VxHU6LyD0spJAtXwkwx2OCWq+Dwa6HBAb20
	 CUmTk2ayyGJXUqMO0H4EokKIauKsPAaQ4dopyjP8qqFcXbHzS0IBaTd5WyBDE9mxDF
	 4TAwN8lIYW2Yw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90320CAC5A5
	for <ddprobe@lists.linux.dev>; Wed, 24 Sep 2025 09:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175870679358.20864.2243412853885088314.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4e6265fd46058dea85ce0fccf633a554883c46858758fe86b998ff26974b3f73
Date: Wed, 24 Sep 2025 09:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758706793
