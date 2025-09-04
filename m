Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D16D290DBB
	for <ddprobe@lists.linux.dev>; Thu,  4 Sep 2025 22:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757024994; cv=none; b=sLQpDEtu7OSokUyQbYZFbh9hIXQFA0QJ+DfmLvhQMePeUNKRjDiRZ/1ZjJS8WOL0oc1HN7a5Srcoq/mIS4701Ef6lx5RpevIESwOP6Iay+eaMrUABaGMud1182m6D0MURU0Glj4SncbOr+LI6eliKIyUe5+Nrtw+fLaAwsz85Xw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757024994; c=relaxed/simple;
	bh=Q71er+RIFGcOjrMGyEr0lamxcW/3jL6HF5yrd3H1wCA=;
	h=To:Subject:From:Message-Id:Date; b=eiIycQeuVabrMG1ygrqz1Ki5jn6EBSsdYPE85FYPtXeuzne5elcp0dkcTE4xBNK69c2/WqPxLGyF0DVgwipb4pO6DjWToeNmDfUUq7pQ5aZRe9Zu5Py/Akr7vREiHcRMJoobqih4euB8K18gk9xx+aWnm823Na4DOJlzarFm3Qc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nfKKaccs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nfKKaccs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC447C4CEF0
	for <ddprobe@lists.linux.dev>; Thu,  4 Sep 2025 22:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757024993;
	bh=Q71er+RIFGcOjrMGyEr0lamxcW/3jL6HF5yrd3H1wCA=;
	h=To:Subject:From:Date:From;
	b=nfKKaccsDidqqZMutd3dxAIOqHDqSXKjCgotxpjeDHo3wdMxYWFIxDB3C6ByBmqY4
	 PKQkbMp2UWdyfNZ9zjTgO6jaoPVrBB4S6BHiWxLCS2OUlPo/rD3Jf48YvkWHCNd0bq
	 /s9gWMxfUzMIK4cK7uep/tFKKEzdJ3dm4MqEaFiRK4JJYwFEBv3pG7aDoIGZwQApED
	 j0HYkoZjmJPcSND7ca5VhRPkFBNTbNHlMrml6HDRHy/x7LxT8ucdF/OB9UJpGm8VKu
	 +Ll9f2vjhrYBHV8+gJqR5znprgnb7NF899I42Tk2lW4kXm3Q6JwQu59idc31G618+M
	 bdIAS348cyq/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 935A1CA1013
	for <ddprobe@lists.linux.dev>; Thu,  4 Sep 2025 22:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175702499358.23074.3861671298415173184.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d11142a1d534d4349660ebdaf619498af7c92dabe47b8222363996eeaa72d7f7
Date: Thu, 04 Sep 2025 22:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757024993
