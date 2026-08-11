Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4523337648F
	for <ddprobe@lists.linux.dev>; Tue, 11 Aug 2026 18:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786472434; cv=none; b=lRcBHHAwyveJxezRMQ96RtNvV7iLvOhzq3txfuKsqJBqUAxjkRVZJOJSJziizdxgXgmuZLBx+2gSJdMLvHs9un8ldF0/G19yogz0MftngBOUeDeombcIdI+1+fOtTklBplvdBCaIYp6dH0DfEF6TGg4dS/if0n5fKWJC1At0GZI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786472434; c=relaxed/simple;
	bh=51k5iJdyfnVl0bV+ty4ussaMYsIJigM56Reo2TNmyYg=;
	h=To:Subject:From:Message-Id:Date; b=ESZpgblhhzQioqUlN6I/68r8/4fcHzwQVa5xUcTy0E+SK1rGg4uImwtYJwlYkpp3mtZtH+AM0qKzmbBWTSDmratTAoZQPkw2CbDvNru5KoOjcyuao9fIezQI26lAVo33nWD66MSxPhMvLu/XnKzHAbT4UUIH/sQDA+fR+wSb4xw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XuMNCWM8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XuMNCWM8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CBC51C2BCF4
	for <ddprobe@lists.linux.dev>; Tue, 11 Aug 2026 18:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786472433;
	bh=51k5iJdyfnVl0bV+ty4ussaMYsIJigM56Reo2TNmyYg=;
	h=To:Subject:From:Date:From;
	b=XuMNCWM8y1UZk0g3WWtHKE7hnUoUuX/6c+LvMjIKWE72kAQlw/lImDzO3mxzPIo++
	 IF2lwbYsfNFdqjgDTmHczwIdydWikV97pCkz9mS50y4SYwp9unynR5stBy0C2Ahp6s
	 aqsffyMmgDaHYrwiKe9t/3b9Yi6ppYnF+neQ6XwiWNnlJIxRF3dAp8KLZmwimTynBJ
	 EfV61Q++8auRtCXaQQMOeedeUgtl1DfVJ6F+TDk08P97dVccifRkQSiH8u7sS67C2/
	 UhQeClgrVROl4hKdVanqfwZL5EfaONHlTeYJYqY5lETt8cqY4/Pv12vVafXmNIu3rY
	 RbPF65XApoc+w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A940EC5B56A
	for <ddprobe@lists.linux.dev>; Tue, 11 Aug 2026 18:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178647243368.32755.15503343531372071369.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f4f6db70c69898233009558a687e8b1b470cdf97aac6e85d7ea35e7ae05e7ee6
Date: Tue, 11 Aug 2026 18:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786472433
