Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8030818AF9
	for <ddprobe@lists.linux.dev>; Thu,  6 Jun 2024 02:27:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717640843; cv=none; b=D8hOR7B1CnlDNbh0HcGOf7GNiBLGEzD94dwTH2fi8gAqpRtMwc853O1QFBWF47Xo/HdZrz/a3MNRISWtm/yfi/lDGdHDb/DUJ8ofRQqPqIg/H1E3Q/3d63ynYbZyneHvB0pWrD9ihXIU2QpvYpSIaAlkqE8HZtrya3nO4srtL4M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717640843; c=relaxed/simple;
	bh=Ms2+NgQncDNLsRpriZ9SnWbXRTKn6qDJt8mMYvyJPF4=;
	h=To:Subject:From:Message-Id:Date; b=KCRKeZGu4gkNa/w/dVtdrSOOWe2fFjYfzpcLvEbQ6u51TnYevX11BveRCYgwFzSlDdyt6KHl/MBK4Etdr9pmNkqUus2JfZC4RogMptzavs3apxJhB5wqDMTMzqgN27HoQ98Mv2H1F+TpyKIk5+ZM51ZG6vWnFEEPoU3mJRuckfc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GkhFfu3x; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GkhFfu3x"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E086CC2BD11
	for <ddprobe@lists.linux.dev>; Thu,  6 Jun 2024 02:27:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717640842;
	bh=Ms2+NgQncDNLsRpriZ9SnWbXRTKn6qDJt8mMYvyJPF4=;
	h=To:Subject:From:Date:From;
	b=GkhFfu3xHgU/hB9cNh0Tw2Kle3VeCKkOtBPgzXffwXZ1hD7NnHCoH7iKb+wN0o5Fg
	 PbNVeojKJBWnlwrOv9nm2b4uJCcPXQMPouIt6du5xAWiAvdRjnaVRchEtiG/nnEfUE
	 FpFBblqyvh1T/bbU5Ds+vIQjsF2+p2G/Mdy/TLe8pAq7BMV9mlJ+RsUxg8sN+zcGmA
	 wk7SHuGluhi8pNmlZDzUIv9OWpE/vovBdO7qkP0vDDKZd7gvwMag9kv/dt1JWDnVDt
	 F1UH7HcXemyC+dRcYz+HBP3LD+BuOzJ4D+ImCEnKC1eHOSUtF2yNzn+XATqsKNR1gl
	 Jb4uSbo0S9eDA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CA40AC25B76
	for <ddprobe@lists.linux.dev>; Thu,  6 Jun 2024 02:27:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171764084281.5870.15529080133805509916.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 88596d819be843dead4f9b240a53d68384be89441befe9ce4d21ffee85d5645d
Date: Thu, 06 Jun 2024 02:27:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717640842
