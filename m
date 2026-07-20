Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4EB9F3D9690
	for <ddprobe@lists.linux.dev>; Mon, 20 Jul 2026 10:08:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784542115; cv=none; b=t7FhpydRIPRtwdiFQnITfvpz4mmXkiBLVJ96p5iquhlM/rcfTH66Jp53fSceuQ3olv2JJ4uWQPcv0cCEyCQ6IqAzmRcz4ZqYxYD9lRdEQ4h0mqnTE7ZDfjnneacOXGYTdm5QwLNT+W6VaY7F5eQ6fxGvUrJGhf2T3EBv5bxHyD8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784542115; c=relaxed/simple;
	bh=RO+o+9TLh/Q38xmuVOuZm6vB4q8Xorh57YSPevUIoWs=;
	h=To:Subject:From:Message-Id:Date; b=Xs3T+SOfTdCPT+dhKAfWL0fJCdkEf50CVkWUQ3hMTs2nKQlb+MRUhxN2m9Nvifq0mK5zDtNkNkl/sEcubLs+z8HUzae1Vxb8agPwPlcGUigGBbMRGG8AGtr9OGEgiJb8UxmBbdx5LXsq1pBoQS17IRRZtaPWt1AOyCvzalcOTMc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hTZqfkLD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hTZqfkLD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D44A8C2BCF7
	for <ddprobe@lists.linux.dev>; Mon, 20 Jul 2026 10:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784542113;
	bh=RO+o+9TLh/Q38xmuVOuZm6vB4q8Xorh57YSPevUIoWs=;
	h=To:Subject:From:Date:From;
	b=hTZqfkLDM8utx7aRub8Ba4WDiYPGW85EB7h6Jsbdd0Mu74JP7jgArWZnUv/CNNj91
	 fa6dvpBL0GU8zlFqXDhP14FHwdDtAHt+Sx3B6f5QqXH2TSL4EyznaKl+PvfaPCkhtW
	 JfhZ3L0EM3/rDZvZVkaqPCLKAGq1+mrwal7KUlQKabk78IR5QC9j1Pe3PMI263vudp
	 w3PUWev3U+4tZzTRvRphKqinpfaUbo/ykhBDcXxsTwDJVu12Vgw1VZZF9QaaFBeyID
	 K88M4ogfuafL3NKJrBJN3a6oylCOVRr3/43jOYdMvOxpciOfr0JQcYV5dAHDtAUu5R
	 /KtzhpH8pWZEw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF20EC44529
	for <ddprobe@lists.linux.dev>; Mon, 20 Jul 2026 10:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178454211370.7084.14224592246928689220.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1df0b9e7bbf0507dbabfe1c68523e911b34943ac901a4eec6607164f5acdc4ee
Date: Mon, 20 Jul 2026 10:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784542113
