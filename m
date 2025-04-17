Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4615420F087
	for <ddprobe@lists.linux.dev>; Thu, 17 Apr 2025 21:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744927194; cv=none; b=pR7D6vgRLIMFMaBDNgHdTs1gWA5Drsy++/vTIiNTtZ9ZsTsxKFE/00h6tgoLhfTzGR191sqOP2O3zepMqYFH7gYNVYlqzqOIORGOygJ6DOb2wdyVTyIAdrhnYJ080a4NWbj/TJje4OMtAEjbev6HFggvIZlx6Gab7rqi1ypsKF0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744927194; c=relaxed/simple;
	bh=ZwziebEkbT9Pp1OQkz23Z1HJUqCtSFGdQ1ALHEgseWY=;
	h=To:Subject:From:Message-Id:Date; b=rm6WY2OsASZwBqb/JdU+Zr7K9wty0i5jLqA8vpTzIbQPeziiyfSDd2SkFPajzlufEtJ5FL/zkFOfy6y/FLf7+9k/uinCxdGkC65J616m6sQ0PmMysXJJ412cJxIsiDbtb5yZFgKEtrZDmrBmERV+KzRHlKFsFMsmzcI+r8EwzDg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Jbh3xT7Y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Jbh3xT7Y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B46E8C4CEEA
	for <ddprobe@lists.linux.dev>; Thu, 17 Apr 2025 21:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744927193;
	bh=ZwziebEkbT9Pp1OQkz23Z1HJUqCtSFGdQ1ALHEgseWY=;
	h=To:Subject:From:Date:From;
	b=Jbh3xT7YTJBnygIt4HH3ttfnwk1MHeRGxj33VMxpVIwK2+7aElbvB4qFOkHQdHteu
	 dmkjuQi2SVVntmYtH4a64xeuNmleVJz6DN3GLnuUxmwPixzEjT3KPS3SvxgUT0rLMi
	 tCRG5XzXuf7nHJch9L79GL6xgBwFd19nQfsdP0Oy/zEsPh4JvI/jerzuRY8i3FAFyH
	 37BeV8L8ZLzn6hZ7iKH7xPvdK1pEAQ8sFTxIF6aMyGga2CqSTejSIqy5aJlfHRKvU7
	 j25Ho/1YleWb39OXxkXJ5cPtcT9+gx0ecca9PRJ/UsyBJXawsqEJ4YMPB3jVKm7oYw
	 FMhoNtbLpk24g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0B05C369C9
	for <ddprobe@lists.linux.dev>; Thu, 17 Apr 2025 21:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174492719364.16389.18148863542086319580.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b32b57331bc69e63fed7f4ea692eb326d7e05600b664cbda13983b170e3d4c37
Date: Thu, 17 Apr 2025 21:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744927193
