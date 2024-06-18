Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8D649159911
	for <ddprobe@lists.linux.dev>; Tue, 18 Jun 2024 13:49:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718718563; cv=none; b=JfLJv46jHkjcak1S+fAKksU7Vj4v59nQEeSbXxgiPEW14doPaiz2oD4bCaC9CUXJ/TCoSiIJxpWMFlo390pbbD7x/YjKvo6HcMlZIiZCdeUPgI0cuFPNNLd0RwaCG9/jJklPmlIjI4xAfXy+Ra1a80p4UyLiF8X3dQM6uoScl4I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718718563; c=relaxed/simple;
	bh=1WDuxc1d3Eit01/SuNc+Knmairfd2z7fhvqy2NtZozE=;
	h=To:Subject:From:Message-Id:Date; b=Hg8blUpRz739SJYO19eKS8Y5TFbZpy2KHOxu0EGT/YcboqSYdT3dyXYYclspE8gt8JcW0e0jUTha06EsdKTPyNJp/bVLWSx856PC4oqbUqYfBoU/wlZsY++2Av7NEgEKLO4qQ40+CnbHP89XAHdPkGWRx5O4k3YM18R2TPyEwNA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HwNx6dvd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HwNx6dvd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 0B163C4DDE2
	for <ddprobe@lists.linux.dev>; Tue, 18 Jun 2024 13:49:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718718563;
	bh=1WDuxc1d3Eit01/SuNc+Knmairfd2z7fhvqy2NtZozE=;
	h=To:Subject:From:Date:From;
	b=HwNx6dvdgsKO3MP+wslp+r2+0c1qTydCIymxD/QBXTsIcBHxaLyng2ktroG64o5xG
	 8tpYN/SgynlI6mhikq1B222RrzLl9dC+iddej2KEdMiiS37JNYsYSXEpoFuSiAQNRW
	 LDZOz/LbPVVlufoyOd3e7SSL9sfP/tnLqavNyhIzFzvs9Z3sTZ6dhJFAhJ72iS3g91
	 uT8HO5Kmw/GMAT7HwrVoYn/Wf5lupOZJPFql6ykcWIulEPY2E4HTcK1FkBSq52RZ2r
	 gc5OvYdTKb+1Q4uQ6qJzwQiH/fMqhNNd1SvoWN5bX3PR0a4HkQoiFAg2EzUdHrBt4q
	 YK3Eov7nV2k1A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DAAD6C2BA18
	for <ddprobe@lists.linux.dev>; Tue, 18 Jun 2024 13:49:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171871856285.7227.10317594652762240313.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9d256da485e74ccfe61ca61425b7d42f7dd6ee44dbde62c62f61c42dd681c6c0
Date: Tue, 18 Jun 2024 13:49:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718718562
