Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 623293438BA
	for <ddprobe@lists.linux.dev>; Thu,  1 Oct 2026 19:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790884234; cv=none; b=BU705Wx6/Y1MCpn4x+avKoa5GMO8sW5PChvKiFJDfKHsSxsjyDjUK8rrERSwb5BvnEg+6anh2KZoWBRU772puewgswjajcxqweslpxW3KM2blTfYb0+NK2/gy3gj9lbkx7Pj0MUcEHWXa5/0sAhLSgEz9tl0QxNPMmhY5yKtAxk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790884234; c=relaxed/simple;
	bh=nkaXkiX68Y9Shk9spWOKLi+bs7qK3Vae3Almf4udnK0=;
	h=To:Subject:From:Message-Id:Date; b=Eq1dvpCS0KeIrztK9IqXECYfyhAKSkch8Gi8sJr4IZfpVX0gdRviHN0Vo+Zt1/XsfRa2VHN3gvYEt0INkiAFAX0L8KxWAMg0gt3sOJqMk7vQw5Z+/vJvMvYtcB2bIvJGbkPcp0LeixmyCBiQ1kAVSdhLTcCS1eONKdXPYwJu6jQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NRvPYlIL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NRvPYlIL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5391C2BCC7
	for <ddprobe@lists.linux.dev>; Thu,  1 Oct 2026 19:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790884233;
	bh=nkaXkiX68Y9Shk9spWOKLi+bs7qK3Vae3Almf4udnK0=;
	h=To:Subject:From:Date:From;
	b=NRvPYlIL3LM6Arm981Pbgh1OCMlKIlTVK+y9GLeLVwMc9aZ+pZbQXceDInPTnC+au
	 m0W9/p4v91kiDk0nOXGsNviiADtD4Mf7EJJ/Ivp++TQbiHmh94pCZ+Y7oHbSs101BC
	 TPtaL93tA0MtqLROiM9HQt/DXOv8ML3oZVdBEym9tCGO60gjWXKARirOaTiDAh9uWL
	 OnprDkVZ4vvHkKIWZ+UqSIlcGF+7y722NSHXuookkf55McFr+lFt4kBK/hMlt6puoQ
	 9tTNcR9nN/R0iCPRdcrI56DN+FTQMFDlMqP+4WrGBorbFlrmTvyRzZq9Oh578KcCg4
	 xE1mZnlc4XcOw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD229CA5FCE
	for <ddprobe@lists.linux.dev>; Thu,  1 Oct 2026 19:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179088423368.2087.382112815849027028.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1baea2f089be9ca532dc59699ed75f5984ef3f769cde39ddcc175a0f21ac8962
Date: Thu, 01 Oct 2026 19:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790884233
