Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C66792D0292
	for <ddprobe@lists.linux.dev>; Wed,  7 Jan 2026 07:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767771833; cv=none; b=BUwPhZ65TkJeKJpxnIHF6lzjsdKfWYdabHL78CNt70njR/LurHfBmuWLvocpI6I1duxb7gEbF1COBct4AKWTYtHfF4zE7ECoaVsRCoNbPXfjiyu5lMGb+84q2g93jG1kLzgVTZzKGEgfStTQsXk9vyfYjnLMGS4APSo1dxKHkWs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767771833; c=relaxed/simple;
	bh=s5dS/CMZxtY7doUc/mcmbOf+xaXjDJNsvSI+w5N4x9w=;
	h=To:Subject:From:Message-Id:Date; b=MbAvwC+6KeAyt7ajV64zMsecDsjWza+YxU3gPXRn5kydNUmx5gk3N+U25b3IPWDm+TWwnaqoNm1qAI74x/hXe3sh9M4obgdSuZ3dD/wFcgDrIk+FRHcrKESsgP6AjCWdnQkdRvnQNw5kOB7CowrRMvp6RCGvGpIBT3FKdQDKmNM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=C+urkbhP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="C+urkbhP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F87FC19421
	for <ddprobe@lists.linux.dev>; Wed,  7 Jan 2026 07:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767771833;
	bh=s5dS/CMZxtY7doUc/mcmbOf+xaXjDJNsvSI+w5N4x9w=;
	h=To:Subject:From:Date:From;
	b=C+urkbhP2WeMxYZPE4xZXN+Xyd9xxdQxKiIDe8RpO21EcDhFD6ldoD+ObXyzBvGRQ
	 oKlqGcWzCpZxMeN4sj1sJBwc+BRaES/aXqzte/M9rzureiTHH49ZzLAzsAK0tshOqL
	 dFZQDCri2t2j97MTc1fkjzB/6Z21b190cAoKO+hPKulYiOU9HlMv19Yv2TvyWcvIrZ
	 21aONxb/Zq6gJpJivJkR6Y33O9DUBRaJ3xgFFtmxmyZU6dOpkkjlRTIRddxdLFGDRE
	 D/30LEONongYSYam+DDl0qqx1JE026HUSWO2BVhZwnIdyjlidTKeM6Lbztrof7vts+
	 iNOlaNX5AWSqQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FC06CF6BF4
	for <ddprobe@lists.linux.dev>; Wed,  7 Jan 2026 07:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176777183358.11271.13815628204260523557.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 576680b8bf574dce5201c0c739eff1e47cb0780322cae65bdbf717a00945514a
Date: Wed, 07 Jan 2026 07:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767771833
