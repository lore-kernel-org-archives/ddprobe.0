Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4BCE31581E5
	for <ddprobe@lists.linux.dev>; Thu, 16 May 2024 21:12:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715893943; cv=none; b=rgMMvWv62VrXqxPI63hVeNHH2vI31O5tQuJcj8ek3qq43i2Hw8XPuf0xnPXs3Oko790/W/FrEijoE5vrdsExlSRn42Ynl7eC5n4tz33Pivz3wEaszgVED7dVI1i++lAJuB/Ps2ogSfhh0UtEjrbYxpxL9RMChqa/iMjLpaMUuSM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715893943; c=relaxed/simple;
	bh=kfR6el1rbEqBk2lX5V4Vo0fvu66qHSeGQcm/Bgrcckc=;
	h=To:Subject:From:Message-Id:Date; b=Vy9gFx8EmHtuJiZU6utJyLgEeZ39WJp3ZP5XTVs6A7CGxQSHYtUJCxFa324vdO3VqwRlKHar17TzfU0YqdsZFLPvHrnyb8IuX6e2JXfJPAsybYx0XAZKb892ZJXtnQnmEZ0bQWt2Ih9UX4HqGBVSnMQqQLUY+sUgFX9b9YMEtC4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AlqUbn7t; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AlqUbn7t"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA641C32786
	for <ddprobe@lists.linux.dev>; Thu, 16 May 2024 21:12:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715893942;
	bh=kfR6el1rbEqBk2lX5V4Vo0fvu66qHSeGQcm/Bgrcckc=;
	h=To:Subject:From:Date:From;
	b=AlqUbn7t47SPdPWLK0bzk0E7sJO4DI6srnYixN0MVsaznQwCCEkptzevc6rdiglCz
	 TsPaoeEAnFjzJIMDIlWAlvYmBQ4ncZu6IMe5s4MIrN+LZ6OC7ifow67PDT3rsu38pJ
	 QQegnBy0x83Ml9vWRWyNgkh9wAU65Cu1Mtyeni3WGPmulZGjYtlNtFtUOeS4V6zXsu
	 e1QGOA9cWD5CALRMC1DehOyCy88urRB4eA7rFcDTLc8UVcVnkFgwvQFdvPkFx1AayX
	 7sb4F/qF5zM7J0qV4UKwQk7YK2kvfU3ia0xqR+t+jDd+SmU54O22F14r4YE8wo4pxh
	 E6By/DzGYEXmQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF9F0C25B78
	for <ddprobe@lists.linux.dev>; Thu, 16 May 2024 21:12:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171589394277.32066.17202612436540976814.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f7099e0574c4b8e7cec65ad39d039084530d32df61a4e2541bed16d293bf9be4
Date: Thu, 16 May 2024 21:12:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715893942
