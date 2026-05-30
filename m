Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A853261B71
	for <ddprobe@lists.linux.dev>; Sat, 30 May 2026 06:13:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780121614; cv=none; b=EfAJng5qFX+bbIUd01HvliepRlvO1MhZ4B5AYfnWp/FZnriQ9AFHowdlDHbONQ37IwN6S9Nsoa/8IthEtB5W+kiUd3kE9fBBO7M8fStN/jm50u11yFIjWN7AxAdVw7wu31jMj3H52QDV4yYNSgLj/zsmNUa1r3NvnZvipPRZCbY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780121614; c=relaxed/simple;
	bh=tyeM1mXtF75s8CzdfkTLv0HGi0K6uvcDlL7NSsa4AiM=;
	h=To:Subject:From:Message-Id:Date; b=LeNh2gsKcWSD0Hr9K5Afli0hdmrKGTUI5ukLnykln8RGfFhuU0nzRIjyrnZzxZB53pGXi9iKb4tL1UHBbJFpgLeBIKFJ7p/M5k6l/6VCZJoy4mKQTxERkc5C5NxKZ/zka5+v4fEYVaKVuIFpt25mUnkoUCwhVHhBx9lz7cH7yJg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AjSI5EQO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AjSI5EQO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BEC8BC19425
	for <ddprobe@lists.linux.dev>; Sat, 30 May 2026 06:13:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780121613;
	bh=tyeM1mXtF75s8CzdfkTLv0HGi0K6uvcDlL7NSsa4AiM=;
	h=To:Subject:From:Date:From;
	b=AjSI5EQOTi05L3roQmG/+f22eUHkZkgKGJi5E/zOyPv/HEFvZ7H23SNcm4Kw7zZqr
	 QF4rZQxEJPk/iG+Rn7I/w0Hyi00yagu5s/34kXsEpiQ7wc75+g1r3mrP5Bg5z/P6jB
	 ZAUExzKsq6GAhm4g3ZcxzMXwPg0wfYjWR+b70ecogzscVDkaT2DRAGovv4pWtc+Dpi
	 DyGimgj2VUArUQymFOxaaP8Ta3DU46qJ6rw3DwVvdPyYyG1hIlSa/uJHv/eLdp/z4A
	 sv8NfepkIYM02cMebapE1me2yGN8bsYhcbXHHr4/p+py0bUA2NRxRfQ3CnRInQ377W
	 8odeKaeMLEz6g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A81A3CD6E4A
	for <ddprobe@lists.linux.dev>; Sat, 30 May 2026 06:13:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178012161368.16478.743133402421850795.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 26a40279afb7bb976b8d6ac79f5cb44af42295f8d9944cef843e8374680ac5c5
Date: Sat, 30 May 2026 06:13:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780121613
