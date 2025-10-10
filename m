Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D9791A0BD0
	for <ddprobe@lists.linux.dev>; Fri, 10 Oct 2025 07:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760081994; cv=none; b=h2RXa1N7S0I7WnVclPocRP/bpWqtq6YR2I0jHINkW7nfSyQ/DYeidU/xGQpMW1aNIiE9SkoGl0qGUrplhoLolZyGsvDtN5Urslw7MJwSpnJCqm+Xvu1VaSrYlKDssmYJ71PhIoh48pDS1qC8w7OemSFw/gCWRpUcgVRijZD0vWU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760081994; c=relaxed/simple;
	bh=uc5Mqyi0StTUXwUBxlRQJqa6ebqlgZx50ILNTIrnyFs=;
	h=To:Subject:From:Message-Id:Date; b=VaHP5nWtgJ55oh16Uy8CE+mgSuX1wxPmodO9LSfO4ULGybwlZrNkKvP3Fet6LQ8IvYpCAdc11h4pk+yEkfKvIIRrP7QRvED6jwQMbsaDvWAtxwjfVF+uApcCsyiLLUhF1qjoW7iBcxGQqkHZY6/mLx04byExLm9h3u1m8ochDX8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lBL+gEKK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lBL+gEKK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A21F1C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 10 Oct 2025 07:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760081993;
	bh=uc5Mqyi0StTUXwUBxlRQJqa6ebqlgZx50ILNTIrnyFs=;
	h=To:Subject:From:Date:From;
	b=lBL+gEKKUGlisOlU23UlX8VdV/YOOyTVJ01BLXzeHMHVjpodLSx0G3f4gLFXftqBv
	 q9dzTzMSjaccmgyoG/N/W3IcQLZZFtD3yQ3+/pjBvtpXKAwddAoMk8JqYEfavftoKQ
	 Bnnzr9ltrK9+0a07LgcVlF4nEAzlI0l6t5FP+bC8sOUcVp5x36/Maor0dRf/UR2koZ
	 Tmt5HPA6gkSxd5Mj24XXwnWemXH3EMHmiawapftwZfZ321/Te9OpvkaGaTvNRcQ6Ug
	 CmKp+FAPJwSyllsqvo5ugItZ7ab5t37FjRgP7rKIvn4C8W2zojoXBW7FHj6hDwJg58
	 vT5JKrOyMBJEQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FB39CCA476
	for <ddprobe@lists.linux.dev>; Fri, 10 Oct 2025 07:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176008199358.17130.9193099233927611785.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bb48de712a209e8d3526daa32d854bfa6b727ed7ec591ec6da511ddc60db55d3
Date: Fri, 10 Oct 2025 07:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760081993
