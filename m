Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5018711CAB
	for <ddprobe@lists.linux.dev>; Sat, 11 May 2024 02:02:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715392943; cv=none; b=tZJOtwmguzX9TS/2zPxvGUlJaAhXoDocpkdlINifFDz52jL2O9IC+UIEPmmW3xbNUeccQI8AvQeieOyJ6dGe6LKkkyU2mKbEF2AwHH77r48g3un1zhrDEQ64bCCjS7ICjx0FSahJOlr1q9cZjaDhDs2cLsXaBl6OshdPDVdvqio=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715392943; c=relaxed/simple;
	bh=A43r4QNw2g0zjcmsbtVmW7knIKIj+CTsH4rizYIUzoY=;
	h=To:Subject:From:Message-Id:Date; b=uc2+ZrZYT4lpt2pzs6iSzpJHvzPEUZBdFuVc6QAP2seEVohB1h+BSdQ1zidvIT4MFvMTnFxe2WwWqDnSY10djMxBJjsV7T740PMoXSMmK3O5bWqXsAG9X0VbOHJBADlNcbJmode//tpwTvEJ66Z8stt36byqYEa2nECFMrqakrE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=S/AW/UgE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="S/AW/UgE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA70AC113CC
	for <ddprobe@lists.linux.dev>; Sat, 11 May 2024 02:02:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715392942;
	bh=A43r4QNw2g0zjcmsbtVmW7knIKIj+CTsH4rizYIUzoY=;
	h=To:Subject:From:Date:From;
	b=S/AW/UgE6VxP8+BqDkCI2vszHFNJDawUvUaAdtQXXeRILsGBNz6JMT2YIsI+9+5bv
	 N/45h2czXJm+J+ZRERz6wB3V0RNTfr9k2aKRQHHfVEvuPWQXGXmtPyDHZxSecLVxh1
	 Ll4TYyuzgy5QVxzO3cODXYAJg9SXb/qMeRgEERG0/oZzHvG6OwaL6K70O76Z3Jlxi8
	 5KYLgFqRVQhUce6qHhU9mvoYGu3aRv1uDoVAYHwe+syfCbgYsy7B1VkvQiAmbOYMZD
	 fzLlrVtEJ8RpTG8ws/p84iGzhfrLttWbxyQXhgiKN06xyH2HoyebOf0KLYJcxtNlxk
	 YRypZfMnS3brQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C62B8C25B10
	for <ddprobe@lists.linux.dev>; Sat, 11 May 2024 02:02:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171539294280.16843.13743488994062555990.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d8a4110c8f0f9e17c7c275afc361e6395df24c998ade7eb986ee187a8fb16cd7
Date: Sat, 11 May 2024 02:02:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715392942
