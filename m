Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C821279329
	for <ddprobe@lists.linux.dev>; Thu,  6 Aug 2026 00:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785974434; cv=none; b=USJsVkQ+42VkbyHosGkSI+e06JlDIuvHcT1VzPQcJ6zU6IFuWnUddAXy2Pw9r91DwGH6jyvVtxy7nIKdw+rD2S74gInGZoHxDkPC9estqfqo46gbuzC1rPJLdv9K3H93PXV34+mZncd7mYQhYsIjiDKafzLZmjMgJqKXafS3QKk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785974434; c=relaxed/simple;
	bh=AJBR2PCJqr75VFZclXuayqLrUjvHhMyJ7jNf8UFI2ZY=;
	h=To:Subject:From:Message-Id:Date; b=Mwuhv8PKz5DCWnrK6Kkhzy3irN7Ezf88HW5EQEad2cQYY831rBWF5AQfFXBo24JWpzjRNuTszelniqsjAlRq6yESic6qk4amwwTh5auBURm7cxqPw2qZ//mTlUkjkmzH6Gdnj948AzXoVvVgRii1wPF7+mETIVzMxhuUC6RUIro=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mKL7gUs8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mKL7gUs8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2148C19425
	for <ddprobe@lists.linux.dev>; Thu,  6 Aug 2026 00:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785974433;
	bh=AJBR2PCJqr75VFZclXuayqLrUjvHhMyJ7jNf8UFI2ZY=;
	h=To:Subject:From:Date:From;
	b=mKL7gUs87xZSnkHXzo1ZWK2CIba3+oCaoihrVRzZrYmU4ATKyR7wd/bavN9BR6ZMG
	 37b0LP8/Og279liq8KQeK7QY4ZpScSscg+Na1lb+aIaAGxmzKr/wAbwhZJzeTJLbk4
	 wnizXyYb0VO3gjiTA046/2rX88cLHFhc6gQUMMhDCTGMeFcPSg3It1IKViiaeYaOBO
	 aKIV9djwizMLxyRHyBa1WH5OkDeCGLnxduyZRspjRqSXSIU1zLJtvOW9sBopz1IC6p
	 KBoR/IYFPQGR2AqkpARqCxzrtmpa1wPXUSCICunLslFKsq1ajYvMGj38kR7OY7XeUd
	 ZCpSNx+jy7U7A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC68BC55174
	for <ddprobe@lists.linux.dev>; Thu,  6 Aug 2026 00:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178597443369.3539.5080926874345545286.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6640ff3e931c5790a615385acc9560eb4c71bb0a5641e39c60e1c462e6f1ffca
Date: Thu, 06 Aug 2026 00:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785974433
