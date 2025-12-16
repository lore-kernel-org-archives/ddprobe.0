Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45D4232F764
	for <ddprobe@lists.linux.dev>; Tue, 16 Dec 2025 04:12:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765858375; cv=none; b=GXo4vIzdRDlM3svYKEb7GYS6OMtc0E9lSh9UVFhcZI5kHFqNi50kDBHXDaNz8R92fKTxVR9lmBBjPm5QvAr/fHf3kkXHpwBcXiB19bm9iDvHbIVJiv/yPVqpxd6jxefYEN9yX760/Bo6tYZAR+26ILx8ZQts+v3qYM03SiZHanI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765858375; c=relaxed/simple;
	bh=Q02H5EUGZZ7UqhIjbOJ/leQZC0igogLHObDwp7/qdU4=;
	h=To:Subject:From:Message-Id:Date; b=OjQP4RVvb4doD2jRLlNxVqoe759pB8QymuUhJYa/0cPqo8YOi1KD6vNMSKojsBKZ1EPJ6XKTICUvIFWbam49cyPpdloO9Qe57YNIBscenuSgQcAitLQhsfAZIOI0FfZWJZLU2eKUMwaxgKABIyKY6FHclat+PczdRW0DUM7iXlo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jSQPzIFR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jSQPzIFR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2B4CC4CEF5
	for <ddprobe@lists.linux.dev>; Tue, 16 Dec 2025 04:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765858373;
	bh=Q02H5EUGZZ7UqhIjbOJ/leQZC0igogLHObDwp7/qdU4=;
	h=To:Subject:From:Date:From;
	b=jSQPzIFRkZ4KxjXv8WbgKwWXW0EJ+KqOxpdAhcvq9KBZ1afQkFX8p72smed3B7dK/
	 npiAqE/FmY2POnnzUToRuRZKAFGb6yLYTf7EeiAeZNhARVk4D+4nQojhMF4cCSdPgR
	 FfP5ryzL0WIQUh8JXFNTY3PBgvSEQ+eIiGIQ0MCDmCOcBgsBH0iQww6jpZyCAs7b/r
	 pIC78KYFjNMdP2y2vfHV0bBXQJuIAPnfHF3fsru2C6/yDoCgrTr9L4H7+sUvmYKePR
	 PxSGKieYmSO5hkEteO7O2qdiNDWTTtaBzIhFLljaCPeMuX00VJWRfKHiJYIZ55Ali6
	 d5mFcitLlmRow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90CF3D5B161
	for <ddprobe@lists.linux.dev>; Tue, 16 Dec 2025 04:12:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176585837358.18117.10399742787111001554.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f553ddeedee5e4941ec15ffde075b99739b8c88c4870c729d930524abda2ff54
Date: Tue, 16 Dec 2025 04:12:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765858373
