Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B98F1322767
	for <ddprobe@lists.linux.dev>; Fri, 12 Sep 2025 16:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757695793; cv=none; b=NKwzbzly07sI19xoc8Alxx2xvwSX0GD5awWqCgoXzOiiBAu0MVG0bOdsMzgQNRBtyDIlQaT/oPEJvspHTIJ6NsSJkqEb/nZK+MKhSraWBU22lLy+AWmDNCdjacG4oQgNbWxOb63tiCNWo6c5jkRknyuaFeAl9M2IWgdiB9ePv/k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757695793; c=relaxed/simple;
	bh=1fZgJsrMRslIA1QSHVweK7H+yOGYzmlyEYJH8eZ0UQk=;
	h=To:Subject:From:Message-Id:Date; b=XDSc/AZ3ZwRLY8Y86ZxPsDGhErXqQ4SuQu6w9hzo1uELIuzARH7P9UiOKlzi6aDmuXknbITRTr3D3z97ieJEIrPOrE7jWIVHlhFvug3xRfLA22VFSL+MBUTQkFbuLOe1Jm3zxNffAcP1/51JVUXmKHAehD2KsipxW8CuMld1VFk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CIrzdcg8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CIrzdcg8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F314C4CEF9
	for <ddprobe@lists.linux.dev>; Fri, 12 Sep 2025 16:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757695793;
	bh=1fZgJsrMRslIA1QSHVweK7H+yOGYzmlyEYJH8eZ0UQk=;
	h=To:Subject:From:Date:From;
	b=CIrzdcg8NVyHzkyPIAQGRFzZ1SkhVWoGJt++Mh2BFI6cIU1se0dJe1WQ3u+Z4aF0D
	 4LXUqX4QhC4OcZjqupzUVFe+56AzoKAQIPWzU+a/XY6W3lXmp729m3qLMzNLx7Kb9L
	 VWIeSku/Q9Ilm5pUxhO7UWnzj7HcBh8dUbFkm0DvPzQ3QMVTpE/5eyI+ZCpkJs+AQ2
	 0pqBr9FH21CyznvKS4cWU/SpT0UmhLIFvkhwdqp29TFP2oPh2fQxcghP1LRwj9nB1E
	 1mVlzFIBjZrOlf5755BMX47Xf4fJJ1tGKTgXcnltxMg+RCTymcLzrrHORJo+dT0tdv
	 e5pLMhRG4KFIw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91039CA101F
	for <ddprobe@lists.linux.dev>; Fri, 12 Sep 2025 16:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175769579358.24817.15089577586543063578.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 45868b604f27d6b4cb41dd8c430f587170f2f20204ea2eac43e94c4340ae9844
Date: Fri, 12 Sep 2025 16:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757695793
