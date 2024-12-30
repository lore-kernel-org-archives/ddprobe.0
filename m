Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35CB71A4E9D
	for <ddprobe@lists.linux.dev>; Mon, 30 Dec 2024 12:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735560954; cv=none; b=gos40nhoyAWubpDphV5SCG2PouAgwY5d7ZxER9YOnc0HgJ2TcTTxGr7Ytu5sYSD+uPxUED2nignKyLkaoCxRdFLfoUSyCO2ZLsbEEqkwCSXupDDfUYZ+c7J3lX/WZ15gAq2eJXwUboo6TZT8oKEmYX3KMSHgVMeKDz7ysuSoj9M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735560954; c=relaxed/simple;
	bh=DDsCCSmtxtQqwquXoLsRlUOJUKheTw6t/D3E6ZVZXOE=;
	h=To:Subject:From:Message-Id:Date; b=h7Nr1qf+8/3meGxyrl6lZlzzMFUeR6iPNT9Ln72DrlEfWyzPr7v6VDP9bgZiY5tsPUxgcV72taE9PGEjXHNgmUjciKi0jdf573GtyfQi9TlCEJi93njLiIGEZA8IxtZSLdQiYoxp2wGkhDWpDs8qDN8XlxY+g/bB0BIL8IyCCCs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cDG/gMpP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cDG/gMpP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA93FC4CED0
	for <ddprobe@lists.linux.dev>; Mon, 30 Dec 2024 12:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735560953;
	bh=DDsCCSmtxtQqwquXoLsRlUOJUKheTw6t/D3E6ZVZXOE=;
	h=To:Subject:From:Date:From;
	b=cDG/gMpPIFVAs+sxXtilgSQhKYf4gVuhU/QQ73KjLe7OezRu/bavw2eZ1uOn8TQmz
	 arpW64bfXyGZx5k9WTmTQE9E3PdsGGNRTiDGbViS+C4LgOMk88w9fOg5Ukftq6XD3L
	 i3OvWUFYDOYCKoEnbVpJ/bL6KGpKhHz9RIgRWV67Fl5bwokmILX2cpHKz4svWClxM9
	 vQNbE+PCbDLXACT6mklrorKIwADkbcyByPJXmwf6ow5yBOCZWCxIe+th5hCr1mVM0Q
	 B5Z7tk8PpZ8QTbkFEobPybgc9ROrMx9UTvlkUsxWnOfWorx9+Q3QfcEuNH4W69NPSH
	 OeImB6ogOovRQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96AABE77188
	for <ddprobe@lists.linux.dev>; Mon, 30 Dec 2024 12:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173556095359.1187.4836170196160369909.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4ae141281ac3ca1b1aa71d1f82a11d0258a2d439cac0a228386ecff41c39c32f
Date: Mon, 30 Dec 2024 12:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735560953
