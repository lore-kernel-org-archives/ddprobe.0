Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17E4C14D2B7
	for <ddprobe@lists.linux.dev>; Fri,  3 Jan 2025 07:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735890954; cv=none; b=LAZVh2NqYf/+N8JgM+BWhWC+d8kBOH30Nh3YruIJl0xnsmafQ1zOea06nF9B0hv4QuebovpwMGRKWt34WqbJIuifsX2te9eZ05KK0HeN3tmuSZn8x3kH5mEKMIGi1kJ6K5937zWD01p2iPP8iDRnTwUSJ+LVG4OVgQZb/j/Oz3s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735890954; c=relaxed/simple;
	bh=YLAsOP9MUUolnvSmKJnQSYtBOJSUGD+zTHgJxbq2rn8=;
	h=To:Subject:From:Message-Id:Date; b=k0gw5XLXZcEBLkC13/0Aya98hyCBH2FhBi02PqbWwRbcDZS+/bRmS2CyD3X9LeGrA+WYVabAD8bdieOHQcc43lFDUD35oRREy+Wp0rpMvWUQTYZ27ZFh+QGlaC+2QvigrN3E1jGMbIVcN/Fl3lrbOv5RITHRrWs3h06KKu7aia4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=b2T4ECav; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="b2T4ECav"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8CABC4CECE
	for <ddprobe@lists.linux.dev>; Fri,  3 Jan 2025 07:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735890953;
	bh=YLAsOP9MUUolnvSmKJnQSYtBOJSUGD+zTHgJxbq2rn8=;
	h=To:Subject:From:Date:From;
	b=b2T4ECav85sWjTKzZMflDQD2Fo5Ks0OaZ6ozMOgOJg++ee/lzW00NwOimXM6MFjfQ
	 A1aJw288XHM1l9BWzOxcX0Zsv9yG+zjDcP0t/nE1tKmOfnzrVNi4D2SK/LsVaXbhst
	 8EBgH0mBmxCjsrV0DcWPgR8rYr3OIOuYfVcR6IcnR+tUnrEiHiUuV276xiarTpDyP2
	 Ca3j4fLWuRRuYKUdyI6xkyPLx3tLuHzUCr6LfHQDu/PUfnqgCTk1WZSKr2vFaqenQO
	 mr2Pavs4nhmYZk+yMBTzV7Oc8XJ+kkHjbE+4OngPDp8nDodw2esSFJ8XTWeX5xPnyF
	 FKOogK3O7oOnw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9190BE77188
	for <ddprobe@lists.linux.dev>; Fri,  3 Jan 2025 07:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173589095358.5752.8032191936043871970.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c213d9c200b8c99ba6d90be763c48fba7c62adef1a33441e6f5a2cdb0937c29e
Date: Fri, 03 Jan 2025 07:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735890953
