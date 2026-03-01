Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C6B21DF25F
	for <ddprobe@lists.linux.dev>; Sun,  1 Mar 2026 14:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772375094; cv=none; b=CAy6bUbrEPXbVSOxPSXTh1Q6eFBIPfcswnE1BYT0IZ5hqI/phvzR/6dbXhpUHyZTE6OnlTcbO/0ISvUJlUf/YLqp1Xkv3OfpJ6mGeU7eczhEOfJZ+1ARy6wAAtfTZxuIOEpIT0zFJegnWpGu6B2BJoILJeZKNN4DTt6zQueqLGQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772375094; c=relaxed/simple;
	bh=hSLwTWKrTJ6Po9UCPozzBdGEj9vqyqjjpJ6YUojmnI8=;
	h=To:Subject:From:Message-Id:Date; b=nG0Jeu/zGmwGkOkPq9lOgVMvJz8zkrWpJeoYzqNmrFXDRBJ704/sDOpjGlmh3pVAcZHW6yzkqYAfMtr9Tcvv63BBZ9vcbSAt7cFn3o7AMCelxCE6rLA8TF6jx0NmLAAAlO73CcWM6ryuocn6EXlnv+IpwWLQSSmso+LolYqagig=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tztWcUPg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tztWcUPg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B33FBC116C6
	for <ddprobe@lists.linux.dev>; Sun,  1 Mar 2026 14:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772375093;
	bh=hSLwTWKrTJ6Po9UCPozzBdGEj9vqyqjjpJ6YUojmnI8=;
	h=To:Subject:From:Date:From;
	b=tztWcUPgciMU3RmkE7tTqxfNv08qdNy9CsUYHI1R8qUZEzTzltkqyc0hdjhglz3Jm
	 Ixk7eMqXXk54iKfJ5xUnfCWMt9dK5glv1AeEdlXMKBcv44shT71EOWgWv+7hvEnb45
	 6dDvD90yduBIPfHTgRLkPmJ/RlE46w8QusKVK1fP2wjoH3eDSeZOF/RJrskhHrdHFR
	 ckjSTqHQtAzhTr+nty1uf2lxRarCIyPm466By4lF0FygmXcI77ujnjO0t6hM6z4sbe
	 awVm28O+k7RDX4+w6HeMzj5nganpl1OnupgE9UFxozcLm2t30Sr/sVK5kpZ7zEA+eC
	 L21YLlDKQeDhg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97CB6FD0057
	for <ddprobe@lists.linux.dev>; Sun,  1 Mar 2026 14:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177237509359.24925.5931903922915493023.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cd2784ecc43d769ca557e1b3b5f1cd7d73971d98bde8d3b9d1196c836ea47a91
Date: Sun, 01 Mar 2026 14:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772375093
