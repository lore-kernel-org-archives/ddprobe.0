Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BC5249B5AF
	for <ddprobe@lists.linux.dev>; Thu, 10 Sep 2026 22:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789078234; cv=none; b=Wp0qeT11GpWG8JEORUfdBHg+tpXQbjxUr3yneTIYsmOFchXlUjuoX//fV9/pJb2/nB/uH6vAiVNagOYYluHxuSWEKOj9p//v5P350mGT3WYfkfznhL8GTxmd3oTi8oSSolPacEvH4pyYBpSivbEpZDNDwx+7qgRpjfSczvCHUkw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789078234; c=relaxed/simple;
	bh=uz3Lmk8BziMKaMmbcwrd8ZqAxs7dCfqEu8cW57anNPY=;
	h=To:Subject:From:Message-Id:Date; b=c87Ke7W0rZYbt1/xhf4oWshawuvVWwxMPa/duDTtz+CPkQQ0AUXJvSa7AQxXabNzQ7p/KO5TQcLzftVl+MaSLa/d5KsW54xroJzEopM88bTC/CTxsHffHGqhMK6zDZeJikIzijbUYKqissQeluWaKAfWr549n1fvQW5jj5n1g3A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Q0ionbEx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Q0ionbEx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA5D6C2BCC7
	for <ddprobe@lists.linux.dev>; Thu, 10 Sep 2026 22:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789078233;
	bh=uz3Lmk8BziMKaMmbcwrd8ZqAxs7dCfqEu8cW57anNPY=;
	h=To:Subject:From:Date:From;
	b=Q0ionbExvbwi3IahQ/otLmBqg1RAgtFbyVppMq48xbyUF11sVJj4+gpGbznBkyjsa
	 D9I7+lpKJYS/HUeY7LjpaYgPtoD+SHX938Edrp0X4OCbKMzQugxSZbiCBDEsjtTPh1
	 A96tGC00zMTh60CrykGeJCyKUIz/F/1tCIRgwIzAxNSOk/uBZvyMKR3uqUruqAqwPN
	 x1thN3U+/2I+ACipcpGvbdFUI1z20bHxTGPYxKPNEq2LjY4RGG7WtApHRti0mFsgjo
	 nUeHDIDHzk89bIGfRuiQY1UWOVx3YUeYdKepzFOrpgHUATYS19zGMsyFUOZThAPqzR
	 IId9jQ4cC4dpA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3D11C88E41
	for <ddprobe@lists.linux.dev>; Thu, 10 Sep 2026 22:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178907823369.20488.9494425723722498558.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 277ebdf8c17219817ff8faf1e8aa252a4eeee1fa702137e3638038bd9d22df6c
Date: Thu, 10 Sep 2026 22:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789078233
