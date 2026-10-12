Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9488C39A7FD
	for <ddprobe@lists.linux.dev>; Mon, 12 Oct 2026 04:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791779434; cv=none; b=obBUoaacDYqa+7rXlaB4739Bcyj2atvyPd2OMXmGKbB11LwXZ6R0fYNkLuntoMsTK1fceJ/0a4I6hnxbovskIDe4JSfL9J2jPJlkayq0OdY+O4nSuejOWzCgQFTDG0BL48VofM2KEUOhuuwXW5pGwKcqrD16YipQRv+CVjLjCac=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791779434; c=relaxed/simple;
	bh=aozJ4uuLXxlT0/kOtF+XiyQJGWl5qqlPeaCtyEiMaVM=;
	h=To:Subject:From:Message-Id:Date; b=gdZx8iIvwpNM/bw3j/ZdUiV1pQgOfCQH42jUPZdy8cJbFXjdS+UsJX8/yjsSJRjPRN+DT3OfRExX0O/Q4E15Jz70XNRoQXs+3LCbrY+a3yxurmIJ/TwaSWgzpJHAl4m3ZvHwZhYH0YLbMxrT6D75BY17wYAGVuHpI2uM+l+ZvB4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KIpgoaxv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KIpgoaxv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD4EDC2BCC7
	for <ddprobe@lists.linux.dev>; Mon, 12 Oct 2026 04:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791779433;
	bh=aozJ4uuLXxlT0/kOtF+XiyQJGWl5qqlPeaCtyEiMaVM=;
	h=To:Subject:From:Date:From;
	b=KIpgoaxv4SFslplA74CygNM80V9g2UmMfdYkY7Qtpo3bQzSZdcAfh308+L0uN+Z3d
	 3HO7k9zLHrsWqDuanUzIfrF/IUA56wEy1sYUDuA87SosgxNOk2axgC2iZR1WXAnL45
	 IJPwmfZV6ZffB4LCaEHekx9tvI/aFskrx24iQyJN/YpWVI1XAxv91G22CQvhZTDoBP
	 KQbeYyfhxgt+tdIG0wPZKgLgftaiSJKyGbgjdPQzx+m/R0DN8H9oYdZ8F5wJ9uvOhK
	 goZPPRACl0jUz3dgF8KCiDB2UpsUmf7GdtQT0r/cjCyIQapgtFANvnAxzlukA5kkQn
	 yJsqZmmz+LGiA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA614CA9ED1
	for <ddprobe@lists.linux.dev>; Mon, 12 Oct 2026 04:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179177943368.19580.4638339343134337086.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bb8ff6c784c5ef00bb53ae7d773e57ad78d3342270087154920191c9c9cb3a9c
Date: Mon, 12 Oct 2026 04:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791779433
