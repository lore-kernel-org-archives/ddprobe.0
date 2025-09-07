Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35348F9D6
	for <ddprobe@lists.linux.dev>; Sun,  7 Sep 2025 04:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757221194; cv=none; b=FmWtCxqGhNamnh/RXzoATmd51wYRB7ODapxgWgMvDEUM5wKNFi8a7gKC5mVZCZsz4UF5O08XQUScm8gmk7RTCc+2yBD2CoYeT4LVwBsG70dvv2jiQVA7XE+j4T5yb1zwVEoYb6Au2d/IjYnvDZo7SgxYPavo6BVScyFAkxdpdds=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757221194; c=relaxed/simple;
	bh=yHZnz18zpWf7fNHaB5ubZkqBIRm6WlLsNhrlc/ffb8c=;
	h=To:Subject:From:Message-Id:Date; b=Xu8Ofc82NT4W750dsPgPaqAU+4tQoVbNA2HORMb8s+KOb1yckQmlre4yY6EZ6b5V2Gvnwu77ZO4cGeULGjegtBIKaDPSVPUCgY7NtiUo1AjjR1at4tqfKGZddq2gCUhpgKN8NXKF5JxvHbAaLO0taXLxN2GVgK5fQ6zS0C1mims=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DDZn94Ay; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DDZn94Ay"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A632EC4CEF0
	for <ddprobe@lists.linux.dev>; Sun,  7 Sep 2025 04:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757221193;
	bh=yHZnz18zpWf7fNHaB5ubZkqBIRm6WlLsNhrlc/ffb8c=;
	h=To:Subject:From:Date:From;
	b=DDZn94Ay09m069OeCxgqDpX97sQ/wHbT1o4NgmHj7j7cyNBLKgktAL8ik0kP+Ypw1
	 YVm5dC2HPVNtBwfwdnPi6NcHGIABjHhUQgeaw3x1SuMQiFpX6uz3k/l+Nl3cHRmbqN
	 NN7YnDIlYHLwpQZpYeI9NDRnWriGEkwXLhnJYfEUIGYuNcwV19fnMmpbEHSX94g0wN
	 OKGG5UpMxpc6XvD38ly+sEmUhVKyNqH1z54tdh9X0uPS6F0vmico0FyZjdcfwWjRbE
	 tuNsQQ6zEokyHqcJ5UDLhEmMFm9fq8oiMVOjX+JItlvyZHevcbzd/jfb01COt5DQ2S
	 d1RsFLurJgdBA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91039CA1013
	for <ddprobe@lists.linux.dev>; Sun,  7 Sep 2025 04:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175722119357.1009.16118534699214868464.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3201609a7375f2d28703836c7cf6ac7f1284cad6744d128ce18f9d614a176762
Date: Sun, 07 Sep 2025 04:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757221193
