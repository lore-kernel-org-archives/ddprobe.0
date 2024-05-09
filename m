Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 617A416EC1C
	for <ddprobe@lists.linux.dev>; Thu,  9 May 2024 15:22:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715268143; cv=none; b=UUgxYRTI2M0NlMrlDysAI1wzYzdbSEIzMW89ncdgGxWfybd9wAH6u2FVNOkKncSqbKc4bvOF5lg/5tGEk9VC83msyaS+495sS4SE7X6wm63+WEde4eVt3vWyjwRPzyKFu+eDApc+dW7jeHdjEaE+GBj+0Im474Ll8S05Yd0jeIo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715268143; c=relaxed/simple;
	bh=L6dOOCdXMSucbnNePgVdKGtKvTKBHiH/wWkizzQ2xh4=;
	h=To:Subject:From:Message-Id:Date; b=SspdByNbGxSfn42gfajMeVOfKVvAYkqhka/W9exaBDqu3AbCn9JepH7JURoTIvx/DTl8G6L/QXZyhFdD187gitrj6JI/PVTnXynPpTAwrEG/U62xJqXX3AGFwTC+4KYPziCDt8bxGPiPA3lITA3JbEGeN1aAmLzR/etLfbU31tA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=F7Ykjg1b; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="F7Ykjg1b"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E20D1C32781
	for <ddprobe@lists.linux.dev>; Thu,  9 May 2024 15:22:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715268142;
	bh=L6dOOCdXMSucbnNePgVdKGtKvTKBHiH/wWkizzQ2xh4=;
	h=To:Subject:From:Date:From;
	b=F7Ykjg1bF/rGXRc4CnK5XJnzDklAZDEfqzyfcGko1zaqhIg/RRa6yeO6bXoyIgSEr
	 1PG/6nPXea2+yhxtDQpD1w+EzvrmheC5ghLAzOy0FY1xz6pSrfjOwVSOKW0a8UljyL
	 aJhscxv8R8Fxar3cKTA9vzZ9YvyhhuebIaiAH3Wj+5yscfph1mGhyeLMzeO87FojGK
	 quzOR6qQ/n7eEIu1GYS+euRwwgJrhc46ArtoKITJjEAEMBJ8QSua6sBWfsMFNATftB
	 2GMv5CSPi/xGqyJOTotOuY6EAkOqC7o7TIEsci+k5J7TqTs/frata5Nlgql9aRzaQY
	 SQqXdT8V+Qwjw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C57A2C25B10
	for <ddprobe@lists.linux.dev>; Thu,  9 May 2024 15:22:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171526814278.15195.1571550788160273237.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b2eecef6a06dbdf8ed95092277c107b4ff8c1a7d10a767728c7fe28a4d2abca2
Date: Thu, 09 May 2024 15:22:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715268142
