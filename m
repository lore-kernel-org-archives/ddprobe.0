Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FC45128819
	for <ddprobe@lists.linux.dev>; Wed,  8 Oct 2025 07:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759909794; cv=none; b=amE1ayfhF1tnGqXB07dip+ohkixb3UuEHiGS+WMZ1q2zNhzeeezNxgu7+VGrwor2WVb1JJpt4MCKCCN4ZTtu0YJ+Xsq40gCvaLolg1GN3UO3mWS4MyQTihljBU/Ri/T5JDwp4V020mbrqd2V0CG9w2n/EX1nKJBfSeBPaoNPd5M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759909794; c=relaxed/simple;
	bh=y6DJ6DktY8dXsapjh0Y4SO77fzj14289WJ3c1FZCu90=;
	h=To:Subject:From:Message-Id:Date; b=W2azZTUs7c7djzAwwNA9Q3NbrqCbqS0gS4hteb6baDv491D2sUiZlo/psfQgMnxNOH6F2nNQ+GnRPcqrkNDpwd6d/L6ggbfQuy46/Fg2/UsasoJUhRB/d82iT/cjW6mk5ZsHDoJMciucaQeiBgOhdpb6iVE0pubJJP6oxaHjgvg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=an/W8/J+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="an/W8/J+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C697C4CEFF
	for <ddprobe@lists.linux.dev>; Wed,  8 Oct 2025 07:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759909793;
	bh=y6DJ6DktY8dXsapjh0Y4SO77fzj14289WJ3c1FZCu90=;
	h=To:Subject:From:Date:From;
	b=an/W8/J+XHJwUPA6C7ydQ4P7EjR1rPTWYjf0CiusiDHiIjF3MZlQtWM4c5rOZqz/C
	 CWTOtLqZQxTLhFUPGDHUl+uxaMounOsftLlDf/yVnhcf4a8sNdb/zzdLxhASpP3A8V
	 DqJoy/9dbKjKnb90lPY6DgzrSl0C02YBARUL5bLR4SfAEWf854fpFSJhNxkIItBVaZ
	 sKRYuHODN8BIbqPdq1+tnirrbLhD+pBmAL/2cvLPT94FSDk5wAD645sw41R0rSma5R
	 mqC8nRKqTPA/HHq0M3u7RWLEv3m3P6BacKgfShSUy6QN94taWXxyG11nv5ywwXw6Ju
	 UEujj+Z5g6UIg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F70ACAC5BB
	for <ddprobe@lists.linux.dev>; Wed,  8 Oct 2025 07:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175990979357.24402.18009127189224619807.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9a4a2d94aeb1859e134e2b1685347b0b4b4092720f687bf52493cacfb6d967d2
Date: Wed, 08 Oct 2025 07:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759909793
