Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5228B7494
	for <ddprobe@lists.linux.dev>; Sun, 30 Mar 2025 00:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743295194; cv=none; b=pqwecXTUNVfMS8BZIl5q0c3W9z5Y9bwXdjrF00o93rMyG5xZdn6cDprLA4Ou3h4dvgyimHinYMvI0HqnSKx2yEF60wZY58UW2q2jZIKG6LMvjbF9VUQ/wEfrfilsX0P1Jw5No+zsOt2g7t9lyPykmRoaA+fEzO/znZsXfbIJ6XU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743295194; c=relaxed/simple;
	bh=YNLasx6BzF7uHKowBKTJb/6aONC6TTpBLR4lxFbzRDY=;
	h=To:Subject:From:Message-Id:Date; b=jCoC4l+T4+rSrRmFo4XitzFftbUMlEt32kdFexVE9cRCcfplJL8IqcX90UvmyFS4IvOsnh/5JEGam7JCgiMERPLdHyF47tCHevXKjggezJgvrajOVh7/vQUuAWDiiBSSeUAxQDso6j8g/daTYC5JhuF3ZzNmXiKXsXS1lptCFhc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UNmU6HW1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UNmU6HW1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BDE60C4CEE2
	for <ddprobe@lists.linux.dev>; Sun, 30 Mar 2025 00:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743295193;
	bh=YNLasx6BzF7uHKowBKTJb/6aONC6TTpBLR4lxFbzRDY=;
	h=To:Subject:From:Date:From;
	b=UNmU6HW1siJ8pWm60ioB8Zi5lRxVj8b7UQN6a42NBR2nEp8xk3L3IhE/0mNrCN7qp
	 2725YK7fw+9KLeg+/GNeGZACY01+979dpqQSakW+4Fk0KqxEcRth0RfRVyfYZaOGc/
	 N0Dn0acjFbEXS9tEGJ/e3UVLYi2RiPyZ6RaB1nc7xyivuGgHXuTmQRJ2D2ECkkicTP
	 nGgyCGGqaSF44+XgFZeo47CVT9BjOgjM+cukQj+4vVTP4jYn8TZ0Kinm4//Io8DaP2
	 mjI72FPuDGzULIX6Zv1KZVA1E7q/t6MpGSm1xZpPDt8uYVihJhKvmIgO0PW7cLZAKl
	 f4CBbBZb33MPA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A2F84C36008
	for <ddprobe@lists.linux.dev>; Sun, 30 Mar 2025 00:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174329519363.20621.1279809226311662021.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3a579f77c3aa864a4efdb87e8a27146d8aabf3f79b0f7856d2956b8d2480de0f
Date: Sun, 30 Mar 2025 00:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743295193
