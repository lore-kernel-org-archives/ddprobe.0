Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 51F7E563FC1
	for <ddprobe@lists.linux.dev>; Thu, 17 Sep 2026 14:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789653634; cv=none; b=ElCaHWZ6AYxA1pKLBn/mIVOSmzIahur1dydgZ+Z9XN01M4ep6YzPu/irXRrl4yS8qbFi0WmtDpYJQEwZfG6pE/J/5Gu4ibsoTtfC0wGlqPS5ddEp9P05IJf/rTUpsuBZlnQ+kRjmSTlRAtsQPUB4Fg+DW86oC9OjY5eyODB/+cc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789653634; c=relaxed/simple;
	bh=uc7qGXqWDpgDd9c4hDQ533lr0Uk88TIaKVfip37G+uU=;
	h=To:Subject:From:Message-Id:Date; b=sbfVkLSWuA1IeRgk49Nuv31iKW8FABKY+KQmagLrPQUyCOxYRw4feFJ27wfpYWfcc5aJbxZ6xtcubdfsjpDPo5ox9OSTfhv1NX0H0C7KrgiKZvbg9lm5+olalk6L6uo1kolqwHhIb0EQVunSeaiGZzYi/KOW+ihh4n524GZ+ur4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RBAcrOtf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RBAcrOtf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA651C2BCB8
	for <ddprobe@lists.linux.dev>; Thu, 17 Sep 2026 14:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789653633;
	bh=uc7qGXqWDpgDd9c4hDQ533lr0Uk88TIaKVfip37G+uU=;
	h=To:Subject:From:Date:From;
	b=RBAcrOtf18E5BOtQOr330oeQ5v+dgH24CWKuKWJImGIvfMN1l2oZGaeQuN2gDEv3r
	 yy0XJNRMlpNNoIDWY2VDr1OQ31R2UMkskoQ/uzFJigO6B8nwht3ZB5RtO3F20zwwQG
	 ccWr17MmTjY88rZaTAncKx7HC0+NP+4rcepIWB+DTDlmYcmgDz1AKdrGlRVTRcuze0
	 xFOF72cZOQNvi6bE2ULi2DsFHLaeQ1SCoGNwjtYSpZgAhqZ/k5/Epnm9+XE0GpAVpz
	 XaUaOx2o1TYvlsHvjLW0BHz7wm/A0QAza6pNT1Bm8YJVhj8ljkflkHX39Ke8Ml+Haa
	 dml4NDWaekgUA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B423EC982CF
	for <ddprobe@lists.linux.dev>; Thu, 17 Sep 2026 14:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178965363372.24866.13624105077043298877.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 26aa0b3947570b5beb40f75db49cec0040814cee1b68706102b7e622d7c70bc6
Date: Thu, 17 Sep 2026 14:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789653633
