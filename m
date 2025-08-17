Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3656720A5EC
	for <ddprobe@lists.linux.dev>; Sun, 17 Aug 2025 22:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755470394; cv=none; b=rjYuDRyOFN6sUCZuKso671KsGtKtFI2OaWeRKbehv/At4Eu81acBFujKYecUllVC0ndbQjxF03/MIdtkfMBWHZYLavMyZe1bAGgnxz0CSl6YEl+gV4rZdIZuOJm3IAnN+KeFQNsKSdPrJnXwQ4I37cesVv+0DNeuXw4dpK2flUI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755470394; c=relaxed/simple;
	bh=3ThubU890H7nrGZzbqZIKTcGmSm6nTsPSRacKETG5SE=;
	h=To:Subject:From:Message-Id:Date; b=cjqxbZJDDLyFLGddvzMWUHbkSuDg+5vsLW2j4RiE3oGvz1Wj54CtErWwtnVVuOgJyd0pncirZooh7PXUImDh/aIb7HSC8uaInF0gcDdHAW+wb1ExnqMeeuwTzqFheINFrNFrzK/CLJb/t73pI5ysm2V7JwaALXLlSRFmqKDiAMc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TEHW8b8/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TEHW8b8/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EA0CC4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 17 Aug 2025 22:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755470393;
	bh=3ThubU890H7nrGZzbqZIKTcGmSm6nTsPSRacKETG5SE=;
	h=To:Subject:From:Date:From;
	b=TEHW8b8/sTw99b+seIBlc3rT4C19NKscaJLUkvpL7X6yBk9xU9/9RFui3S3yTXAmf
	 bjfZqE0MWrZPfJdFwBN+67MhNUfmM0BNQRSwA0bJnmiTCbYdFzdRjzC0zY8F1rkYFb
	 tjXU4lpg58Pa46zeYXwCsgr3BQ61KAssqlRS7HptCAnzqtUZNRnVxMSqdrfEXahL5n
	 1Os3VemEz/g2RMcIMX0SnOi7YADx/4HVSH6dBaxKTnM2IV/ARVTdDqSgn1N4KBr766
	 0Gjp9k0RzqJfL0IEAL6nIfyncjEYDhWn7nKg5iJAqzEAqm6y2IKhsJCgxpo/JRipGF
	 jmaEoED27Ru2w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F9AACA0EDC
	for <ddprobe@lists.linux.dev>; Sun, 17 Aug 2025 22:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175547039358.28516.3365787688699576465.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7d6a437a1e016316f611e9caa238dc0b17ec3fb168a8c0296b75ca7f82d71339
Date: Sun, 17 Aug 2025 22:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755470393
