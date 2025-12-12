Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1357E19067C
	for <ddprobe@lists.linux.dev>; Fri, 12 Dec 2025 01:42:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765503774; cv=none; b=fa3B0toHmKKWwWc6zYfhSSJcVikPPDCJ08B3CjSV2+YsfMsHjMEgCIkEJj0nbSkX4kjhw/rQfOmC0qF228dVa8e7lK4Y4BYcbR2+3iS6iCCtYWi+IkRqxjghI/jqQdf8tci7LMK9rVlDjUQqNgwsnzSzvqD8hXT6Cc9sKwSThuI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765503774; c=relaxed/simple;
	bh=e7CqjGC0LGI4070DgcOs3G/oSsnn4ibq6lP/oZLthJ8=;
	h=To:Subject:From:Message-Id:Date; b=AaA8jkHLiQ4lAh98aW/EIPhGE5L87685xsRYyxxc0Gm/2q3URqynMkSxQVFP6XZWkxXOhZyz9SlCk9HwXS98fVovY1aAA4K2xa4oTxbrN2B1dfsfY0znFYNj354OO5bpeqljL6f5HzopbiZtu8RlZruZtcHYfY1V8ahRr/BALfE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=P3KWhI9e; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="P3KWhI9e"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF356C4CEF7
	for <ddprobe@lists.linux.dev>; Fri, 12 Dec 2025 01:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765503773;
	bh=e7CqjGC0LGI4070DgcOs3G/oSsnn4ibq6lP/oZLthJ8=;
	h=To:Subject:From:Date:From;
	b=P3KWhI9eiK7MrIHS7AmPCacV0QGgEHAb7CZPWZld9nbU280ZeHEeRlxdLqSshiErv
	 xB+/YQZyp/CvLnABSMlbu/L/Taifrvd3LIeztwqHGPG8ouJFvu99Gj3G2yHB4a1Np/
	 1Xfj2/OAgHnyF4aDDFwVsW7BddIvI9kKYEpmThKUz/H6djWDzF5LWD4PU8JftgXjEO
	 LYRYjIgVlktbMOdlc36bu+y1XphdZSqM6iIInOe/50p0Ie/JMFLvUFZXA1MRMJcQD6
	 kicgFQAJdHUPn5FO3+7pzta1qp0+0stJOpX1nnzlaYa89JyYAx944IShDdwoal+t+V
	 OLdQhhwmWJ28Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99ABFD4335B
	for <ddprobe@lists.linux.dev>; Fri, 12 Dec 2025 01:42:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176550377360.13030.3628361462534012641.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 67372dfe2865e18df9dc9343cf4578e915df200b1d6547f17ad1099c7530127c
Date: Fri, 12 Dec 2025 01:42:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765503773
