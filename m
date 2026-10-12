Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 51E4D4156E8
	for <ddprobe@lists.linux.dev>; Mon, 12 Oct 2026 10:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791801034; cv=none; b=uKTXyN63W+Ihl9iiMAt0ymeQMDuVsps65XbPIc31jNNKsDeNuKzQ7Z5mqW1MJ8bFmNlFIAvl9bxNTpzM/DYekBEMKctzt6QX5Tc5Gz+GVadDCKjvJFs7ECnUOK6MO2imRPkYHV7GDcd+tWq7nsqn8SAuleSu/g/HvRxOFumrVwc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791801034; c=relaxed/simple;
	bh=ycadDwjMU22+P6+UMi44I/tOFEGxr6Og7IaUJ9SlyBo=;
	h=To:Subject:From:Message-Id:Date; b=hOjZLAFTVbHA+7M1YtYoNPpgM2Ok2K/z7YAC5ekdBkKkTNzpqN/p267C7y4F0ro7nZK/YqgHCc7R6xR8DzPil/tivTuC7ERGtwMhflm01U3xVqXtMSPpYvwqcyAlT5g5Y4yFKFPoJoq0iALUPU3mvr8FN5YPUf6s2GU2rL8epJg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=P0ccrZJY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="P0ccrZJY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9964C2BCC7
	for <ddprobe@lists.linux.dev>; Mon, 12 Oct 2026 10:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791801033;
	bh=ycadDwjMU22+P6+UMi44I/tOFEGxr6Og7IaUJ9SlyBo=;
	h=To:Subject:From:Date:From;
	b=P0ccrZJY5uNDeJmglmza6UzdKndc8HU8SQTzEN5wDkOMQSIaHdvPfOyaxfc0KjaAP
	 3nQNn5Tirz58rimbmYgjnZiaoL9W0TNouVWO1je3kYpWyF0wv2cHtyC+tmYXHhpCp8
	 C4Vy/ahKfnu7U3R+eZlALXuoptMTsmx9/gmhSAsFtfMdV5PLxv3svFWUHtUJ3myQRQ
	 qPvR0tieggBvz53vbHYfObcmidQMzvUhphd4AnkKnYhTCechjbe9BiZzExgxT+06Nt
	 O6GVOqZor/3obfbpaZy24+YGe2WViAbBKDvZHY5H1do8r8Ljx9H5mFHeoOZzD1hRKJ
	 kr3kJMXIdEN+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B7173CA9ED0
	for <ddprobe@lists.linux.dev>; Mon, 12 Oct 2026 10:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179180103373.29790.13050383259255214686.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3e305cd9d0e162abd5d1332c25b60ba1a4f3bece105dd78a35b8cf01668cc243
Date: Mon, 12 Oct 2026 10:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791801033
