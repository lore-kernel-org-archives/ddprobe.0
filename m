Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 597C7208D0
	for <ddprobe@lists.linux.dev>; Sat,  3 Aug 2024 23:55:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722729355; cv=none; b=CIYh9xchiOjnF+7I4fR4jbeZjV6xBtiLpvdjVgKqIKWuRJH3vJ6IuLISj6sHe3j2aN7y5P2tczcRhW/7uEgYFx/7twgTZY5AA+CMca74C48Xt3Qrlk7gS0eNnCc/lOo4N02byrHWUsGOmLF1ukdSIULlCcBRksBlJNBDtU7qbU0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722729355; c=relaxed/simple;
	bh=5olI0DkFMMj5xutFPmhSEC5xGmizbZAjaY9VfxIsDT4=;
	h=To:Subject:From:Message-Id:Date; b=bcKVXfM4lEURcr8hCaMthcDrDH8BKjY0/BQKXDLY5B+Z4b4Oqqudyu33R5jalVMUsBmEbApVLyYQtFdtBmdmSXI/3sPrTqlaqB1hrFwWkvywybPWI20/KGE7F1wchlDnzIs7W5SC6tCdeTt4OiYKxpv75Ds8b+6If4X0rnoXIms=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mHms+AuW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mHms+AuW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AABADC116B1
	for <ddprobe@lists.linux.dev>; Sat,  3 Aug 2024 23:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722729354;
	bh=5olI0DkFMMj5xutFPmhSEC5xGmizbZAjaY9VfxIsDT4=;
	h=To:Subject:From:Date:From;
	b=mHms+AuWPzl3fRAIgcvfUpnJfqfoIlRmyijCPH4ukuS/2B9DqA7Pebtbeb9N12/mV
	 4Sb0jzU7Frgv8zd0u3slvIZ4XrWZE9Mg0htmPDytbSOMOWQw+u0piDMhIfrPg71LtI
	 V/++jfzqsx6qXeL585nVvOGJkxEZvjpewSb4qrRKYJ2vfHEsL3oY7BT0wSGb23cwq2
	 geBUpJUs/IquDPRphh2aAC13i4Rg92eS6H8Mi795e4Q51j9gZrR/4OwoBexUfXmDXT
	 3XG3dKJgckqi/yUR+cNaTqWeU2haFVvG3bTH8jLOs3PSCKvy2EtrP3URJczday7D4j
	 aq/u8HMAyJWHg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92E8AC3DA4A
	for <ddprobe@lists.linux.dev>; Sat,  3 Aug 2024 23:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172272935359.2166.4031993211933418615.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 54060d89909522d8d2571cc5cdf41dc88b84169f0648de4d5dc0b9d15416566e
Date: Sat, 03 Aug 2024 23:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722729353
