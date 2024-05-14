Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D1A61E536
	for <ddprobe@lists.linux.dev>; Tue, 14 May 2024 18:52:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715712743; cv=none; b=VwU+X6tungK7C6dEg+/NmVJjFL8o98NI0rTNZTJgJlhD4jlzOsOuAONPxkWdEFIRoftwNJHF4fvHkjaMMPZfex2ZF46T/VrM3FMeq6TRWA9lCnRkiq87EhqBBSbyyRHZvLjupUEcL0vUQoeidiX1zFThPBUgo02z46NrZ2SPtOA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715712743; c=relaxed/simple;
	bh=GIEmH4QvICW8rOmTkULwFrStdlkHyBdJquguHbnso78=;
	h=To:Subject:From:Message-Id:Date; b=ZKvYwWs18lnE9n8x8APu/KSblfTxzLVdnXfFcljBd3HvJEoxN09SgJpRISzqdcrHAM+f8iCe2pmrXrtooXTtaPmHJEg6nCrq3lIyLh0qY+kkuZIDLEzqDztnxkOmQ+LX8Arqui3DMtKPhwg9mnsbKTKQTdGJtcdBHOHZ+P0gtgw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rXzH9twB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rXzH9twB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB6F6C2BD10
	for <ddprobe@lists.linux.dev>; Tue, 14 May 2024 18:52:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715712742;
	bh=GIEmH4QvICW8rOmTkULwFrStdlkHyBdJquguHbnso78=;
	h=To:Subject:From:Date:From;
	b=rXzH9twBzuBmOBfYt6kP/xUOMS01lV+ASWZRdl3ewh72KE0sEkgVuX+6L8adFPxUe
	 pt0hHQ05ppQI16BPKAS+4R22iSRG0EGar+stAlv7wFJ6hIsE7xxjOXeB/baXmD8Vpt
	 2gQ3uEyzV+eDH4p+kAsgOL0TXkBj+990LIJLsoubGMaPFhsVH20v4zLNZRYpjGbQv0
	 rxOuwA9RxBgjOO0vZSWHoxy6BmJJqFte3cW7Fz0ailsjc7fFzqQEwvwD4kKHm+R6V+
	 TJTu7+Epf0QOBpM8Je7KnkbZJDoGdld+lcUj9Mn1hOrChhR9vNKpB6Gn8uUfKQ7rPP
	 wMvmas8QC0gYQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BC4F8C04FFE
	for <ddprobe@lists.linux.dev>; Tue, 14 May 2024 18:52:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171571274276.1277.7204846052838980391.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 511f80e7c14a9e847b3f253201947d26ac407576d62c39b0204afdc6672473ea
Date: Tue, 14 May 2024 18:52:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715712742
