Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3408943147
	for <ddprobe@lists.linux.dev>; Thu, 25 Dec 2025 03:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766633034; cv=none; b=vErbIQr5uwXkVb6Qey6KSxZF8iIYa1G8N/gG+N2aG/JTkMr2qvyYb7JizfSG+EyNmHUomPS5/TM7UQCuhDAq4aMN6jUg498Zff/qYZ+dHXVw7JqMDmxFJ2eVys9d2UzFKP9dD3cwEjhQmrQHdEpsQ74sKQCEdSn8ZlqH+I1uXwg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766633034; c=relaxed/simple;
	bh=mX/DCV6lADN7qywKgrFnzbMzwAnd1c/ytBKiSiRlgLw=;
	h=To:Subject:From:Message-Id:Date; b=EAmi984HLUDO1Sl/OTh8BySb2G9s7ePP7k7hnAvEyAMTBdLcBGZtlkRY+HugZo+zDvbE3Aqg8ksNtwlYn5bLqKejj++FyNFtA+8vo3s+I4MDniuPjU2Yk7lS+a1UQFdRcZccwR+BGRUc4ntpblZgg+QdtppxhPNvErSm1o9xTyk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Dwx+Lm01; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Dwx+Lm01"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5B3FC4CEF1
	for <ddprobe@lists.linux.dev>; Thu, 25 Dec 2025 03:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766633033;
	bh=mX/DCV6lADN7qywKgrFnzbMzwAnd1c/ytBKiSiRlgLw=;
	h=To:Subject:From:Date:From;
	b=Dwx+Lm01sX80Tzed71UuKTQdYc8TviCrVUsRWJZwrIc2KJJptBzp41bPF1QFacbvn
	 JLbPZ884xrckrkjbwtpiG7qz4OmUB//oe3OLyxQNHH1m9s/ml0i6WjIy2O75knli+4
	 y+8GZs6otCI7oBTGKeOcXeiYGTYC6aCjtGQE1voqgxlL7eOvJ4LaV1JKZjgtVIsv68
	 dwvLPzMPbWAivAXUSZ1RM+yTun1fSBOZLWtiz8dC0QgqzJZSgZj6smTuw6sXa3QsOp
	 GjDNodvrw902QXKLydUkgfqPcyEt7Hwsy3OGYG9H4qa2aGdW0LF2USlktTGqwnN/MY
	 basiXFV1I45Lw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 949F3E784BD
	for <ddprobe@lists.linux.dev>; Thu, 25 Dec 2025 03:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176663303357.27231.2416209114797559783.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5a9ded04e9850d417a0c2b67f0e1f47e8100dc25fc9d699ee855199502fe6024
Date: Thu, 25 Dec 2025 03:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766633033
