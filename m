Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 09F0AEEAB
	for <ddprobe@lists.linux.dev>; Mon, 15 Sep 2025 09:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757929794; cv=none; b=tU9xDLb8fRNHuSmqo1ahpKyNdcn4f/pOUqBf+DL3z2rIysH+O9BdS+D7ZpvM1ob/MZgUNZ1IawA3NUakRPZ6kFYLjAtGX2Z5PLEJp4wcXeIvy/V+sTT+7wc7oaVxcudEsxR5rbFG32g+3axaNUOENWKT9DWZhwAt/aGqBreIbO8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757929794; c=relaxed/simple;
	bh=0EnSEqfLoliuucAAkWPmK0WI0S6snmMPwNaAZ5izPUA=;
	h=To:Subject:From:Message-Id:Date; b=ISX/g/pYl/owAAMZzL6KUJW3/+xFcKAHIXxsJxmdU86+1EvWSQvuMmKmdBoLzDjV5cnfK/rAiPcEeEjyPygIB5Yj13gdpvYELoSAKuYmx9UuPQgzJsPrmIViQsHtzJgwOihCHD66VY5dG6dorOorAzIiftxhE8ma5vEEi9dcmAM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dfBqJEj8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dfBqJEj8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DC4FC4CEF1
	for <ddprobe@lists.linux.dev>; Mon, 15 Sep 2025 09:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757929793;
	bh=0EnSEqfLoliuucAAkWPmK0WI0S6snmMPwNaAZ5izPUA=;
	h=To:Subject:From:Date:From;
	b=dfBqJEj8sDigUOJJj4zeOPfzI3GuTNl7JUJqqO6hHzs1XtunrUntEjK9F+iQuwT4T
	 NGHNaiEwa6P9520Rl6a7OQyAzxHZT6R1wVhHUZ2Oc4KktlnV6jw5FiuGVDJ1IoRhJ/
	 33ps6KwD2Qlr6ddjvOWy1Nude+NQGcH9M0HmPrf8GtmG1AjJOAetaW8c4cEXaQVbgD
	 Wt6os91fYKI+0XNWgJucKusVrbdEmt3n8nKjg581Okyejuk5ZK4EPEHrdS7zmfALr+
	 Lw1D5Y58GHjEUpOCW9rkq6C2g78ZhTcBdqBmS1ay2kpgWI/vJGXQ5ZPWLWAUyq/qfb
	 IhUpbhaTjHEJg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FCB0CAC598
	for <ddprobe@lists.linux.dev>; Mon, 15 Sep 2025 09:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175792979358.31877.6355375330163484940.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 08312ef58a2215ac77a5b97e7bcbdeb4f90a809d6394f839532e4b061922bc94
Date: Mon, 15 Sep 2025 09:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757929793
