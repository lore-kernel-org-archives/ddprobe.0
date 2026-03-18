Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 190B82FB084
	for <ddprobe@lists.linux.dev>; Wed, 18 Mar 2026 23:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773876894; cv=none; b=hhdxVnWHAvl3AqSzq653aZ+mRlxqc0hqB1wBcwD6fWyBuPN3g4Dc42Jwr5kkQ1AMSviXy66BBCoFjowJ6m2ZPfubX9lylAqOkR+m62m482PgOHBftpmM7gnsoNBFofygG+7nAhWQZhfnS63or1TALpxG98n7qc14gMw+x0t9XPI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773876894; c=relaxed/simple;
	bh=jYIRl1KbKJ6EXRWzf0R1TFaWE5T4I6mdQe8Thwcc6Zw=;
	h=To:Subject:From:Message-Id:Date; b=iEP2cpR17v6WdfmmG5rp07O5Kx5uAiP1xQyUywxP3EO1BCC943XUjffI2AF1GhokkevE803NEdyAswj+I/XrFuRUJM7MXzGM8Tm+ofqsDDmuD0KvofJc82BykIc2UNqJTFi1yE9C2HBB0b58a9Qb93Bc+6LgWPUlu5N9LB7Hzv4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QQU3NeRd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QQU3NeRd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4BA7C19421
	for <ddprobe@lists.linux.dev>; Wed, 18 Mar 2026 23:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773876893;
	bh=jYIRl1KbKJ6EXRWzf0R1TFaWE5T4I6mdQe8Thwcc6Zw=;
	h=To:Subject:From:Date:From;
	b=QQU3NeRdSBDxeMwsuX6jv2tgBuFcHcKQfbSMOnVXrzkNWWU6Cv1cEN4XrKN158P0i
	 aoPA9mIA667RMmM9mB8aHPF2ECp5pix5qXDFFz/ade7goj8R+LUvqtb7+78Ly1F8t2
	 GwfZ3DyMSBxfMF+XDiofy/2+pLPHqEWDOQJLLGj7F+bPvGPknlzjP2ZjIcKPGcQU8G
	 H28KESkgrx9dlTQV4MF6nU7JrlB8m2B33Ski8Qx1fiqEcRVDu5Wd4MlOTMUfSsotkD
	 BO/cZT5Q8NeeA2dTQQtIqfHltX6JABkgG43PAMWHBDepr+UYEj/dmpJtetO7NA7EXx
	 Q/58PsuAenGlg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92D721088E59
	for <ddprobe@lists.linux.dev>; Wed, 18 Mar 2026 23:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177387689358.7115.9308897080131675430.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3d36c59e72ec136a80a1381a40b2cbd441ae9931773ca28faeff7d6204697b01
Date: Wed, 18 Mar 2026 23:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773876893
