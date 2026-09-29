Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43CBF3B05B4
	for <ddprobe@lists.linux.dev>; Tue, 29 Sep 2026 12:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790684434; cv=none; b=gwpp2ZOWm6+s788yq2SheypiT3wPaawza+Wq6otq4sQOuU/q9CWx/4nUEHiF0yIJk9GY9hlTif8p8OEYfY4G5CUGpVCFc3A+YPwu0bj2BYyHAl+bN03H1iPOcxJEhJV53jGgRm2JILDIIrODugBL8bm+Z/ddFYm2x37vxYP0k6M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790684434; c=relaxed/simple;
	bh=SdyDCSq/HeeK2UJREboDCrYr9fSPQETyqX1GeFeMGBQ=;
	h=To:Subject:From:Message-Id:Date; b=cWuZAWDsh76XdOK5CgqrRgvocQEHaKjs3748FJr3pvfOpJWe7Yviv7nvwnmfTov2rTonR9wn6H3e1lNIVUa8qg2kn6mg6kr6QuHgBIdIvpMeEY3I4yEZEEMUtrfBQu24z0qtsO9ZTvRia4NC5CTCtdwzNYDBrqJrSaPYYLyCrhM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TBV1EPI6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TBV1EPI6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF275C2BCF6
	for <ddprobe@lists.linux.dev>; Tue, 29 Sep 2026 12:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790684433;
	bh=SdyDCSq/HeeK2UJREboDCrYr9fSPQETyqX1GeFeMGBQ=;
	h=To:Subject:From:Date:From;
	b=TBV1EPI65kfZTPgnyk8XHBSWwxVE6wNVM7hvHoLHbk+QlPGT70HbUZ/qeF7eOxK5f
	 MEqQ4lxDEX0DkF4nkktdYE1nvyXyHqWglb20yp6H08p5BrUFJ5ErGALZCy4F4pEnRw
	 8vFyQ0qHBHqxaZPBUnniW6IvzxWkR1z/pOJLCd0D9/ZGQVntdBk55rKBrConV1E3MM
	 Mmnsbw0suAfuS09Kqhm31siKIIBFYkp9OfGHiX7fzx6Ykz2SAVQwAqwBE8bwUcqdpy
	 t/0n8iGjhYwQDuD/etxgH3gt86lGm4/vXNXOkNdjqg7kn/b2TLjNwqjR8cDLZY4nkI
	 RExhUAYI3bhGQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB97CCA5FB2
	for <ddprobe@lists.linux.dev>; Tue, 29 Sep 2026 12:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179068443369.19006.8281939097393445316.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 20556c525a6fb3ea6ea6bcfb57ddf92829b6f6feb6fdcfcd8ffb517ded6240c6
Date: Tue, 29 Sep 2026 12:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790684433
