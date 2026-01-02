Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 06156227EA8
	for <ddprobe@lists.linux.dev>; Fri,  2 Jan 2026 10:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767350034; cv=none; b=p2dZmdGtMRfKXJxPR1ARwz9O35ko0gYq6UTDiEFzvcPl/MfnfT+YR/09kgCPBWuS8d08CnObyfeoQCDg0OJusem2bvE9bYc4RpBVpbjvH8nr4rV3ikCVWfo22IWFpYApYk+fSDg0eejyMGUPO2udoYhDLNMkVriVxSk2V7JrGh4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767350034; c=relaxed/simple;
	bh=ggcqHaQzlTfFaf8dOB7frtJoJGnT0CmHHCxazxVpXww=;
	h=To:Subject:From:Message-Id:Date; b=Yr4XFjZlMtVK81NQsoWnQ+CmR0S8zSNCuQ9uLomoZ7puLmWTMj/yoWYWNRz5SMusYiUpprlinw8mBFhhctr/8sYwQH34MB3ZKvxecr1XJ0tdou04TiIq9GQqzyCNo4F34hej1p1+Pjgv9/qNDlqMQwk/G15R/bNDrJ2v3eU2f7Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XdEpJXhv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XdEpJXhv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D8FFC16AAE
	for <ddprobe@lists.linux.dev>; Fri,  2 Jan 2026 10:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767350033;
	bh=ggcqHaQzlTfFaf8dOB7frtJoJGnT0CmHHCxazxVpXww=;
	h=To:Subject:From:Date:From;
	b=XdEpJXhvz9sZLjcHdQUlvECpSS5v7YYGev00+rhlOfNjT3IlPCd1kma5yb80B5PoO
	 +AzOOPrJHLhVtthIAWQ1VsiGrzRbITsraF9a//YTB0WRD3H8VXOM7TTagbGYC0mvKx
	 g0vIW0YFERSm8200LZyAdY03vboxp7tboVKC8LjiwDTomgSBhK8oXAFdAHRc3Q0Myu
	 adSKlWQgyP3MUM6lfPdD7cbkhR4KNjN3jml+FDk1lWm+AiDAzXqirvepNFGgAIcu5L
	 PABXYBFJTTektV7Bcf28k2C5pqwirIfq4f0rUCVuvyI5bBlCleQ2ul9TQ28OMRsHGB
	 bUg6iERd9KLgg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F960E9410B
	for <ddprobe@lists.linux.dev>; Fri,  2 Jan 2026 10:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176735003357.31620.16125432914985658396.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a77f618bb8ae389f0916d5ce17f4e8cf8118b1b7d4904c8a404dce1952082c97
Date: Fri, 02 Jan 2026 10:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767350033
