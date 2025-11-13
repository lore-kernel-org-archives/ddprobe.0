Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 121A8235358
	for <ddprobe@lists.linux.dev>; Thu, 13 Nov 2025 13:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763042394; cv=none; b=S9v8GX9uNmY2Iy23bN6P2RnN3fC39SVD868bVXzdtlH5H/MOI9dfAjaeBezEnyHgCxl6Km5/dZ6Pg7/lVzxFK/vgYnXPPesnInjQ40Jgj2rGEckEg7U0IAgfK+Fo7IzNJVoKS2iel+iGSma8G59IzH/k1l0Cf2OOChxRz9hqlMQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763042394; c=relaxed/simple;
	bh=VImczM8PMzXMVg31HG6SugSEv0wu8YTkmMSvq8j0AJ0=;
	h=To:Subject:From:Message-Id:Date; b=pxaB2kdtU6VT2eLK+UFsw9d6zmbtF0a6UVqFhqzErTbo51/Di9LStmipSXRqxTLSpJG/cZFYmHICc2+WAjJBVbJxNlX0iWmjRslOXXYk2NsyNjJ7MJ2EMtz1ujG6TT5q3eGcM4kWle+yfB35N+OYebztCylGlS6CHAaRhmuohMs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=i78yWOWt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="i78yWOWt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EE74C4CEF8
	for <ddprobe@lists.linux.dev>; Thu, 13 Nov 2025 13:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763042393;
	bh=VImczM8PMzXMVg31HG6SugSEv0wu8YTkmMSvq8j0AJ0=;
	h=To:Subject:From:Date:From;
	b=i78yWOWtUVY8TVRXF6zBQUs7AhshzZ9YGAfHFTpbj8WkZcF/DEmrTaPjUmGSJf6uS
	 xXDWbhWLK266/cXyZ/e74E/XpFhRYk1rs76zUaPqaTcTYy4crh39U5EVKUIMeTnnYd
	 DQKlMP0wqpIifuwaDOwBubY+AFqw7Gsxqt2zBlu3jemHeiQvJBlWZXK33JR8S5NI9U
	 5hvHJV36jp6zlOFiwZyxqR/uYDW0dWXxRwDqk0B8NP8JiJv3NbdS1jCNLFjBHeLMFu
	 QId7o2ykBfUQN19ZwigSKSmbDuia01K1/kWc1ck2fCyunjbzownxqqYN2m76YoLCH9
	 UdlU3+NV+YfSw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95183CD4F2F
	for <ddprobe@lists.linux.dev>; Thu, 13 Nov 2025 13:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176304239357.28824.10918269513224253274.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a5b67fde6baeef4f1decaee49b1784a514de8e029e3c2c96994d75b1522df826
Date: Thu, 13 Nov 2025 13:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763042393
