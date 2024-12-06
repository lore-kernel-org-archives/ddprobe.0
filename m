Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D131193416
	for <ddprobe@lists.linux.dev>; Fri,  6 Dec 2024 07:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733470554; cv=none; b=lYUNhILa/vfavJPGGREMAHg+LvrhAdJrr9L8i42THUOPCNNerwCwvbKoJk1RFVJ9pmtIGaL4r02YUjl/aRCRMIQShxYNbguV7nxLi/iCjSUjqGRyhjT6/qMSQg2NVDgzH8CKteHQ1tMgzspaZRaMi39/2bM2lVW1cWl2ABX4k8o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733470554; c=relaxed/simple;
	bh=oqmbR8zjOCAWCcPsaDdu1XeAutfmOp0JTYPTx3cunFk=;
	h=To:Subject:From:Message-Id:Date; b=sOaCqHt8cKxIloQeetmiEgmWyOUgU5Pgg02sxkT+xdcO7yLP0jayFPJvHBNEeGES6aKZd4wkeKYlN5c+8HSzNS4duQ/zfLFZ3jOaqDAMxRfbbCGV2nVlOvB/GCg6AKrLMHRD5J0Eq1yg+OILtVl5cFaT/+ThhdxgnhWzNZ0AbCc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fMLR2oka; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fMLR2oka"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6E4BC4CEDF
	for <ddprobe@lists.linux.dev>; Fri,  6 Dec 2024 07:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733470553;
	bh=oqmbR8zjOCAWCcPsaDdu1XeAutfmOp0JTYPTx3cunFk=;
	h=To:Subject:From:Date:From;
	b=fMLR2oka5IHQUHZmfLIEnmwqLVg69IdlvTQtE/ajv41VEPZvEjGB/LXaMCFwcvwam
	 cQbcJG7wxB2FluRQdvRI4S4Ka43zrPYFw97nY6Bcr/yk9pxetn5fAmNMTPbjmIXoZA
	 0vl9QuLNMILGIyEW4gFR667ZfLNRA0PIRTeSYX4JvONGKPhyls/GeDM6Xn0YOhpTvP
	 qZhg153pT5HkvbokVxo1X8zk0sSGjmkglIfEV0I2LhP6pDLDeDGdxFBIZXziRNKgAK
	 FA7aEAhrlW+zzW/BM6dDarWjmJoFZjBcRY7fIvjfrhJfXczhKW/pHiE6wGXz27rq7z
	 mqAGXDoZeZDNw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96D48E77179
	for <ddprobe@lists.linux.dev>; Fri,  6 Dec 2024 07:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173347055361.578.8481747048582372539.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 23779c840e1e702c60c5d50bcb7cbd8b3c81916bc4d83d1e4506a2355a159314
Date: Fri, 06 Dec 2024 07:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733470553
