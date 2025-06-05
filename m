Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 239A81EFFB8
	for <ddprobe@lists.linux.dev>; Thu,  5 Jun 2025 16:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749140994; cv=none; b=dtv765n/F969uT2NcdhlqgBA/ZuzrVA1q1jiMd0tiQZJXenDK7nMMv5FUCJemHoUmaOxDL+OScUVtgmWKvdAfMNbwuXBB+Oqz01lVkBAFmM/cCE1rCbUt6J7szDfxh/W1upOcsnzUD5Ry2RnlZhydXDBcwnjWRRFZ1HdVnYojGw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749140994; c=relaxed/simple;
	bh=KKV8JA+XfUirM8/432j5d8gPd1j4ckXbKOf3j7/yWZc=;
	h=To:Subject:From:Message-Id:Date; b=Vo7RiV1ix8zmzBY1sOHhqbCe1vY406WYC9r/hDdoy/w2F0+44Mka7uduX6VLJdwf7om3GMsCHJd4M02b+uwO2/M8VQwasIbEaJR4Bijnpbj1clXRAp2ab8/qsqjusr0GC9UxVId5DAmGgfmLkBCb8Npwz4wTX8on5dSJ7R3bt1E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kN5/ifej; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kN5/ifej"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1C3CC4CEE7
	for <ddprobe@lists.linux.dev>; Thu,  5 Jun 2025 16:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749140993;
	bh=KKV8JA+XfUirM8/432j5d8gPd1j4ckXbKOf3j7/yWZc=;
	h=To:Subject:From:Date:From;
	b=kN5/ifej6ZKzlqXRxeIhSg9ClARqUItL6FClnLNmVD7hdjLwA3z7JSZo4HFBdqbzq
	 Z1Hq8tiqxNxxuQfhS/BBA0dqIvOzSwkuqmJtjcSOtYVDfBun+xInBD6g858j9NIijy
	 QPG+V24Lv7Nc4ZshP+vylEmeQdTKglZ0ufhBCEWI4aUG+SHzTb0kvOnryEOKeoUyrw
	 vZcYU1K1nxV86tpyVUkYKl/b+iosQU9+f+W/+QJ6BNFQG9vIoM5H988bWwEbfXAfjr
	 RIQNzTIuSlk5aziQl2KA5+K/XXxVmkDTHLJF+qme4oqTEgJvQCZ+6mp3VQeeYJIU4l
	 sQb811pfqGeVQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90DD7C5B543
	for <ddprobe@lists.linux.dev>; Thu,  5 Jun 2025 16:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174914099358.4485.6555863044875581947.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 16ad948748e7208cc7b9a8ec8349dbef7e3cc410afa8377ddf33fb62ec35d4da
Date: Thu, 05 Jun 2025 16:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749140993
