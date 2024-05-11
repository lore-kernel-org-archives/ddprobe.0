Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5662B17F3
	for <ddprobe@lists.linux.dev>; Sat, 11 May 2024 10:12:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715422343; cv=none; b=irN0D5IQJtKFqw0yWXhLXtWzBm508dGM6RVC8q6Xz/quu52E6G760QWrtmoxJk7eYUZSAHqjuQKGIQWRpIt00FdEed58V55Kx97kKjMlHzls8pLKmj7AqYrGcJV08/8Q1bazrbk8Xu6CtDFHPoM3f31xn1dZEUpqwQTRtcInLvk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715422343; c=relaxed/simple;
	bh=IKWl8DhMy0nWl5mGXxkO4Kvy0DkJnMJFPgBuYEJNjKo=;
	h=To:Subject:From:Message-Id:Date; b=pdVIBN6COFk1wN+LMqnaVZG4pXDsgAQwYgJARIie9/FG8fR3KC4y9LoLr3yQzCwKEQ1LgnYss0qYJRS4/ZztbZUonrcG3w8VsVtVzQ3ndDVYAv+gTtUVIm2x3PEST/3Br4R4+GX6sqpAX79dyumHTWOewC6Dtk0N/G5V1IrB41o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qCyqn69b; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qCyqn69b"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1F41C2BBFC
	for <ddprobe@lists.linux.dev>; Sat, 11 May 2024 10:12:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715422342;
	bh=IKWl8DhMy0nWl5mGXxkO4Kvy0DkJnMJFPgBuYEJNjKo=;
	h=To:Subject:From:Date:From;
	b=qCyqn69bzQua5mcYoCV/u3PzLBf5EUXo/D+Sp84nT8TEBLGErXfeP47cx4KO5NFpd
	 BB1DjpNELk/sOoIE92cJn/5UopIll/ON8+0Vk2U5Qtw3enbCFnFCrPCNM78ER2rw5T
	 GfMdGG/rpbVXf/y5OzNvpHYWFgb3xQmIgD+PurwXsv1aGcnOviszb99i5q82SHQ3RD
	 ApxVtZZNtMMsCh7alY35JQ3kWEhTM9oWfft6WRcl7iBMO0upqWMoi8c6c2u54h/nlw
	 3hwXNQYwwj5IbxNwdHarZcxnBt7WGuupOx8OVdwMIp9zJaWA/JEKBNDwuYG0kvMek4
	 XOzcqQY0tYnVQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C08D2C04FFE
	for <ddprobe@lists.linux.dev>; Sat, 11 May 2024 10:12:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171542234277.3193.17591014191818411456.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0b5269c96b1d8e4b460e7b1bc00981e087dd9f3b2389c1314f1f373a8ce39199
Date: Sat, 11 May 2024 10:12:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715422342
