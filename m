Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A7B625634
	for <ddprobe@lists.linux.dev>; Sat, 12 Jul 2025 09:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752312594; cv=none; b=AWbeXWuZU5XvzuAist96gjuLWL0fhqbiXJVxg4r2kz7P9Mhs3d5EcSLn/kNMd/AOAvvYPebWu6V6vyJhgu9MQz5aD6opzP+wotvQOPing21GUaBrqyuQZmpFBFKZoAdfS018O4Y7Rw8OQ8wBiyePepwUjInzttbNWqOYZLEmYy0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752312594; c=relaxed/simple;
	bh=h2o11yVr1TmyiQvCwQ6M/4s9oodpdyOnB24ahiA1d0o=;
	h=To:Subject:From:Message-Id:Date; b=Vl+4ivxu2lmIO3v9Ju8by3h3hazkVN1RhvxJSk1YoqHmSpwr6NgRANKXhWbKEM7lx9nXRPeCkquSxuqdwDDanRczhgL4pcTqZA2w8cBRi1sOCnMPglr+stZgngj2fVyYA0qRIMSm9QHje7ZJ4wos9DtJBTqhYONKu+Xs6nIgKeM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gg697Iur; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gg697Iur"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A06ABC4CEEF
	for <ddprobe@lists.linux.dev>; Sat, 12 Jul 2025 09:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752312593;
	bh=h2o11yVr1TmyiQvCwQ6M/4s9oodpdyOnB24ahiA1d0o=;
	h=To:Subject:From:Date:From;
	b=gg697IursOyl1pU4Ay+zllcYWKe9ZuCm+q0Tx+VLk3jpYcCvuzaIcP/CZ0MmFgjPM
	 JwiJdsgg9iJLfIg6oZEWiCEowUdMrHDEpGOOaLxgCpAO6ibdD+4yN3LbsguK834JK7
	 wOk88rQr+ZJhvhn9eENPSF3hes8xzen8SHB/ym4y5Lg5DBetfolthV7W/TZTslQSRA
	 Nnk5Z/aUZK1BK978maIBtD+KpJaf3+ISrbPN3QeLc28EENZqUzf0ybOhsDkD4lqJPm
	 3eu8q82WpYpwtp4g6yhMjzqRHRNfIXUgfaGxGSC/as7H9fd7yC8BfESOCQ8Lo41/Cm
	 nxVc8IFVoMY2A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90430C83F21
	for <ddprobe@lists.linux.dev>; Sat, 12 Jul 2025 09:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175231259358.30833.596388971924746194.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 89fb8aee663f9dffad805d102f0e9a1201276ab1cf48c04cc779c5eb0ac928a4
Date: Sat, 12 Jul 2025 09:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752312593
