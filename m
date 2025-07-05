Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34DA22E36F8
	for <ddprobe@lists.linux.dev>; Sat,  5 Jul 2025 11:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751715594; cv=none; b=OJDITZRvAkYZ1EQ5Fs9aOjLbbtfhfUqRM+/m6lmwozMfxjm1zSPfpXq0vUAFM8k3UP+NA99Tf4hOEY7smlzDhtNYVKCoGCyRjNoQ6Gu4Svfqt8YYd/IWEZ7l5MXWltHBGYXWm5GlSO1HKbyJomJZmjC96JkZnVI07MbtaoPLXKg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751715594; c=relaxed/simple;
	bh=XR4K2CW5zW9eWtCHzPR60YJi21dooxSI3y0eY4aJpWM=;
	h=To:Subject:From:Message-Id:Date; b=alGDP0VUWXIlBNgyVzlQ7E6uFpLUTEwk9ptSZvcKvZ7dAGlGdG5YRPcSd8mTC5jlQZ8hzXPYB8Zv26JEq1ZVPJDsokk5ac1Sx/L4tQxkz5hMwmwOnxJ/3Ei1NP6OXfjWwewVhndc0xSPo/s6AHlHixVVBs+Kd77fhxmc4odlL+A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Q4dKGQ/d; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Q4dKGQ/d"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7D50C4CEE7
	for <ddprobe@lists.linux.dev>; Sat,  5 Jul 2025 11:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751715593;
	bh=XR4K2CW5zW9eWtCHzPR60YJi21dooxSI3y0eY4aJpWM=;
	h=To:Subject:From:Date:From;
	b=Q4dKGQ/dEKXDoI85g1a+oGGuOq3AiQM5kIKhDcj80zscZKlXNiFd5DpnZNblvU7l0
	 CiOc0f3QER+LHpW3p6lMJO1czHts8W7H2QTF9ZQP3+1ur4Dko7QOZXmBxR5TEqxg1M
	 PQT5V2XXz3LltKeR4buQF19NMSV0Ud+Qt7UeHwLO+IUDWZ8YJEguLlnQ2zxttS8ZTJ
	 JvKn4sbHLj1TeVzr5pw/w8VoaF0AgC5uDDpvy0Xr4hHgr9QPHOajI+hBe7fy7krOJp
	 TOShtREVVa/Rd2pFbwTJmNN5n6OYi3uGVKdLTugEXS4Hv7KL0P67CvhY2EH/epD4mx
	 I8om/vaw67GUw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94906C8303C
	for <ddprobe@lists.linux.dev>; Sat,  5 Jul 2025 11:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175171559357.7394.16394839827427648235.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4afd5cea19e71fc84812a2358f758da68cd775d68924b105f377c89664594696
Date: Sat, 05 Jul 2025 11:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751715593
