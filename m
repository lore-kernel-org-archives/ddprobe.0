Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1814B33B6FF
	for <ddprobe@lists.linux.dev>; Fri, 19 Dec 2025 15:23:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766157835; cv=none; b=lZ5DcIbbKIZhYxS+J06arV9LdRAgLUJmQylu2Pqx2toOZeZHUi4WEKFgCg8DREq6y1Rf0cpE1GYZ5WNY+RyyX0vosGDUiSir6iGcO2szwHCCM5lsbJnJs5xQiuML3igYBYAO/3s7OxYwiSFYzS3/sU++xSvihmfqm9szAgbBx6Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766157835; c=relaxed/simple;
	bh=xSSaDTaZe5WyUeeZ0Kk0+qT/3+OH6JEpfPJNiQKFxeU=;
	h=To:Subject:From:Message-Id:Date; b=aCPDDzHz2K5vsri959c4gQG1MXH6R6euSxAlXVxL/5OoadzV+Oh3Mk7pfYQsReU7l8dZl68yRuaWILuCqoKL28LuuMYKXqbt5MoHpwaTPDEfKEZccV8TUs4EuJxFQb4syfPWx3QSfExZ1cxRwcJgJOUaZgW0vJXkTQnUkIYLQpI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gz99eO8x; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gz99eO8x"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0443C113D0
	for <ddprobe@lists.linux.dev>; Fri, 19 Dec 2025 15:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766157834;
	bh=xSSaDTaZe5WyUeeZ0Kk0+qT/3+OH6JEpfPJNiQKFxeU=;
	h=To:Subject:From:Date:From;
	b=gz99eO8xlP46s7JyIaxp1Wf/vtjhxihcvo/HGafgA0I9mhCKUpTJTRSg65O3rBvJs
	 g4qgUwGHHX+tvPMNj6RRNZ4Fnd7QzhoGLty4+84NCqRQkEpxwc3LCzCmc4kPI9Tezl
	 RMV2x9rAelScQqdwMQRXUOZLdR2MI4SgkIVb1/umy25eVxdNmt/vcF9rTqAmIV+1Cv
	 5zgzCpZB6/JyUNIjKjuUDkJJWr1Sn8DzYTt5umzVC1eJe7WBqC/rGRX8gLesQIM76G
	 D3yvr/41ByS3QFnGUJbrDiY6iaRSma8SNQfCHdoz3Tymzk7DdtWtS4pGYpQG2BHCHW
	 yH/QpEJ0v914g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FB6CD7878A
	for <ddprobe@lists.linux.dev>; Fri, 19 Dec 2025 15:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176615783357.5507.551596145885471197.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6c34d03e39073fadf6d8a7b6227348dff607682efa68abd9060f2ffdf9f92068
Date: Fri, 19 Dec 2025 15:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766157833
