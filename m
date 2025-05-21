Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4366E16F288
	for <ddprobe@lists.linux.dev>; Wed, 21 May 2025 19:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747854594; cv=none; b=ZDN0fC+GHAyhlpXBwWOP4aD+kXWuI+9rnFnGvI6HjvARfGg0V0RpbTcbo7ZrvM6ASwvjlEHDYW2ygCwvLeLbZcIczFpGungyLUo4w5p89dnrtjIHRSllMA7NmEquJwHDIjlMLHs85MMLnJo6aEhY9RefZeHU1uqyEAxjWePfdNQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747854594; c=relaxed/simple;
	bh=3UnEDpZojKM72aXOOEtiX+WX6JFl6cVfwJDwwrxOZ40=;
	h=To:Subject:From:Message-Id:Date; b=MCC8HMpa+woRJhqD5UFTA0sCmrmC2X3D7FBKkjkO4+7aqPHKjijSZgsZXkcPqKi+C776s1CGFLfmv816GybWy1MT+qAAaNDer31mKGB/JPv0UtSe+C+AFpdRiI+hG+BoPum3HjYHEScA2xhX5tOiZ69UgsmqMRiAv9OSV4Tk4Ak=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=T+CprreU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="T+CprreU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A80AAC4CEE4
	for <ddprobe@lists.linux.dev>; Wed, 21 May 2025 19:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747854593;
	bh=3UnEDpZojKM72aXOOEtiX+WX6JFl6cVfwJDwwrxOZ40=;
	h=To:Subject:From:Date:From;
	b=T+CprreUWR4lm8yNWBZvZOsYdSeXLZiH+rgVqIgC8hjuA0pTcEn0J+emzLgRSiFc2
	 dcLzE7yG2b1W1kLpcMRl9YfHBG5jFXqY8BijtFqCieMyNKS5dbLE7XK38ueyc772TW
	 B5BgZFcP73cUGgXWW7TK0G0NxkMBuHCJocaKqLi1V3eL7/Hkx/DnCsX5p+un2fN3Jw
	 ruBXLg3x/0kCMIJPrdfKNejl9IJtW9c5VyOQihKY/xOt0bkllal1SjtQyupDwD/xM2
	 A5ovShtI7Gf+z4Y3wJxsn4zOAAscsUZYv8hc2t69Y3CkMjCElsW1TWY6mdVK6aBvhQ
	 Xo21Vc0RyUAhw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94666C2D0CD
	for <ddprobe@lists.linux.dev>; Wed, 21 May 2025 19:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174785459357.22452.2946225904501804809.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: df9cfcda85741b120eeb80282f9923d195a87d027388b9ef38c361660840b6b1
Date: Wed, 21 May 2025 19:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747854593
