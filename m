Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 273672BEFFB
	for <ddprobe@lists.linux.dev>; Mon, 10 Nov 2025 17:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762795794; cv=none; b=uW7d1TpM/BOqxoB6I4KWzS+a8qQPMrKaDOf/gB0vXc6c3yexk51aiL9/0Zrz9lFcWRTWqO+THXPoqphCq+GOeo09OvWZVkYYmefCGm7CxsYuVV4Kz9nsoWYS7u+S9ifkmqx+Q2GkDKcX8Buf+L/mP4yMVpysub6t/HocONYDj/g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762795794; c=relaxed/simple;
	bh=o/Z/GDG4yYQCaXjY1tLweJADg+yhNLYF5D56uyM4HA4=;
	h=To:Subject:From:Message-Id:Date; b=UIIRHiPAnL6LbLyFtwXFCB3y2sSduoX7P0fBxCGkUzg0TzJcf4lTro3/Mq97YmO8N2jDHO7FxiGqTC7gVMuFkQ1E/1NbxAs8iEYU4ODNI3/txtDzsvnfO+91fGjUiyDa3jV40obypUoU4BijBT7JUxYdwP/VixEbAOWC61iQ26E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=u2kOKzDJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="u2kOKzDJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A499DC19423
	for <ddprobe@lists.linux.dev>; Mon, 10 Nov 2025 17:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762795793;
	bh=o/Z/GDG4yYQCaXjY1tLweJADg+yhNLYF5D56uyM4HA4=;
	h=To:Subject:From:Date:From;
	b=u2kOKzDJVhgNtX2bV82XAek7D2xgNZAJZOd5AoHfs55N46AI+3epjxlkyVYqmYUEy
	 706RUom+EpEn4AWpHet1qP0N8OLHaihQe8/f6+jax55ITc5LbEIcCL49igb7sUtGxa
	 ixpc0rwtVP9YBAEmUPA8z+LSE7UC2fJljZy7ywk5nQ/PdpQLDa0QPf+e5Ndxed3UkW
	 6tlToXaGXk5nCrDCm61a/Q/eL5VlC+JdSRanLmXTecG4X0P+OJn5AqsXyExh0FQres
	 aWHJW7jv8ukHzx3OpAUDuq7wXougpZSxDswtNSkFEIMS62jCMyuSVE/hKUxGGM0riD
	 0N2GvDWrYELVw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98275CCFA13
	for <ddprobe@lists.linux.dev>; Mon, 10 Nov 2025 17:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176279579361.12935.11343199240528261848.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 92a5efbedcaafec6bbb56a87bf8b9e46dcefb3b433f8672eff7a40d06e368c95
Date: Mon, 10 Nov 2025 17:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762795793
