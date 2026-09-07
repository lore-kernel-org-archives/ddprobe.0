Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 595F34508F8
	for <ddprobe@lists.linux.dev>; Mon,  7 Sep 2026 09:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788773434; cv=none; b=bMCFU4ZKBXQ5UCYN8ApEHL137xKkTSOq3/4+nnmT3WKF0TvyxlgDzI8zjldOq7qDtyMiy/hOQ235Su5DcgpJe+EA8fWbkz1G59FthX54jghrdVwI75BaFdfiWwPDPC5VF5Iey6/nUQljoTdfltcB9sICl1LfmraRUnToEUH9SOM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788773434; c=relaxed/simple;
	bh=FRDXwV4FLpkcOR2kgngHtjuc7e6Cwke0kvA7oyTciF0=;
	h=To:Subject:From:Message-Id:Date; b=b03gBsgEpAZOLZ0tUpwJMibWq1JMlWtibMxIgMJ1PDLRTBfgnochfIzBzkfD/vUi3PXG8o3C+TAgaHnIbYi0MPo+W3VjovW0kbqeV9bifL1y3ZRe5rcn0c49HLrA1hl+efhYEEZlXamPW/cg9ccFsX0YoFPjAKzbb6/mmDsnz48=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sjvbE5sE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sjvbE5sE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC0B0C2BCC7
	for <ddprobe@lists.linux.dev>; Mon,  7 Sep 2026 09:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788773433;
	bh=FRDXwV4FLpkcOR2kgngHtjuc7e6Cwke0kvA7oyTciF0=;
	h=To:Subject:From:Date:From;
	b=sjvbE5sEmsPlEl6EfTvl06BlytcD439I7gsiules4Be0axbQ7DjVvOJNGiAAJ+c47
	 oY5Fc10xzu8v2gB/Qy5jBPDCi+AX56NyQ9PPKWkkdGcVyXbYY++/o/6/fU7NGStslZ
	 osHxai15LfKJyOVn40YX8FMxWq4xLGUPc+MNXVxRajyqy0No9MdOWddzup3hOd0EPG
	 qwAtujwc1IJjZuYTEL0YItDtvE9rWBKPZMNpW+2ilYbUUr31iMAXIgXsKM22+el5sA
	 DveoXn4e7nGRjbWxbqbeElGJfzsI6ha/2DqmUM5abUW36FdEuPcj3gOVSsfQ7JV4vD
	 0UDp8p5f2IuVw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B9C58C79F9F
	for <ddprobe@lists.linux.dev>; Mon,  7 Sep 2026 09:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178877343374.19889.14492582937776225840.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c0e6615977ebecac1a79ce6a185ec938aaf1e6ec5f3148c8e4de3f577805d05c
Date: Mon, 07 Sep 2026 09:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788773433
