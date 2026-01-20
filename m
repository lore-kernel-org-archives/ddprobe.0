Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BD3971F0E25
	for <ddprobe@lists.linux.dev>; Tue, 20 Jan 2026 01:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768871633; cv=none; b=cafBztbqfrO4qCCFIudskqdSbdv4CZCXbghgZPa5j4YtNY/ifb1HAx9hiUX7hOvQJp0649E6Q4vre5IIWN8xEzjFTnjYI593OaNYVLuu37tJUnI+GhcP33XT5z+kGawWIkD3Z5A/PuUl3VvvuKATeGrmsciMEoq/HZzvQYAiFjM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768871633; c=relaxed/simple;
	bh=nlB2okVM+Wv7WJsDuJIsiBG3MuhVu8MC3q8Dwk8dNHU=;
	h=To:Subject:From:Message-Id:Date; b=LDHGhSvFVETbBPq9MO15aFvR5sPD6WJ3l2ngI1+1stbhZfbRWh/uY5vDWGuKzTesy6fn8EmGtFxhQ8Dbbp6xsYaFO0l9gBHA0PlqKsvXczR6T9QHRhB+DcO7X7Q/hDCtIE6H8skTycCQ2YsaYCld/UmUj6oMytmKPyt0Xx8yfMY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=X2znEA8n; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="X2znEA8n"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F0A2C116C6
	for <ddprobe@lists.linux.dev>; Tue, 20 Jan 2026 01:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768871633;
	bh=nlB2okVM+Wv7WJsDuJIsiBG3MuhVu8MC3q8Dwk8dNHU=;
	h=To:Subject:From:Date:From;
	b=X2znEA8nidCZPJVasQvDo+NzKQRATkGj0fAPjFIDivY6R5wlzkRLuzsZ0lURNxHtm
	 +y/+fQQNmIgl7uJxznWerLakq/PgpsWjJB39dJMrK9XRwNjV2n0zmSuiFUf0w94aO5
	 fEqH54clD4l6b3/dHpbANDMNzW1EdJK+5nTbHfnFzS8ZnNl89fmtyRqOjgkvc9WSYG
	 SND3ENUSnieOhyorgizzQwOMP/3xsOpG8LBq4QRQi+9LVV8GuFNp+uQ1cTRob9fY1R
	 NN24dzGSuMk3ZhVCHoC/qPb+3mi1PPvE86u5iJ1jOJUdPuRFL+/qGg/wypv1AELmoC
	 Tsy8jGtFAWoJQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F5BDD2ECFB
	for <ddprobe@lists.linux.dev>; Tue, 20 Jan 2026 01:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176887163357.21391.8057491964980213043.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 642551094589adaa356e042cfd0bf8e03dd8b7460ce44946c9a9cb6044a5cc61
Date: Tue, 20 Jan 2026 01:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768871633
