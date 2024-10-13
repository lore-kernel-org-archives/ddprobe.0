Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 536B413D24E
	for <ddprobe@lists.linux.dev>; Sun, 13 Oct 2024 12:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728824154; cv=none; b=F2vY976rQtnLJh03LAPq6Z6Y4JhBXgVnWb0su9fDnDwpXbSOWFA/UgaWg2seSFv97zUOgK0lfWfK3OiwIlbYaMX9JbP1S0AhhtQ236EGsWZ1wr6NxiGct8aNjNDNGa3Xbt26inL6GKt0n/o/UutojwmOJfZxSYm/L3aXo84iP1o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728824154; c=relaxed/simple;
	bh=ovadHv5+QZ4qryRi/Za4AczXTSl084bmIzU4oU9JkU8=;
	h=To:Subject:From:Message-Id:Date; b=YNy9CfJ0vQdyzHmgBlYu5vEgygZiaryMl5FzHbaibgTBmuxEyEBo0bCK1T96+bv6iGmbz3N6oXyadm7LqodXnaBZtXsxbJgvFoCcVR+qzPOR5B8ktUwuqmT+xErZQOvIdCcujzPJeWF0VxkiH90fAUZB6imxLvrK9i2wp7iZ5hw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bT8mUmMk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bT8mUmMk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B57E4C4CEC5
	for <ddprobe@lists.linux.dev>; Sun, 13 Oct 2024 12:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728824153;
	bh=ovadHv5+QZ4qryRi/Za4AczXTSl084bmIzU4oU9JkU8=;
	h=To:Subject:From:Date:From;
	b=bT8mUmMkDAY69m0Mhh24j30fu0PNeYCIqG0/X0r35DuJWFcl/az90gN3kug1T3LxC
	 Qdvo6BUK8Y47j0GjP5NLtbzCWJBli8ceaCcnErQXFaveIUgaMVOABS9V/Bm8Kl3MU6
	 +YsqGadOnBjdLJuKnSAjo8dDZxKJ71nUJ/YfsfEzz0D+XvbQyXBL7rOUaCe9XJ2Wkl
	 mlFyRhxIi7p2zNC/sIsLwhbgxZ1pS68ki3y2teZkV3n/esSBBrYTmu2xBTkL/+iJ/3
	 U0nNICoTqn5rzQVKqAXJrYcKRb1HHaERoB7UNm2YIh32r10lZdYU16OSOhTZiYhiBP
	 cW/JQPPOGOB0A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A2832CF2579
	for <ddprobe@lists.linux.dev>; Sun, 13 Oct 2024 12:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172882415362.28706.5954141658295955565.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ad098164cbeea98d9cacfb3fad25e12bedcff1572ad00d2b73505e213420b211
Date: Sun, 13 Oct 2024 12:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728824153
