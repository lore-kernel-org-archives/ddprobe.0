Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5142515746F
	for <ddprobe@lists.linux.dev>; Sun,  6 Sep 2026 00:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788653434; cv=none; b=gAdWx5ONFyD8RDgOTQn/36ii2prirRNrvIJx+bOcZmI4DR2JhgLqbNlHVtX8CzLckYZZeCOosCU/eXW9WJtRqCFtC8PiwOWUpqBfx4KuwMDbhZ1wsD/b+0zNz6Y9ZXha3uUTjX8HEI6wytayXeu2o1OCX6p76rX962uHUuguvIw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788653434; c=relaxed/simple;
	bh=+afkgAWSnXkk8++0cf8pXal8RpPg64PMhIEqGOq+IRQ=;
	h=To:Subject:From:Message-Id:Date; b=XVbZTLGHAxr2ATC+D3uY+puvHmN8A6VlFxJuovH6n10GWUMvPIsHa641YyS0RX8hNdrzT5ED3kCRObfM41EP8Quw1DWRZGmNs7gW0bt156UkIlKrZSGVFquUbaOmhus+2sqUN4PtJJkydV8qMjkgqV+xkFaiXwnI3lDUAfj1F34=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dFaI7wvI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dFaI7wvI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5548C2BCB3
	for <ddprobe@lists.linux.dev>; Sun,  6 Sep 2026 00:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788653433;
	bh=+afkgAWSnXkk8++0cf8pXal8RpPg64PMhIEqGOq+IRQ=;
	h=To:Subject:From:Date:From;
	b=dFaI7wvIFJJ4HTBg/gsHCg8W8A/gqubaMH24tm4coSWp5cerX7z05vNOq3a9krWpL
	 MFvddSAf6LKbR1nkHeZEYImfLLZl9apt0SPK1r5KIJu2+S+h0SeyC+qcSlW963kFnk
	 hXwgvfIMllJ7RWQYXflp9HR6n9MrE+DT9T3w/y2rtEKxNhY93pQn6hrkcvHSjoI533
	 X1k8Pqh5byTFyMm6YmbqMcFWlWF/RJgKP6mHYsKRepR8tGJu/d5xCy9/pNDlzKD20B
	 Stya6RW2+mpx784epEWWHpbj/fRpKo5/dC5hgvBpYNVfhtdF9w2JMcKXEBHYy5d7g8
	 4YcUvRKdNKTZg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD5C4C79F85
	for <ddprobe@lists.linux.dev>; Sun,  6 Sep 2026 00:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178865343370.23327.9183034756002414606.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 59f96ca7017d3e25f1b0c837dd3fd6756e2722592b9cc86a5f7e8e1537bb9f39
Date: Sun, 06 Sep 2026 00:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788653433
