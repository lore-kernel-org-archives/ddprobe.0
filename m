Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21E563655C7
	for <ddprobe@lists.linux.dev>; Fri,  9 Oct 2026 08:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791534034; cv=none; b=j25PkhX4gkpYx8gU4FmbKCkBE1lQaoUFMpRzzfJ2WugmS3XgPxr5iyHP2cc+bLISRFrZ0swSuuKgh704qkcyeMuURf+qJ5hryZrTRkru/ZM7LYw2a0vyHl6BthNQrWofcxkhUxB9kSUezHpVL6yE9knY+asR36Ugw9zS16cIXcA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791534034; c=relaxed/simple;
	bh=RCkaMluYMB27P1XpzMrayvOM6ufiHtvMfjfFJoNswTg=;
	h=To:Subject:From:Message-Id:Date; b=P1xQfZrV1DJUb//mz4dOJxwR3Y/cIydbOJbpldU4uHCgYR5BUiDlE8LEGEpbRe+962GRK3koQHIuvuJL46Z2BX/ad1u4eYW58+S+RZyvPNHviH9G63gGAtLSGy7aA78S6Zmc+FNedsvhqR/t3YTI+iu3/XyBEDRLXZ5JTS4WHS8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tgEwIeoj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tgEwIeoj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D003EC2BCF5
	for <ddprobe@lists.linux.dev>; Fri,  9 Oct 2026 08:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791534033;
	bh=RCkaMluYMB27P1XpzMrayvOM6ufiHtvMfjfFJoNswTg=;
	h=To:Subject:From:Date:From;
	b=tgEwIeojU2AKF85+T7ijf3uhO3ah4SKDIAtOXE1tGl0+I4L5W23yPh5ZsVFG3LgBL
	 4lpBk5wsDbOlhFMC3EO9nWV/KeI7oN4I+AA2GCLQknIB+DBazk00hxN7Ow+3QpRzYx
	 +kg22melrZnPG4qc4Leih47453aEnySa8h+fyxZ3zgkpvKAfkSItTQ/Y5eRvcTGa7a
	 0/eHo6Jr9vPAMQ81AM4bLb5c6h4EbeJLK+rRULqut+3NAdehADdwC+unGdljbIoMMK
	 jvd7Hl37OJWx9BfIcRp1OQ4ZvBdTUdXEvWySlB9Wh0dxAS8Ftmp4NpMKAA1b6fsAkD
	 m/e7CTvd8jlUA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB35ECA5FED
	for <ddprobe@lists.linux.dev>; Fri,  9 Oct 2026 08:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179153403369.11927.8464938830339843857.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 374ae3e9ad96f8ca73531cf8752c817773032e06af36e0c9dd88e7644e6a9917
Date: Fri, 09 Oct 2026 08:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791534033
