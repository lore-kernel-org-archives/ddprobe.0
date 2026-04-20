Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1144E15687D
	for <ddprobe@lists.linux.dev>; Mon, 20 Apr 2026 11:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776685054; cv=none; b=OMsN42a39te26mmf0nJ44S/HF25DcLKxi+IIm8DBQU0sqB1E4H3cM7D2d7lVd4K0Vdhfiw4JpzMphPsftfP/PNEwCLFK1gy+42SmFhgY6BAufJuVMO+2qOShiz2WlYHeK7xS0IdGqJoWb8avK8lNxarIpFt6QmSkW+1JYsA7Ays=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776685054; c=relaxed/simple;
	bh=Uh57Zxkuyr15iu79LJrFc6o845pJEfUxqDtkh95Q6Ho=;
	h=To:Subject:From:Message-Id:Date; b=AcTCzmmcWRYuySdx3wjL4i8aGxpfPkev3vJevt/XZhTJAsKN/G77Tau1HSJYVeIBptDvDGksHlPDOgFkH3JoCazTb/wTUE6ScU2cz9xMd4IP+FXCwacsRqZVPA8saM9ObnKn7+NVw3AwkosljBI65m/MIu/zZTUxc4Xmn8tR82o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=czJAP58O; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="czJAP58O"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BBAE9C19425
	for <ddprobe@lists.linux.dev>; Mon, 20 Apr 2026 11:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776685053;
	bh=Uh57Zxkuyr15iu79LJrFc6o845pJEfUxqDtkh95Q6Ho=;
	h=To:Subject:From:Date:From;
	b=czJAP58Ody2XRIRqatyYDtULgDuI8sN2unOGsgSuYqtQK8QyzJs26Hs94+YBvxahV
	 y7Vdkb3WMNfxXtvuax9/4sKMBHLgJ3ec/Gb/P9AdQELq4sEGNsZd0E9l/AZPDLAaNP
	 E59JN//lGIlm8p9MyByDLhQGfrS62JRad2OuJ15VH+n325TJBIBSyoR1zRiaUZuK8a
	 AE+jOEWgRBh1p6/KTUJkUFoKOphG8gYMlc1Xo9+9KvpSrKiYLaVyyAFOR/WNwqOyfC
	 vNcy64ORA7CuwH4XuP73G/y9qIAOCj+6D5BhwcnYxv83BhAEG2Xk8LNCbSzIIEzNf2
	 2EFPJpOFUZneQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB0B4F55810
	for <ddprobe@lists.linux.dev>; Mon, 20 Apr 2026 11:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177668505369.16152.7015127842463757630.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cb840c150d6a07c3ef8d3426b7e8cca9713fcbc59d8a4fecfbdcd9ba6ecb89ab
Date: Mon, 20 Apr 2026 11:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776685053
