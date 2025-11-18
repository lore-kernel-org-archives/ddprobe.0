Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 335512FFDDB
	for <ddprobe@lists.linux.dev>; Tue, 18 Nov 2025 02:11:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763431915; cv=none; b=md9zL/pynox5ltTDqf3mmsy7O8XUekUK5NIVjoVquJ5uEFibilTx3JmfCUrabs4zeoFr/x71ZJb6ECBDkqAb+nLEnlxhLVa+kjlcnKYFe9P6oMp0BZyCeaefcZVetHmbpIpFUrXi4Ez0vAKir3/w04zEmHGknXPEpw4rDCxMnIE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763431915; c=relaxed/simple;
	bh=a9s8fxjDqsjPMnjfou5EZN59lAsKaqxUBHa7bOcJk2E=;
	h=To:Subject:From:Message-Id:Date; b=F9WbZ0gfZhsvVkPEF2dYy6Yc1Au46U3PPF9YR9KTNKEm6WYuAP3mEfiQrzGA8wRReKEY+/WiLL9uolAPATbkHe+JC/0ewYetsMAwRbUhXh7nH4UqaJ/0cCUh4RqbFcNS9495gR9PIzpJ5zHzab6x8DSeDyVVDbdVTpvcLWelC30=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BGust5+U; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BGust5+U"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D65C6C19425
	for <ddprobe@lists.linux.dev>; Tue, 18 Nov 2025 02:11:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763431913;
	bh=a9s8fxjDqsjPMnjfou5EZN59lAsKaqxUBHa7bOcJk2E=;
	h=To:Subject:From:Date:From;
	b=BGust5+UgavWN/XVbbJJBt3joGZRIGgo3QnVKXDaHfXOH8NNmYqph1rhEVfD6XiGb
	 ehnkbaaUbZoxiDB6c53T20SHjthdOKj6MdJXBR12Is8/7PQv0xecb1I+82Tta9DHJy
	 ZdNFoGF9wiSg8u/aXYJNYMGAaHIdIr3EBOOXdrn6I6glcLZQjFhLJ7Dlj58r622Omg
	 WRVZyJzL0vFWzHCQS5ZzunT6e9M6qMzeFpP8Nawt4OflHJuS+oDqB3uVF9KbdWLCaf
	 ouHIOLCnYk24hnLngWR80+cCpOc3tqTNNKM+TxxBhGmd03OScIspL+y3EdiGnuVqDW
	 FUkG8i8B3dzRg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90F68CE8D6B
	for <ddprobe@lists.linux.dev>; Tue, 18 Nov 2025 02:11:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176343191358.30504.11531491417223234342.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7dbee9d551c36955491f8b0634b495b4bc76e2b24a01b33e8253a68fb72e0cb9
Date: Tue, 18 Nov 2025 02:11:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763431913
