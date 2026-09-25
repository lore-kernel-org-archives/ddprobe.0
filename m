Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3ED2048F836
	for <ddprobe@lists.linux.dev>; Fri, 25 Sep 2026 12:50:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790340634; cv=none; b=VhDncwAP+JKoWmzLbSrVOm3FjD7afSC00KUUMRzmXHyO9CPvWp6fllujSg8Rwc5OpWeOoNen6b17biGZet8xLMFy8h+B+huN3OrUMw5rTyeMpRPyNuXn5NpBgMWU7unDYDHzHsOTVZIw9zvsCkp1iBQhlOEI00TYlclo9m7I9Ds=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790340634; c=relaxed/simple;
	bh=vQUYhyZaKcTQ/9N4RLu/JyPRXxzZwx8CPcKVb+Pt9rk=;
	h=To:Subject:From:Message-Id:Date; b=Pl/Gk604y+DTvBKZvPVu3EkcZTemaFpiTxQzt2zJdV7yYQt5RNVwJJJxQq4aHUJnMuTEJ5u07+3TyJ6djfOxVOMllpLZsegMIX+tex1qORhOeorxB6P7ZE7AjIwC1Mlw1SyEKuWaCH656qv3Xx0/Vy7iY7Xgz8iRqSieZHW4cPE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=U1hJ/58h; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="U1hJ/58h"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CBF75C2BCF6
	for <ddprobe@lists.linux.dev>; Fri, 25 Sep 2026 12:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790340633;
	bh=vQUYhyZaKcTQ/9N4RLu/JyPRXxzZwx8CPcKVb+Pt9rk=;
	h=To:Subject:From:Date:From;
	b=U1hJ/58hqs1YjTVdkIcMpTGsB4/YIOBAnrD8RPx4u4g34EkPMII3FDx5ALYz5v7Nz
	 Agy7VIhiku326kf9eUZAjkhf75bV5mMju6YGjoF0CAhcaEiYIMt53/MuzN0PctKyrx
	 /mujwn1+B6aJjgjfRHS6MB3iyxpULhjxbGc+J1VGHWk/86guoa/ZRxm++3jVcg2k9d
	 mvz2jVubnxz5Hd1YSM/lb1djw88755pq7sMueIF6VYp3NpP1JclGhwY0MjHeTvXzZ9
	 cgkr2v/5i1VqZcZFa03FCHvPV+hNDFyD4xlTvc+xbFRw9BgOk3xv2DJejFhHql+Buk
	 Rmkjy4rNXLwCw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABD69C9830E
	for <ddprobe@lists.linux.dev>; Fri, 25 Sep 2026 12:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179034063369.13954.13507337552996147870.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0c09eb6b302e90e60d18ff22c2a8223810a18d6ca096994b806903f791a11d71
Date: Fri, 25 Sep 2026 12:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790340633
