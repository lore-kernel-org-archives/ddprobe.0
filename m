Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 00EBA2AEE1
	for <ddprobe@lists.linux.dev>; Sat, 10 Jan 2026 09:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768036434; cv=none; b=ule12UEbc2+e7YmsL4i2QVsI+zlWMYQ8zFUSrkrwRMCxc/Ty5cOZORt9U6s6nQYeRvs5Lzj+bXxtv2R/ieT1k6j/4i8KGTWl3xtRzmiXPJab1GO/xaBL3r4JbGOMqWUZtbnSVCER9Pnpgu0JHUEeugSN3/6dHBCSaZJYieF20IQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768036434; c=relaxed/simple;
	bh=xRNHcgCyuClKrdy3+Hys5P5+UTP6MyCxbYUmHhfioaw=;
	h=To:Subject:From:Message-Id:Date; b=TO76zzJT7kCqF1VWBvTcjWbPB6RYAZNfygxRp3Vq49vzV8UWYnTp/FVz7dglgM5+l/pKIEW5dmQtC8dezKCOgiz+qjh0CDRtRy/plTJplyc5iU0xEuB/N6SnyDO3OADfHrkKDGWQolefPuIFkffYdPdgNIyk6huTIUC/KAgmpYc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nxQeFsp9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nxQeFsp9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5B95C4CEF1
	for <ddprobe@lists.linux.dev>; Sat, 10 Jan 2026 09:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768036433;
	bh=xRNHcgCyuClKrdy3+Hys5P5+UTP6MyCxbYUmHhfioaw=;
	h=To:Subject:From:Date:From;
	b=nxQeFsp9aE2Q5m/l/oYBxnfwgyz039pxFIxsot/Oxv9jh6prQLkrNzes4qBifD3Vq
	 avfC5bUq+QCQSoi+TLiNkn4gHSPbYRL2syaQNQ/C3NlCAt+uZK4UbZ0gA9lwIt+1fp
	 ftsp35EhkN5I/sydMf0UlcxeDlLJUcaTSnCBtkPCDtRinlcBSAkNM43CELc3OHa0uL
	 N0FCK/A7MbkdLfT1F7qrgFCV2kxgJbqYQVQcz+thQBe17XzHHdlhcWhBbNj/e2fSN/
	 /NDA3XJHcmL8VQ5+1DSMklhNZRQ4WTX08LxSKjfxNZH5EwFyDSdA5MtbC8fG6VYvxa
	 btGjzW/nXm50A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91A8DD277D9
	for <ddprobe@lists.linux.dev>; Sat, 10 Jan 2026 09:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176803643357.13108.13405394397493889224.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7ce50de66c79a763d679bdbd5c0ecadec1154a8b0e6272d5df01d4bbd79fdb3e
Date: Sat, 10 Jan 2026 09:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768036433
