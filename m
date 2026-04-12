Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 367FD1E2614
	for <ddprobe@lists.linux.dev>; Sun, 12 Apr 2026 22:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776032854; cv=none; b=k9ntviRSxbeMtSR+OsxFWeM1NLBSbKaePMjYytskL4sr/C2WQe9tOlEpMqdZ2zwXOVXk4egoSkU+Wd2fIEGq2KSUWmia4YBEpYSoW0Lo1piSc2EdW2x6eBWyQ6estTYPUKwHemsnJR6NQWu/75hgGaRe10KbU5WDkOKH4CH8GuA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776032854; c=relaxed/simple;
	bh=U8AC32ycZnf1KbHsHYoFfSUy4i27AbHOF/uqphIH9sE=;
	h=To:Subject:From:Message-Id:Date; b=Lmdr+vNBm8YPmgnTBbr5wZqpQzk9cDWjdH0GF+XB+BAq20/oQmtH8MFWxJfwiHGrseVtKiRtBQx3ccQeWfda8gXowXZhee0FLA2ARMkRxgPbdMcCg/H8WyiwtZ91bURRXKqYgecNJxHHsFtzvDLt2TQO//fhJm+vDPTYTqfT23A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UmXNanEN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UmXNanEN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2CAAC19424
	for <ddprobe@lists.linux.dev>; Sun, 12 Apr 2026 22:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776032853;
	bh=U8AC32ycZnf1KbHsHYoFfSUy4i27AbHOF/uqphIH9sE=;
	h=To:Subject:From:Date:From;
	b=UmXNanENEovntKODkNlg/LRG5BdgQqMkMW/TgX6LBcR5QqZi8zahI4jMq2YRZNK1B
	 XqRPlfStFOgPZkkNNtGB3i8+tNEyEkfhdSnrGkP9nAGhJEzvgTfm+MYj//1G1N7hMe
	 k/Iy8/1DNEza4AWdn+UZjhRRuhpFJgDs8ftX0DU5Xh4iX6FcsteJvT71HcUE479U7Y
	 CgnnZa5kd6azrWHr/gMlTjT6jkuspynSDr+/SL9eBc36TNiYKPg/gyxCQeVEKoDcID
	 rbiahE0BFxkbSOI8gVO9N+CN4rtENQg4TeguJk2rAazTtrbBpdROutVYLYNGT3Qmjv
	 gBGXghbfcNbWQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFB8CE93807
	for <ddprobe@lists.linux.dev>; Sun, 12 Apr 2026 22:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177603285368.4425.11213612582707660729.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 254f6b46b418cbb7b8a5bfaf9f630c813704da934707e40c2ad29fcd752fd824
Date: Sun, 12 Apr 2026 22:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776032853
