Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 259478405C
	for <ddprobe@lists.linux.dev>; Thu, 23 Oct 2025 22:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761257394; cv=none; b=cItEp/ECVJaGsywKs9I0ht4z+hWaMVGjb0A4G01UGnsT5YcybkxkDi/HlSbtSm69c88zuAxsF6DstXEN3UX9FALnS7jqouA5tyhLP/5yy9KzmIJCJn0ZIg+YjavIe3XfykzkMyDy1LzhcaVEfUt5NdzRJoGkek6Xu+P9FPPEUMI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761257394; c=relaxed/simple;
	bh=6s5l50AXj2Tz3SfSmHbeQb8F5Ptvp8Cgopj8AkG0iMY=;
	h=To:Subject:From:Message-Id:Date; b=Uev85l8EBqrtzcohJgxaPcMBxt2M+wHmxr4cZ/DYyoWglnOb0mGEjCtZBFCH2XJVKBQofvhaciHeYkXhqTu8Ns6vDgElJhJAiqMphfwpWbZaKuAJ7ed5jJt8wHvzwElyHrq4On7bWppbB32b7RRxF389k78WpQ8r+02e1Mmeibg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LGoqBddb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LGoqBddb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4DD6C4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 23 Oct 2025 22:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761257393;
	bh=6s5l50AXj2Tz3SfSmHbeQb8F5Ptvp8Cgopj8AkG0iMY=;
	h=To:Subject:From:Date:From;
	b=LGoqBddbkFzdIrKlqtrrB9LxDgTcAog0kvHxPqJHCERhQYkHvhxm9KHwYnLzr5vLP
	 gcN7OUnbH+LBydj00vsOrTDRFxlq6l8kc8JutoQ7fptWsFrt7Qw2DADIAICgXYF85w
	 xp1VCu3mYjI5CUzNQ3QgIlw8NJRtl5hH0N1NQjmWrESD9NnzIDLcQS1mJO7nw4WQET
	 yfkWfvlr4bLLSwIp7SDzfOZbyTIsm2Bs4/n/IjMBsfB9fJ4CHMA91Tz6Kz96pKvwrv
	 YA5JsuckHUZ4CnH5Q1KUobOkOGu7uFAi19Z0ZxEqu4Ueb6jEXP9HUxmh4xz13QYUOe
	 t18GmSWauggaw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91267CCD1BF
	for <ddprobe@lists.linux.dev>; Thu, 23 Oct 2025 22:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176125739358.29757.12148236189142807101.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 362b419042fe952085cd6650e13136836e57fa79484e60a6583d0bdbbd301688
Date: Thu, 23 Oct 2025 22:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761257393
