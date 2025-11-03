Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DF0C23D2A3
	for <ddprobe@lists.linux.dev>; Mon,  3 Nov 2025 17:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762190994; cv=none; b=YIC4Lo8V6dPglgrfOrTo0rsyFlNMJ4IB1HcJrxgJXG0/Tw+iWxBoZZgDA5PNqYEKENXp7cV6jcCkcfO3BlPBnyvHLJegLp/HlYXaay+QjaKAlqJ1jTDMD+8Ya7r21y0ULVekVDn+6hJEHUdUy2I4IS6Ipcnq4V0TKLYLf8rT8tA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762190994; c=relaxed/simple;
	bh=cats8cIx7k0kiA27FW3dd9ipeQnS/Ng4oEOYk95E7gY=;
	h=To:Subject:From:Message-Id:Date; b=kZu1mV1ni33TdHpLQmog+RnlNr/jalvfnhguehXU/2bDowTTDINo+ug/zonPvLShcRe9HxnPgI5PeitWMn8BiRpN0CzsLW6wcCTOT8xjZrnPxb9Jd40CJgYT1HesHAUw0UD7aLaVV/gCygj0NoSKkVi1EAaMbsf29WcVe1rXnJs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=diBSLW5i; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="diBSLW5i"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2E78C4CEFD
	for <ddprobe@lists.linux.dev>; Mon,  3 Nov 2025 17:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762190993;
	bh=cats8cIx7k0kiA27FW3dd9ipeQnS/Ng4oEOYk95E7gY=;
	h=To:Subject:From:Date:From;
	b=diBSLW5isNltnTnZi/1glvNO7T7r77j2JkGJdoRbektPWw/PTXSupiFeqYXceZYc/
	 o+Cor8oqoGlgzCB3/2z+9+A9zYOMITYt5jCTVuXmx/m1CjEG3y2CctyW3M2i1+vtbW
	 0zNnYgfKgxZWZ5XVkKZwHAtum4Uhu33daCKGqCTFJRvyP6eVqgC4MPTmBQ9wXmUKU6
	 r5TTbucUZIvX819Hf798NYwsv3ofBppdCrGpYBuiMCB9ySiiDW734kHLjy5wBb1Sbb
	 KL/BnvZ8k11p7xMuc7xw3LUSv+gJZOpLe4cQms3qz4No0IXOnMMs+I4b9W/8Mdsl61
	 KO2WsLSl50USg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93464CCF9F8
	for <ddprobe@lists.linux.dev>; Mon,  3 Nov 2025 17:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176219099359.9829.4005811209646020877.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0c222059cfead1247c90c3899dd700e755d8d35d26fd01faf09211baadc03cf3
Date: Mon, 03 Nov 2025 17:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762190993
