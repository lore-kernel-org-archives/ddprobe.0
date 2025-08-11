Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1276C311C13
	for <ddprobe@lists.linux.dev>; Mon, 11 Aug 2025 22:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754951994; cv=none; b=Nt3T+n3LLr1rWwDxIRoRCZGEBpB9Kp8c3V/xsOv8LHRuEvOGFG7X8OxTyctlD2TGD30dLVT5Zu3YNepKnebOW08DYjFFMfIrfkhXWLdGpa4gspdGLKeGPoqtLJCFxwz2Wo05YD8JnOKF1hbXXQlzFx18ygKEwc4YT78EASTSA8I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754951994; c=relaxed/simple;
	bh=lvl9NTP2DVDo0fFM5Kqvh9FGpCi51ahZcrCEblzjjgU=;
	h=To:Subject:From:Message-Id:Date; b=KsfinCNeaHh7rlaXAKRbfA+Sjt9lF9YSv5I160/DB7NCHClY08K1hvoSZpKmK+0IWLxlEB6Von3je4NpLZQEt7jOcOdb6OCv0bfjMxKCCeksunR7vKxjO2iGqMZycuIqLXEwk/rAvAX3LqROZSRLJbKH/qhRWWUDN9tYtgqrU5k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QI6QWhys; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QI6QWhys"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FE7AC4CEF1
	for <ddprobe@lists.linux.dev>; Mon, 11 Aug 2025 22:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754951993;
	bh=lvl9NTP2DVDo0fFM5Kqvh9FGpCi51ahZcrCEblzjjgU=;
	h=To:Subject:From:Date:From;
	b=QI6QWhysFe1ZF0+AfN+rP7ouHRRAeHioC3AeSTAtVSdqZ9CR15pV72OS5oSACg0lW
	 tAPcXr3hSSlZXosDCS7FYR51V7U0MxPZFtJpObVTBvizMOwCUoIi3jtvTl+Q+nD/RG
	 rMMtpbzIiCwRpVy1VgJPk/M6bG1MZefdam/BoTLYJ8RLCj966yf4ySfpO9qlg922rC
	 hLWXhsdkq7t39/3+dFz+ZLOi4yJR28VtITkt4c7qYBw6fg04G8NDEKpJbPKl3/ymGy
	 l7IuXd9vsVRJZJ6rjUlFzbL+BgmmtE3CCzIISGZ74ZC8wAuEHCGXUGcnKCHUYp1Hk4
	 1CYkodgOBthFA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91A6ACA0EC4
	for <ddprobe@lists.linux.dev>; Mon, 11 Aug 2025 22:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175495199357.19773.4868231242205778238.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 35c8025c9849ddfba0672517db349ed576e51483b142933504845f349a7b4acc
Date: Mon, 11 Aug 2025 22:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754951993
