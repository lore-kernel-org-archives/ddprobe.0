Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DB1C012F5A4
	for <ddprobe@lists.linux.dev>; Thu, 28 Mar 2024 20:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711658296; cv=none; b=eHio3VuUvtxzKg/x+DieU7L3QTyHd+HiGDoCDkZ1SHKdK3b1IccYe0DRqVkIrHgHpVmFnecJz/MjvYso2T6dzMnX8ROdfr2/uOE03Ro0Mr56sw05n+I/ruKs0viya28ACVsGQzud1FOzMR+cqnKMYehZhavn9TcdtFWAUQJxui0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711658296; c=relaxed/simple;
	bh=eSv30j9GU1GPGmaYqCY24/cfaKwJbReaplBtok88WHA=;
	h=To:Subject:From:Message-Id:Date; b=GFQVk1Aem6qEWYaakGiWiDoapknfPvj47NZdR0Oq6Ks7hNz8Fn42JBcA2nSfIGogbbunzb/69aRLek+pe+jloZrlhi5D5Xn82AYGp80yu4THNe6ItFdMIWbsSqfE2VZ6qauk++RYWF6DFKthAaii1gD82YhqO7f/T/sMzYe60j8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=R/aZnYa+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="R/aZnYa+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7459FC433C7
	for <ddprobe@lists.linux.dev>; Thu, 28 Mar 2024 20:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711658296;
	bh=eSv30j9GU1GPGmaYqCY24/cfaKwJbReaplBtok88WHA=;
	h=To:Subject:From:Date:From;
	b=R/aZnYa+xvaszcziSb9687XuGaP7IlXh8PUXf1/gx9MMIUNQgVnogFbMo77HEU7SP
	 U3eYODJ/Uoyu/urN11Zp1sS/j5r8s8KJqlXubRJ5me7Xy6YdTn19iWewP2Q/OwNMfW
	 tP26uxpG6tfO3BArI28fsYCl0+Up6UmgeyBSxz7nHalFr6N0TeRHjC4BRzFKqK47Bf
	 UhXEGjnJFZ1gIJIYbH261C5Q8i/JPPZqF9VXWLORzruFDlTb33MllSerRka2Vw4gqg
	 iTSQPHY1axCyCj6f3awOKg7G2k+XdvqJJGfQwkFF+eHO+maic+RUha83Uc2wS27+vd
	 I3QZDrk9RdCKw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5FAC5CD11DD
	for <ddprobe@lists.linux.dev>; Thu, 28 Mar 2024 20:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171165829638.29641.6194968317275145400.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e855e74836268dc2a3ce23d538998dcbdb14806c39281a282d3c34dd81c0291e
Date: Thu, 28 Mar 2024 20:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1711658296
