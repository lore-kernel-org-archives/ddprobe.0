Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 55C101A83E3
	for <ddprobe@lists.linux.dev>; Sat, 21 Dec 2024 06:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734762954; cv=none; b=kshrSDEyzAIW/fcXUpZ+VBUOlg45PLTy4qyUtUsV5oXgY+YfVO1sSck27MO0Z4UOW+6VWfc/WQBrcNw4yD2nF4yGKTi3Su0vSbC5iPXOcfPOc2Z/HRoZfNH5/iKrvk6S891uu2EAbGgf91J+ToxhhKCKCLGPMlMJO8aR3YZ1qzU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734762954; c=relaxed/simple;
	bh=0eqQHQi1G/Gp7Rb7FdXop3mJyWLjKV0ub5a6kZ5f7SY=;
	h=To:Subject:From:Message-Id:Date; b=G0MjoNceQcuLxNGAQJIizGS2dky/zLW63JZCYohdo4pvjp3wUt3S85xZagRPC80xK5/s6Y1dGWRn4RPNS5nuZ2Z5dNGrwwffQNKvNNPk3XISrnGZ69y57gIv51m08OTJ7XQkFoAku4eB7dEAKiDkQY7sYcQSX3wBhstWQeYg6O8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YwT7MbAC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YwT7MbAC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6926C4CECE
	for <ddprobe@lists.linux.dev>; Sat, 21 Dec 2024 06:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734762953;
	bh=0eqQHQi1G/Gp7Rb7FdXop3mJyWLjKV0ub5a6kZ5f7SY=;
	h=To:Subject:From:Date:From;
	b=YwT7MbACQk4hIb6saUiMwpDE9QFrNIgXenBJR2HzAC4CQTeqL+5x/1VjH2JD/1wes
	 +vM32oYUVQgf+m3FgA+xJLhX2ygW8ibvP5t3U9v8ZCsZelznY8/wxEPxS49P3Mt5hp
	 tp3beGZkc9DhiswO0nBLNH0/v8ypxFH2EIa2ts3XOqjTBndK+YUNhlhM5ivtiXz5wx
	 uhn2d0+/EBqs0rUNI2NFbQ7yuzdtMqa+qmbur5cb3tKx7h1SAgA1pYR5abZwbSVQ1n
	 tEkH+ELqlZe9VcOj0d5swjK8R29xrArOdqaf3vKszRnfhEVxyy0gcW/0ExWH6pfXXq
	 rGte3jKOM1Zcw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E484E77184
	for <ddprobe@lists.linux.dev>; Sat, 21 Dec 2024 06:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173476295362.29022.16791822019252457961.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d66748af3edf4016c9e29a71cdd91afadc3ba47758ed7a1571e2d313398b2317
Date: Sat, 21 Dec 2024 06:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734762953
