Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6AF9D3FF1
	for <ddprobe@lists.linux.dev>; Sun,  7 Jul 2024 15:46:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720367183; cv=none; b=DmLwob0zpCCcYNkCLcCunDJSGDOnE5w5OPfBvP8sw9GTpULeoObKAjMFPCie5DqxoD/kzL6NIJ85B55xx3Vh9TAUqxQExIhS7C06Txmyxdw35ngZM5h3SMbaRn72lFBKuVYnE4dXZos7/fPyyZUjImRgCfn0vtV4xqDQuIjjQ9M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720367183; c=relaxed/simple;
	bh=v7Xg/jLWd1p6r/YikblHlAtTOAKFK97AxWH0u7pihPg=;
	h=To:Subject:From:Message-Id:Date; b=Q9gGC57FviO5aB9ict9vB3ATKlG45+gikGXvHY60vXv1FM4YujNS0HwHp/r7YVvovqb/hKIWf3i88dO7tFEYB2syoFsJENF67DfFo9mI2cRLOOANIZ4FBedJPZiMFeIPnXiP4t2AxekdX7vkioLDUlnafuiFkscPZSldXkAAaBw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=k1aPf/iw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="k1aPf/iw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E939CC3277B
	for <ddprobe@lists.linux.dev>; Sun,  7 Jul 2024 15:46:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720367182;
	bh=v7Xg/jLWd1p6r/YikblHlAtTOAKFK97AxWH0u7pihPg=;
	h=To:Subject:From:Date:From;
	b=k1aPf/iwEIZyvG5b//sHb17yMkzHqkkbwxsLQZ1TRWYPvsb4WD6KTbw7vTYJv4ntM
	 p+/ARU6gWJjnvjDYgz+aQzz9P8XglcjlyO9ZuzFxKUC7nuMabHjjdCW2p1mkF4Y53O
	 UFfuZBWz0Cd+Bj1KaJ3k4EfXnCiKve0GZwheWAgUnhNF9ELgfKwQ/WailU8KBLilkQ
	 vHPqfKEoTwgk+icyj0zAdgiP8WUYe4bueXnN5KI9QI8c1I3ZAhhEFoNQtCKwmhshj2
	 BAAanMLaiDSEjjI7yrD2a+amjwAKEfUeD1bHRM4MAriwOUyDLL/uTkYyZxdT6LdSMf
	 UyWOlfh01YdDw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D4241C30653
	for <ddprobe@lists.linux.dev>; Sun,  7 Jul 2024 15:46:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172036718285.28708.17257987865340395481.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0e14e7668b3de201e46266e460290c68777828d8b1ddc303c7da5894bc9941db
Date: Sun, 07 Jul 2024 15:46:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720367182
