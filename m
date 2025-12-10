Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BA1610F2
	for <ddprobe@lists.linux.dev>; Wed, 10 Dec 2025 00:12:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765325574; cv=none; b=gtQ2gxtDP7wAAcSp1mXVcyTanPn4KZPV6WeT6UuC90s/KOZUWxdGo4rum6FZBOctNCttOWBwVFrZcboTHi3vQVBqc39c5pn5s5vuWsbKIX+HmHBtTPS9jtsS5I+OiVwo2b0ampjF2RLNN2JIVk4UD5dSKXWBS4ziAWf9F+db7BI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765325574; c=relaxed/simple;
	bh=1J+icyTwPw9U6uEmpjXica3VdrtnZ7Bd1C79f6sXwxg=;
	h=To:Subject:From:Message-Id:Date; b=owrwyHicMPk7cUSEGA1v0raI9zqMXMrTWpH1HPQCj5zNmq7oggw8RCiWU8PxbT/0/LPpGGhAk77VaLSODhtP4qWQUH27Ghheawf9rdPyLcxfeL4MRpyVaHUmj+tPpD+V9prloIKRrmfFKSwaNreLz6tjeT7pEJBC/bjAE8+uRvI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JO74Pe4S; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JO74Pe4S"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9742C4CEF5
	for <ddprobe@lists.linux.dev>; Wed, 10 Dec 2025 00:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765325573;
	bh=1J+icyTwPw9U6uEmpjXica3VdrtnZ7Bd1C79f6sXwxg=;
	h=To:Subject:From:Date:From;
	b=JO74Pe4Sl8FHinjT3yShy6+rEsxIBvX9M5reAxNohOD+lVxgcnjIdlwNtS8Gfb3P8
	 WZSVlznHkbulNrKZHHhbH9OLZzSkbFppfkR7W5tPg7DshZud9jA/GDppwDbeTDeg+D
	 OEkp8veWFrAJUcmvTz+3nj0mL6Ebv9S0vOrx8u6mtIuSc1HoP7l5afcOWd+YVEpJLN
	 aoWmeZqpQG7beXSkNGhMBy2LD8QaForoHJG2eVfebXwIa0ZEbMEDbUHoaC+MRmLu+m
	 Z/1NBWboOJKAmgqSnFEWY4FcDZDNTgVhDDXVuM6QHHuLQBiI1jlEO30xYk8Oq3jKLk
	 GRB6RCdnHdqFQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 974DFD3B9AD
	for <ddprobe@lists.linux.dev>; Wed, 10 Dec 2025 00:12:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176532557358.23580.5904141231527662004.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 90d5d802aee8dd5c82220a60019389ffc6f593ada78881e8868711187793249f
Date: Wed, 10 Dec 2025 00:12:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765325573
