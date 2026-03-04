Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1ABEB3A8745
	for <ddprobe@lists.linux.dev>; Wed,  4 Mar 2026 12:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772626494; cv=none; b=oA2uaN8m+NZl2lkAMBhCZDy9ckga4YxlW/j4KPQqELhBb7FMuM4qm2FWkrYsSUewze0Yj+HvZL3lAEiRcYtOFqJb3LKOhQ+3Fl7RHIELIghDveAlyBR1mqIXAbsv0QRRMDV6+Kp0P91e3a96eboN4BlRje/kc6X7IdeoIjySpjw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772626494; c=relaxed/simple;
	bh=NHfG5RBPi8PAxOG8WQiNE/OMc1HR9yvlcRN2VIfBnxY=;
	h=To:Subject:From:Message-Id:Date; b=P9mFQ6sjqqD7qsWDtlbyai0TWJvCTafDNVWeQuz7jO1VUpQ972zOWqJgihJdoCZgnrillTyVcMEhBSPUNsj5316stiUGikHJXuXRVpWRaZW6095k4QKQLO0nlNJfneyP0ZcQSIwmRCJ8EigKTAkAoJ3Uy8DpaHzovN5mXqsunc0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oGDbjmrn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oGDbjmrn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C126FC19423
	for <ddprobe@lists.linux.dev>; Wed,  4 Mar 2026 12:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772626493;
	bh=NHfG5RBPi8PAxOG8WQiNE/OMc1HR9yvlcRN2VIfBnxY=;
	h=To:Subject:From:Date:From;
	b=oGDbjmrnhZEPEEDeyeQDgBhqUHW1CXWYzMPMD99p5n58YG6RnqQjFBXWTAFC5hZLa
	 nzB8f6H6cYqmQJtif6LLFM40nz1BVwSobCb8okK7blI+Ox6ag1I1AIimbk+d5ItZHR
	 sTNpIRD7jUIqw3OqG6QcTC39L1YtAGoA2R/ev1prt7ZldyUw4AlLwaPM+I9pC8UFJo
	 Rr4uOCgBvQvq06xl7Cjd1yragDCoON33j+oivDccDygE92iVjkjUIr+ywwmLBINCCc
	 lgFJ+CLjVem/q+PzDafY69ckdLREjfFXot/t0NV3fHpxz3WYAwgIJQaYvah3RhAhDz
	 Q30X18yvHBGWg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A37B9EB7ECF
	for <ddprobe@lists.linux.dev>; Wed,  4 Mar 2026 12:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177262649363.17146.17969848978125564723.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8e279b54c73194ef3e51a7fe5e00a09ee040a40dbd0bc3094e738522475cbad8
Date: Wed, 04 Mar 2026 12:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772626493
