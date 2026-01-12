Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0614F320CD6
	for <ddprobe@lists.linux.dev>; Mon, 12 Jan 2026 19:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768246434; cv=none; b=dTrvYeKA28VcLWOT//so4VFJ/JE6RCMe/MkVMfj9qVaBmtfFgxhKXHPIpZ7FmH70MSp/a239cby2yQZ7aiv3wyuOTcyC0fbxvaADpdvbCsBZgxEoGSVf4EI2PEhBAW7fRyG1jAizNt+5LKk80sDXphzzTMot32BBkUK6xqGDZ3I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768246434; c=relaxed/simple;
	bh=rfgZ0hilQPX09ykXKai3fppDWJC138E8KbpMqEK6Km4=;
	h=To:Subject:From:Message-Id:Date; b=eKalg5rUByG5KfdxFVrTpYblgGiyvh1dt6R1NgNuVWN4L6ni0cK/ocFcqFQURsjNN56Yhk4FmJx5jKwQzTbFquddVu/urSgTBQrO+Pm8A1ryRhZp20GbA9WCa1UtMG/jZUkMdwNRe3sOdkdImZ22kZQUFQ06JXYFcll4zyr8LKE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WYncLzWK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WYncLzWK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1487C16AAE
	for <ddprobe@lists.linux.dev>; Mon, 12 Jan 2026 19:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768246433;
	bh=rfgZ0hilQPX09ykXKai3fppDWJC138E8KbpMqEK6Km4=;
	h=To:Subject:From:Date:From;
	b=WYncLzWKBj7HtgVAEAYs3Bmsac7xMIvrUJzdEZ5vktrmu6zCcMPnQbpqJlPK649CJ
	 rTlQ2MDfPbCqOK5HJ6zQb85ZVdkKovkcO2sb6VgyL3stctBH6BhLvscSmi8vQ+vEow
	 rZxHyquRG3A8kzWlF8LlFQKDjTPHOurE2t4rK1TCXJ0QAAkLTH0gf7bsPxNkHJwCEZ
	 V2gqy5GxTPpqokTYL/g9r8IggJ9LWvjrO0O3FoBRSre078sSXEZ9QsJ7oZ99Y0IGal
	 IFQ6ZJ9bB0Xx7L+OMFGH7tvc5cWUOaITtyyS+6z02ZSG1ilXyB1Bk8/WV9GtWGEw3e
	 6tv11pCsvdKYw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FAC6CF45C5
	for <ddprobe@lists.linux.dev>; Mon, 12 Jan 2026 19:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176824643358.31348.10409646741871339148.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0ab97487b1c9b38af0708d790ec96ce46511661e7abb8d0c578fbfe0e85a74c0
Date: Mon, 12 Jan 2026 19:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768246433
