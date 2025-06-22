Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26139AD2C
	for <ddprobe@lists.linux.dev>; Sun, 22 Jun 2025 01:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750554594; cv=none; b=rcVMB3wdH5tE58llidjsSQWQIph6a1B6jXByuk2ZOK2v3ZiFjnIJJshqzWUi1A7wdMnp+X9VMKnTMSxYCtCJAb2xxNk1hQ7FopIr2Vs6RBYw6vvs9KdPLSLUsuwJx/8/Pp3xfUaqBodwK++jj0qjjySO6Tx2kC1UuALv46epwNU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750554594; c=relaxed/simple;
	bh=sfvlgEVXDdhfipO1kGsCWt9HcsJv1jsPPR+Ulz/lEjk=;
	h=To:Subject:From:Message-Id:Date; b=POysQ0+xz5rDy2HmORLhjd7GBnrrCvyExN91CNBI3n68918A7nalnUkl8YCNWbHfBEnYsCMLiKoJFq53OMf/hKZ2OjwsM8B53v7iFRws8BkAuFPLNE0sSAtK7VK6+9k3kdu4aLNqNiLvLPHkEIfRrlsWIqNmLCdZPWy5wBx2h24=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ekynI87W; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ekynI87W"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3BA9C4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 22 Jun 2025 01:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750554593;
	bh=sfvlgEVXDdhfipO1kGsCWt9HcsJv1jsPPR+Ulz/lEjk=;
	h=To:Subject:From:Date:From;
	b=ekynI87Wi5rBpb5EwuIjEj0SbQW70zqLU2xmdXaVzIm0ep0inGAOFNstm2U/QgT/Z
	 cB90gyQTKoLY+sI7BiQgT7gUCBOHYbXzYxp9PJyQgKzgfzkqv2ao13LLW0PeafWM7b
	 +TCiyvswd4OnrdNXfDWtFbK0l5iF2jhDkif8/H9NDgud5QSywUz1QQ3YBE77AIPakw
	 KLIOILCv7rGEFpDzFCkmmxhiAbWAG3qnBUcJRp9FSWZmkUAIuKV/0xS12lG1CKQSOh
	 R13V6sI7+wckllGU18fW0jofLqna1kKt+5ZGvp641ki7EvOqbyNa2ljCS0vPd8r5JY
	 oyh6tcaljw1bQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90F10C7115C
	for <ddprobe@lists.linux.dev>; Sun, 22 Jun 2025 01:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175055459357.25490.15772525394199446232.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 64f7a755ae0f01d97f2b63163a2b5a30aeca9d563b942dd22651b9500dcb16dc
Date: Sun, 22 Jun 2025 01:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750554593
