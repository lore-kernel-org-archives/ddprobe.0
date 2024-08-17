Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B2901FBA
	for <ddprobe@lists.linux.dev>; Sat, 17 Aug 2024 00:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723856154; cv=none; b=YArHWoX2gA/FB9PSf6xz+CUJUO46PaXmk8WRz++zNNyQF1CW0+bkKkxz7SS/mgqbf2tPleR5rbKSzNyknOkl4GQUy6YsaTAYTECEWS4E3KsPs6Y9VKR8YDMjeigMt/97C9yfkx0LW04QnISHSa6NglY1TBLNGWQUM7Toccs1CXE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723856154; c=relaxed/simple;
	bh=BgkNCW/RggXfIpH0XKMvgW7f73pUIDZJs/zWBNnpZck=;
	h=To:Subject:From:Message-Id:Date; b=nCTSd/hCv/fYDIvQC/oahOZ5kV6UE0Z8EGKwobwx0mvqqqZwgksg9xY3hIXf+Nm1fsqgGm1HBpYWkcD88Fs5mUONStD6NPxKFXlmxzOdEQ/gr1QLzj6ecYRKH6BhMMly/JqkswAU7LoQC+Gk/IMDZ7Bp4osX8yJy2XpYkr+fvIA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dWr2QeOf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dWr2QeOf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8701C32782
	for <ddprobe@lists.linux.dev>; Sat, 17 Aug 2024 00:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723856153;
	bh=BgkNCW/RggXfIpH0XKMvgW7f73pUIDZJs/zWBNnpZck=;
	h=To:Subject:From:Date:From;
	b=dWr2QeOfl3WMA9QDOs8e9UVOjI/LKbJo/BwPC/3xOqy0Hjq3uYVrFbBFSJQCF2/B8
	 /ar4KcSDNzAeL/uHsO0fR3gf1WRrNG8KkVzfdO07GSlMEAgR7wGIh7jCj+lgZqEDtj
	 pMeN0UZ5+s4QNygSNp7wUJx/T6v4DJRH3vxujdFBJYl58YPTmZ6UU4YG3+ZAwHxBOl
	 HOg4bFzE1YHdr9pucYGRodoP44yLr8LN3368s/5L5jlVKP2IIBz4fY+2u6D2EhMHGG
	 1LewT+atDOvFvGNmLET7oRW+/M+KzppaVCTfY5Z9rcZ4SPoiwJP0d9twvq2rQgTPMZ
	 rh/wBbGiqE9ww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93DD4C531DC
	for <ddprobe@lists.linux.dev>; Sat, 17 Aug 2024 00:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172385615359.22530.1993221062945196427.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 27e0283504ceeeac4692e6055629da2000cc7890d59bef80b59db1d15590151e
Date: Sat, 17 Aug 2024 00:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723856153
