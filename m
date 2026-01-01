Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17ADE239E8D
	for <ddprobe@lists.linux.dev>; Thu,  1 Jan 2026 06:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767249834; cv=none; b=QgJCpJvC2IhXnUILDZYp1R6zLI0nMU4kSvnvtTLdQm+nqNdqqbnaCAvtVh6ZLfvVZ8SEAQtLqUWw7ZLUgmkz7fcdkYIve6K/V2JmacOoo58eWy9fIGr0WLAUy3WlrtvDC4kUOSTRVuuzV12HbUKydrJLhWZvOQ4TV8soKG9Mr/A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767249834; c=relaxed/simple;
	bh=lnKch51T1NALHac8lf170HMJn+ugIWoIDvCbt6HO0WQ=;
	h=To:Subject:From:Message-Id:Date; b=Sa6Ptbsj4qNRPSWhZaAXNoly2J777ZgcI4Ww4e3HpHE6N5Rx1EZSeOpxoKLwRMegO4Tz/IZdN+BH1v6WxgjkirLiE8MMubxfqwj0Q+f8FM9AAnGOn91OQuUWyU3HOB3HkRpwvytfhrc3oY8QFzHkrm4e8ZHclET8xnBTJO7MSuQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IebrNhvT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IebrNhvT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 95A04C19421
	for <ddprobe@lists.linux.dev>; Thu,  1 Jan 2026 06:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767249833;
	bh=lnKch51T1NALHac8lf170HMJn+ugIWoIDvCbt6HO0WQ=;
	h=To:Subject:From:Date:From;
	b=IebrNhvTx0usqLzE4YMyuVGHrIwCeFTkbrn1Cz477dsnPBIDVW33Xodoj9ThC96Vl
	 4TpCuJE8qO+OLqTQ2b9IPYpa9rL8T4cJiTcayHQlfb0GRrxFoJvVmkNez6WLw5E1R2
	 bv4OhkpJ1ksEenPrK8X00ukR8CPQxdjp2frd8k813nKWXvCzNgkuaU/7ePZOUu0z2S
	 V3rwr8Tr6t32JAjb62/mk0cMrWLUlUUpvO/yThrGu22BnsSrsEIIddSQJTYVk8ALgY
	 2oPynixcWiVBRXiFnMesyspK7FOkgyxeytgWui/6xREIl4x7q6A7VBpfjvfh1BOm57
	 oiPvifDzRRZmA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F7AEE9410C
	for <ddprobe@lists.linux.dev>; Thu,  1 Jan 2026 06:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176724983358.7736.12147135588253371650.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ab7c65970b76b97794e5f946c5c7811a8d47db629ddce4721f449df8dd7a51db
Date: Thu, 01 Jan 2026 06:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767249833
