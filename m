Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48AB21A8F9E
	for <ddprobe@lists.linux.dev>; Wed, 16 Apr 2025 07:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744789195; cv=none; b=Lc+OCBWCsFLOOM3YKG3bMUecx9UhuMOYjPKeqPlafhQ6W9w+548Y0tyiK2hvOSqKaHkNBkIndKcyT9+N2nTK4kmZ09HgP1UmI586sTshiQRLYK/hlbrLqw8WzZoB9iqo44B73c5RQGjDxxy8Qpw9221PitsR8nOHm9CsO7nYpaA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744789195; c=relaxed/simple;
	bh=mOiQJZBHAWH7Qm3uqB7W3cXXqqoDCpxydFabo/8Swbo=;
	h=To:Subject:From:Message-Id:Date; b=ffu+fPHRVl1JAiyFlEZuGCS3EO1Q8eyDOjpOmQ2niQFyFt3KaKhQYB/T22huHGMzBv2G6CgPasQv4Fqy0wX0JB6gS3lLQt8TjFZwgd2K0UutZ9VVyGyclaUsiftbha/MYZfeW677HEm4GA+NlALvRrjIR4UQYqiryUlyZbHj74Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RIAyO9sa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RIAyO9sa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF408C4CEE2
	for <ddprobe@lists.linux.dev>; Wed, 16 Apr 2025 07:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744789193;
	bh=mOiQJZBHAWH7Qm3uqB7W3cXXqqoDCpxydFabo/8Swbo=;
	h=To:Subject:From:Date:From;
	b=RIAyO9sardmn3iZQEvoiROWchD6dGsR65+dLr4YzUqmFyydzJ08DUtsbTD7/Eglpw
	 O71kg1Un7UwQT7Vzq9XBfxlrk6BEknx6FIz1bKunsrx3ro7MOU2nmGar38wWUF7f6D
	 8EGggXEeeGNIBxAdgbzQIpy/QiWos0Chf1CcKwmsRWh9wnD+SMnd43wBKWn0CwH+jc
	 YyVTQVhAb820X8132avqZ493ujEpgov04ZB9wPR1yYr9EdHPoW9TbubdG6su5W1mg5
	 PlUmRSXsQEnmsmMlQlU66/hCl3X2kWh7UJvz006/ekj/f5mJhRx+gTaIkCAqmPmwJi
	 AMYgmutzT2UOg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BFCBC369B1
	for <ddprobe@lists.linux.dev>; Wed, 16 Apr 2025 07:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174478919363.7071.120999851656220174.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 308e13cbb62a76f7249248c23af2d30e8f7a90cd2f6960087bcc4d6409a7ba40
Date: Wed, 16 Apr 2025 07:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744789193
