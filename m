Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35E4E266F13
	for <ddprobe@lists.linux.dev>; Thu, 13 Mar 2025 13:18:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741871934; cv=none; b=Ky2uBVvcbjcpE6gXZ3znzVZWaxL0wWN3OEQIEy9ocfB8WitgKbO74wCZ2tcfV0zK9tWm6CbxObtlHLz30135JeoDsKdhWt6VX0tZQ5iK211InFjEs8NQpiUSCD7S0hMKcYJ8caKwhlbawcYwAfOwwVKQrXVF0LCWpeBnFj0mkmA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741871934; c=relaxed/simple;
	bh=piIRvsISK/k4PcR/kxUbXK2AgaoQowYt9yBlSowsmOw=;
	h=To:Subject:From:Message-Id:Date; b=IgjQTmKbeOm28fepe+oV7iT+mvzhJDqj/NdkKdah6F1FfsNbMa/AjU3oXTkQVamLA/GTVeJzP+Ea3RjB40tAyW1Tm93p19OK3ZliEToDMRLsn0NFEqDgy5JVXrb98yiewxLBdzJT6TAUdHbUyXhaWJaLGmCpDogZvZYlRty45LE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lNB1jn2j; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lNB1jn2j"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF289C4CEDD
	for <ddprobe@lists.linux.dev>; Thu, 13 Mar 2025 13:18:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741871933;
	bh=piIRvsISK/k4PcR/kxUbXK2AgaoQowYt9yBlSowsmOw=;
	h=To:Subject:From:Date:From;
	b=lNB1jn2jGR+9OaHKgJvUTjWUJ1khnlUXgba15P8Da79JiUoLdYnABbnjgitNcS8Q0
	 NYL6lfSXxWM7bjB4pmIYHd8SnsoLf31N817WwRTpFg0u26ClqnrB5ACz3isNsxhNbu
	 G5N5aUnRvwZVSem6y90bw/Z949wmPaAJkrnHIXenEZ07iVmSZV9MJvem9lBjUDcRAg
	 Ax54C3ekieYvy1Cw0iOadocofxR8e/E6lAIhMvGSPclGKmT0PkeQOOeH35yM4nFNbS
	 rARAFh2YvZWx5CWAp35V7/UbOzvW4GT+4UWv49hzwzpgNEVXBrCYTnEXWfO1Frvv07
	 GE5QZ0JR+0t8g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94BA9C282DE
	for <ddprobe@lists.linux.dev>; Thu, 13 Mar 2025 13:18:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174187193359.16320.6898854819222914442.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f113b008bb5c0cfc6898a865978c3a9ab1efa390184d4f01b6fdcdc5cedb2939
Date: Thu, 13 Mar 2025 13:18:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741871933
