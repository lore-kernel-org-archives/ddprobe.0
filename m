Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D1BA356762
	for <ddprobe@lists.linux.dev>; Mon, 22 Jun 2026 06:16:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782108994; cv=none; b=hCPQhySu7o1FXbTjXmGrBiD2IoWYtFj37bbWsUcxWSlf9uNvES/EhmZFV+WIsp26Fr7vgGIGQvo0saYY4P3wxTXGjG5lR1QV3IZVJY+4z2ifRevrj8VE5ibBCYunFCD6elvJ6u2eqKDs0wc4+Z9saHDWPGLAMlo6aiH6EJxuw2A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782108994; c=relaxed/simple;
	bh=9IS/4xPMN+pf+ksc1C5FuKn39gxtDQ4e0Dt6V10Lg7o=;
	h=To:Subject:From:Message-Id:Date; b=A1ftM3qWY2aeU0mqPFZK64Dw0x9ObNBb70cf01pJ30dlpAsZovkwYFiZVKvnF0vz+qFgQJBYO2rNrJXqkyLqHqXgosKPt6MRMlhzvw6TT8/MsafY/c2jB3Il30McOsypfjvTDfFbW+q0MOHsEflg/FopWW7pnGlpK3i73nuzQFk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=g+TzfZTQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="g+TzfZTQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD53BC2BCC9
	for <ddprobe@lists.linux.dev>; Mon, 22 Jun 2026 06:16:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782108993;
	bh=9IS/4xPMN+pf+ksc1C5FuKn39gxtDQ4e0Dt6V10Lg7o=;
	h=To:Subject:From:Date:From;
	b=g+TzfZTQIcs8rp9prW65MNYT4d3De6HFK+Rkr8eUf+IEvlSVH8W6jhSCaDodh4QwH
	 K6aYBNB8fzORJeoK8QF33q7zR9WD+yfTkCrTJ817AQ4TWpSfod6yFhsxwx0zd5lvGQ
	 SUVyH3+a+YP7mDZfXwWTJLShtoce3u8icarUyUPdVNtt0wN43tr45sF9dY5STrfDxB
	 p1TjCrM80ulVlTHVgKiqekQSMi/tGMVl40XxrlvzAV9RbwpV340yugUGJ2z0nYpZ83
	 a2iQIojCJ0yCrGKetdXCXTDY6vxzcHW0hRuqVYadpYRVKEZJGgR4O/wmofgTIu7BEl
	 09FQcpV1o4zAA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B123FCDB46B
	for <ddprobe@lists.linux.dev>; Mon, 22 Jun 2026 06:16:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178210899371.21619.2082547395534803963.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 89a7e51a355f191c5d46de28bb4298f24e4255e8fb7b3444adab55be2eb209f4
Date: Mon, 22 Jun 2026 06:16:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782108993
