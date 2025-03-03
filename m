Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4139D1E5B6F
	for <ddprobe@lists.linux.dev>; Mon,  3 Mar 2025 07:48:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740988134; cv=none; b=CzdAVV/0doC9ENfZk1RHPQKLaoin9HJjU7Phelvp7fodNtr/RHEqW6woMnU0DLfScw7MjTQgMcz1Yi12QKg1Kexi9HukM9ORWResFNlSacVqG0YFUrvrbh9onZpcCSX8sTa2/17xRKdcvVHP+AIatjMZdJ4CVWGxBekTSQ5guXc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740988134; c=relaxed/simple;
	bh=gakMe2abShdNBswUEqMFegMbhrIyhrBk5Hb0K6aofyA=;
	h=To:Subject:From:Message-Id:Date; b=TUDwJquWfQcFfbsTpyPs7rFdgs7zFTqy6oX9WWnnH3HEM1Pmw6rCFycrfGGURpxBHrJzSMAIrpMvUtOSX0EOSdB7x+LZYObs8e7EgiTGfwXG42yUYJW6kEsKW5294ogqYiFti2/0ZGpLbwecbCC8QPFkm18qEoFIxGebX3YmELs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=l2JaV5Ln; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="l2JaV5Ln"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A84F8C4CED6
	for <ddprobe@lists.linux.dev>; Mon,  3 Mar 2025 07:48:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740988133;
	bh=gakMe2abShdNBswUEqMFegMbhrIyhrBk5Hb0K6aofyA=;
	h=To:Subject:From:Date:From;
	b=l2JaV5LnQFt3evuyg2HSxpTZcJfS3HuUDEoFwHhGCwZ9mx3dpXN2f2tt6HV4G5KLp
	 rdVjeUEtZcCAGdqaKPZZhjv7PAhYfZPHAlBiZl8+g6iN1Pt25XQKTNnIPHWv3m8hDS
	 08x3QxqbRqI53izvpXBkr7KIGA4QhFusPTIhD820YtAPqiHB14PYSRbOihd3xkIFJy
	 NbPZDuNSZSJ8yjIrR7EvqPk0djBaGtyuMpvRDdbPGvJazVyYoGO4wIlMqTrDvOW5mn
	 bffOisZlUCqG+hxpvp58aUuTiGX64+1slfjmnMK8t4aX3RrniDXFG5/ulbxmAy9y2G
	 Rhe/WUOAI8KXQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96609C282C5
	for <ddprobe@lists.linux.dev>; Mon,  3 Mar 2025 07:48:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174098813360.9604.11721873314594094084.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2ad652b4a1e1cb1ced2bc4979bca208b56981da5ae02c066f7e9ad2b30b80432
Date: Mon, 03 Mar 2025 07:48:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1740988133
