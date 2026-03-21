Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41245373C06
	for <ddprobe@lists.linux.dev>; Sat, 21 Mar 2026 06:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774074294; cv=none; b=uPoi7CvxVyUGlbfvdjohbLtZEJK85+dEUtrdp2BmdlxtzHrMUbzgzZVfKGwTFKK8McsWWXWpNYONoQAIWUt5hzV25bN0qBvX4JI9q9O/60yW1iJ0HoZWM46lpoRWuUGYN4Qpdnd1O4//puGehPd4VvzjUPxpo6jaZs/oS6963aY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774074294; c=relaxed/simple;
	bh=MduueUkv+R//tmt91kNxnhUM1OZhJcqW+Qp7M1vIllg=;
	h=To:Subject:From:Message-Id:Date; b=ZpGyxAKloYBuJvsm5MCAZ9rC9S3le8QPXN44GPgzUEVptK0gNA1xvy7IL7a+ZY0Km6G8X7eE4zZO93zVSovtDHn8BgPGDGwk5sNGp/OBZlHt7e661XXHgqQojAFq1y59NHvdS7ey+qKT1wruEGGkabjGUhvYBg70w4Zcmacuf6I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=S0GzIBIO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="S0GzIBIO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6D30C19421
	for <ddprobe@lists.linux.dev>; Sat, 21 Mar 2026 06:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774074293;
	bh=MduueUkv+R//tmt91kNxnhUM1OZhJcqW+Qp7M1vIllg=;
	h=To:Subject:From:Date:From;
	b=S0GzIBIOs+Z90RLXkHvdIsGZslzaE8OG4shNq7TJDcHYTA15oFypr27B5gsLabTra
	 qC+TyaQrye2OMhyhxzS8pQzSe8UepJleFFE/S51EBLKH5q0kpdioGhvRRnjb6+RBBG
	 OYnbRgFeJpx0mm+KEdWAtAGETZCcVzJo3+tOffjuYIWPWEZEHaiB3MSkrkHYn4C8q6
	 wC/EA4Gmu2TrW1INgycQZmMY9eqkcC+jCPzv9UrsEQR9KKNuAt7cLu4QU7jzOp4MS7
	 kGP6GKxfEXoomftce4Ope7cDvOBAeo7d1UkB18VlxYqrvWdZNPkDMF9J17cXMejhkw
	 Q1k1pUNgQnnNA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97661108B8FF
	for <ddprobe@lists.linux.dev>; Sat, 21 Mar 2026 06:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177407429359.7074.1860304667286845289.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b7ceaf837c43a1e44d853d2589140a2c4363ad930d6887d9c5f0f991317e1181
Date: Sat, 21 Mar 2026 06:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774074293
