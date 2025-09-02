Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 295B334167F
	for <ddprobe@lists.linux.dev>; Tue,  2 Sep 2025 14:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756824594; cv=none; b=q60b3BWI8zZB733rBcguRPlviJzb0E+4PBMB5ZA3vYg4/CUypQFK3+Mj+mnb4+P3P1RVdzKGjKLBnoHcziovL5F7lO3eSazkugiC079sW/ecqam+ZBYFvie20rWiy/UQ0jJFeWa5qjpDcnT+i7Az4hbudHxVzVTaNSUnLllsvUY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756824594; c=relaxed/simple;
	bh=SBFTo7Myl+qOSFqQE7RbqwEVeZSPww/F+wYxMb94STM=;
	h=To:Subject:From:Message-Id:Date; b=rUMQV6HSbNUY9j3rObcbmuJFS4dSwyP/875PBS9gdRtKQ5uvl3KW6aZ/homD0vC0yjJnR4vjlz/hYXV5Br5xrXl3rdxv+PuyRhqHEwbI+Ts8B414sNG9nhUg4rzEayDfuZIQhVl/crVprqbq8bLcnvwHxPp3tn85v+FRv4EI6XQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HshMn+cs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HshMn+cs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6443C4CEED
	for <ddprobe@lists.linux.dev>; Tue,  2 Sep 2025 14:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756824593;
	bh=SBFTo7Myl+qOSFqQE7RbqwEVeZSPww/F+wYxMb94STM=;
	h=To:Subject:From:Date:From;
	b=HshMn+cs1DV1ZLBwdlo1AmXi9pEAAMABMVUpzb5+tD7K4rzF5hHeCGXAqP1WinIkS
	 m/tnABoz3zJesmYHV8RtH6QfAkvMeGfqF/CT/Cm1yIHBfy21Tc0sKE64RWoipPyUad
	 t/VT5iD5a3dXBnjlO+7X/WTqX2UZchbvBnXgWGSLuggO8NUwpQCyQMFG/I6LTGJF77
	 cQxn79oRwnamEOm+XQNgX3CVNcpIprYdYIAXwns/Vb+ky2CNy21SM6Y1oMiXTdt3fM
	 KzfDY9SfOs1XD/soRpigURSZdIam7EU0Im7MJf3PuysQ7Y8QE0uhwSfSvCNzAqDzt6
	 Tsh4edwTnpDJw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9CC4FCA100E
	for <ddprobe@lists.linux.dev>; Tue,  2 Sep 2025 14:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175682459362.10712.5329882215332423700.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a4a58d39fe335175ceb2f2f18540b37185839586e0692aac6723d006beab67f3
Date: Tue, 02 Sep 2025 14:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756824593
