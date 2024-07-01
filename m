Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E39C15E5DF
	for <ddprobe@lists.linux.dev>; Mon,  1 Jul 2024 16:05:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719849923; cv=none; b=gkpbTrUf3FR3pXY3PdZhrv/+xE3RW+8H7dmM+1cmkYnYDQIojCfAKnO2nalr/wslWANpR/dgpnNro5kygMghVOyMf5kn5+3XMy1yhJ9DQrAmT7BFe4FsN9y/ygmchhBaWpiLpS5zYbzQTC+izxoTuk0LJvcQd0quVGY6w6TpNZQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719849923; c=relaxed/simple;
	bh=nhLbKZiVj9t4zNVx4RDvQ+om/Azaw7/qqJeSmXNzLXE=;
	h=To:Subject:From:Message-Id:Date; b=CEnf5N+080z+U7ZSJoNdck0Cp2DS4HZF50bm/bANsAaeTWrn/egmsyxd/nPecz0C3Lx0KfSDke8L8gOYi9c7jCfeQArVcvDtcLe7Dag890EI46mVJI5Mzo1f1T1MCP4uO/c896PcVCU/QkNSrYXoACc22t3GHwcPfgnwlSu6wOo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nFMKULDH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nFMKULDH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D761FC116B1
	for <ddprobe@lists.linux.dev>; Mon,  1 Jul 2024 16:05:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719849922;
	bh=nhLbKZiVj9t4zNVx4RDvQ+om/Azaw7/qqJeSmXNzLXE=;
	h=To:Subject:From:Date:From;
	b=nFMKULDHscl6UP2EtOzlt6ig5Zo4i6ACIpJm33nbAv3QazlJsn6Ei905q5ldmOWAP
	 8+ahDdiBg1cd4LWc0GTEfJP5dW6BKi87+AVWbwtLe7yhT2lczSWX7YwAozO64oPzk+
	 Pl+zO8bcPh/5d5EbXrM4n36cTnQ40urPnNngwZ9i70bd9RH6lZBveSZozCVKB9zj4A
	 cqIP+2e4GkzlRjdyzBeaJfl46HXW4nocH1bXMpW+kbeFg/jOHCfs0fw/t+jjtY/t4l
	 I9WFrQLORANXJ7zzqcWcMew5spZPMnBGl9n2a/94P648qV6/v9tS30e/yUyv8YRdSe
	 rP9PI7zgZ/J9Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C1DFFC3065A
	for <ddprobe@lists.linux.dev>; Mon,  1 Jul 2024 16:05:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171984992278.16098.12974175410824526491.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3e6b472ee08087dbb1c1220284d7b122892aa29cab285ea4467d683046a0d080
Date: Mon, 01 Jul 2024 16:05:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719849922
