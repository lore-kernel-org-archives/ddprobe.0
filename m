Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E57112CDBE
	for <ddprobe@lists.linux.dev>; Sat, 13 Dec 2025 04:32:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765600374; cv=none; b=HLktfg9yY+7xCPaxuWLOdQjz0wQgUyWNQZCz/4yRvRZDwkseIlP552CgouVbDqqttkJ7at6NnVhg1zw/M/y1ea0Nwf2ssOMed1KQcRzldf28RCLxbe8QTjqAuwWbbncwS6yYOkE9hu58ZgzDPSbzFJzPyXTw8NzJ9bat28j4Hto=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765600374; c=relaxed/simple;
	bh=vwQDFkK/pEySLXkEY75P80ph/5gu02ZGAcNcbdP/zZs=;
	h=To:Subject:From:Message-Id:Date; b=lXRUFzZYwFj0qIGVlNbqIQBoGgMocg8f/TqPmL2xHM3ceHJFPR4jH/W4D7gQsp9xYFNLMHR/L9+BVj9HptZdXsY+cnYDd2Mrm+h86ThUd9G5YCZTjuMUb55UElR28afz+/ZKmn5bv+XxG1IPh2M6/WV0qhxbSJ1AAUEQyjVAkFA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=liKo6DHk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="liKo6DHk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB8ABC4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 13 Dec 2025 04:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765600373;
	bh=vwQDFkK/pEySLXkEY75P80ph/5gu02ZGAcNcbdP/zZs=;
	h=To:Subject:From:Date:From;
	b=liKo6DHkyj9u/uiP1FlGWB98hgNxmfyYuFmdm774lfu75zaaQ5tFXlZw7lZwNv78G
	 7eJsrxuWEym/Wm8aw8k5uBDsu8rstEWq75irP81Jez1n/j3b6ImdVzqDhU2F59YXYt
	 KU3tb07ICTEG0ZVwBuTlOJRgMrzDPU6k9Xj0psnJP0t108PzYl0pLu4PsBLbxNqz5g
	 hP6257uXG9pmxVSJ1MhUacyvBnfo+s+UfCW5r45NhnNH3F31RdAhRgB+xY++tlH6dn
	 IYomF9Giu3gRXHH5kxESZAqx5UUbdiF1HOMyS0XN5EQu0+lzi+W/r1FNhJn274qqiB
	 eYIKh9C2L2d+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98F60D59F74
	for <ddprobe@lists.linux.dev>; Sat, 13 Dec 2025 04:32:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176560037359.20142.12118534177848014745.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ca381d413fcefbcbd9d2b5beb7ec1507f4c649b140ab2e1254abb6f3ce97173b
Date: Sat, 13 Dec 2025 04:32:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765600373
