Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 461173655FA
	for <ddprobe@lists.linux.dev>; Fri, 25 Sep 2026 02:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790302834; cv=none; b=EUfXlCo3MorKgCE736u6KYdPY8eT23I7+P/vlIshIjVSJNlOFl8Ev/Y65La+eMCQhv2oQrC4THdSkfsyv6WD1QZXCJO7p+j08+SrpfbmOZi//uCiNr0xWB+9aXaj5SJ4kRwINhzyO86ZPzgPitUgzKfxXQT7qYVZIG83Soixzn8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790302834; c=relaxed/simple;
	bh=u+H3BXSfBKQP9+5BAdQGJ3rRNRmxJHrowMhOmRa698U=;
	h=To:Subject:From:Message-Id:Date; b=GSioIYcvuLfvx9a4Z4em8k1ZNm62JNF0bzSyOob1HD3zJQZo33fcpIyERU/ZZlpo5t5ganmlhnPEI6dF3qpaI5kTeydhSZhX7WYO/So6xOsWXTMiF3wWIzKooltqeHjhebv71YjHeGW99O8lqIWI20rBmHXSRC/yK2qf+1FJbrc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fYTHZVGI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fYTHZVGI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3993C2BCF5
	for <ddprobe@lists.linux.dev>; Fri, 25 Sep 2026 02:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790302833;
	bh=u+H3BXSfBKQP9+5BAdQGJ3rRNRmxJHrowMhOmRa698U=;
	h=To:Subject:From:Date:From;
	b=fYTHZVGIQoL68lGJWKkVWRKrRs9+TTsGpL+3gibSMV7upnZVR3RyyCxwA26LJazj1
	 UCplP+nIAeiQ39mNQ9MJBWSrXNWT96Rm75cobxwb4fIhE/i3JcsXYFBS1ejEZcBYp6
	 GgppzX/6d4bXGqKqF/4U/E/NXfD0ZFR89v9miqGRDO2YCup+CUshcQ8U2mJIZ5+QmT
	 LBc6pOgtKPLQn/c/1GQMOqEgmXxKMRbHKRWVFARyXj+oNvXz1dqCgJb088Xf4zvCF8
	 cL/AHo9o9hiwtAZwz29x8i0hLJNYS8RCrKZNo2Bxr4RNGkGWwn4at5TSb5/wfPA0Ep
	 auTijPp7VCUDQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEB4EC98318
	for <ddprobe@lists.linux.dev>; Fri, 25 Sep 2026 02:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179030283369.23109.11054808714950692162.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b47f6686857b1937f6e7c7da111c6c98f36ea99cb758f02613b3324fd10fdc4c
Date: Fri, 25 Sep 2026 02:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790302833
