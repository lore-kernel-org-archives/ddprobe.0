Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 304ED2B9A4
	for <ddprobe@lists.linux.dev>; Sat, 15 Nov 2025 04:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763181594; cv=none; b=YtW26JXK+mHE3bKMupdijJMttvIKsW710i2pGPBV5fJSb6nvJegssCvY+F5Q5hcAUrmeEJJ2455j44zXG2zCvYEREDNPWOHobsf39ylvAoX3mhAoDXZSF8TUZfLM5mxYeKnjc3bT1g29kRoAo+uS1BTvqUQQBXXDfQyCfLdihts=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763181594; c=relaxed/simple;
	bh=YyYlA3ArH4AAUzMLBVx8IVrmMPJAzHsKsAb9cneoQVU=;
	h=To:Subject:From:Message-Id:Date; b=qxNTd2zUxB2vGoRnxgNWGCQRGimGY+vomjZ2RSJianKb+zpjQC4ZSf9Lnhyj/IluYjSamkOoWeVJ43UxBCLq6cBKOyUu+gfl+LmYiBYdilWWXONHpAi0TndUhwFc8kqiDSFHFBEzAIg5Be1gIFOc1yc+6c/gYueR+z13YpTuzyY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=URok30yK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="URok30yK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6993C4CEF5
	for <ddprobe@lists.linux.dev>; Sat, 15 Nov 2025 04:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763181593;
	bh=YyYlA3ArH4AAUzMLBVx8IVrmMPJAzHsKsAb9cneoQVU=;
	h=To:Subject:From:Date:From;
	b=URok30yKDDWCj9qaxV0RnD3MiJHpulDSVHUJr77G8sDGinXf7FuMilTl2+05JPDpz
	 2rZIoXnN8ctbrAHupeGHmDWzXHcHOpcVjPt45iSkTWdVFmOJfjDZUEgWM9CKIjInea
	 fS51qXXfEuLo/3boZi2g/6zxnYPZBNjxdTHit3mAhhHAxxeL7CZfpfrfvwUZW4mLE/
	 KsFLhJ0+wNcGgyLxaYebVzQMkfO/Cgg1RuC63DPetRs3NL54CB0a/WUmxu3AAXDoU1
	 lpZdHOdhSdYhknKzYTt/tzkuMEnzCKs4SQ+U5R78ETlhO0MfNoSBYGoA0o3+BjIqEY
	 +B/UnqRbBznqw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97FA6CD4F48
	for <ddprobe@lists.linux.dev>; Sat, 15 Nov 2025 04:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176318159358.3302.6094411160698193250.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 87b67bd23e8fd5dd9e59e70fae381b7beac67ba15f2e346a865841b6727c67d4
Date: Sat, 15 Nov 2025 04:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763181593
