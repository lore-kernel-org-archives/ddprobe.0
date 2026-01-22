Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CE0AC40F8D4
	for <ddprobe@lists.linux.dev>; Thu, 22 Jan 2026 03:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769053433; cv=none; b=sguiAt01VpR81dqY7Qym2f8htteoQXL3O+xd6WWfejXuiEa41bqrTSPaDnJJOG8hOcsPIPkEfaoNrQQPEOGbug6peyjuHsK4+Mo9Laa9cpUqUQoCJu0LJo+hbOUL3NfLqZs4Nq1oaKoLuy2eqRYwROLBH8SnMngLf9/03oPsHAU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769053433; c=relaxed/simple;
	bh=yzyavjSgQ5qza8T1uZ3acGedwO0FCW6l61S5vQaAA+8=;
	h=To:Subject:From:Message-Id:Date; b=ksH/QaIth+v07xEXrONoCf0X6Lv1O96mw1FnuEkCR6mFc2q7DB5wJlT8WjIA5JpjfikjjVNRvYYjj1Htf7cWIXxDRZOwrdikpNtRcOm6/FWNOpuF02LC8nHHIe7SLyp9DmQmJ0aHaqlZcrudXp7C0/LuxiJp/XS/6iE55uCr+9M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EeZgPcze; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EeZgPcze"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADA51C116C6
	for <ddprobe@lists.linux.dev>; Thu, 22 Jan 2026 03:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769053433;
	bh=yzyavjSgQ5qza8T1uZ3acGedwO0FCW6l61S5vQaAA+8=;
	h=To:Subject:From:Date:From;
	b=EeZgPcze0bg7oLRe+4kCulYQqK8HnCc1DFc/2szzyjnpFj/qXI8CGRSW/5M+ZvW0V
	 f1JCu97z1yZ/twLHXxL3WxLW+HAhB52vLNhrHoyuUxrZXk3T5hK7m0pvXCV4vcAz9i
	 YhjGk9+5hqV/5PFnbwmCzEundF6l1CSe9wkgcJXEQA/xS+KTrEquepwbKQ/NtK2hir
	 PFlOM7UjMGOhFcCUWqMMQyZJKTUfmTCyh1Qp7wtNBfTwYzHhBUUA3Lv1hcs52sNKpG
	 ywxAWwxn0ZSeNnk9oUaCJBrB7UUQEYRjxiBbi06sbgztP6bIc02YfjfSVOIeDb0l58
	 55aBlvuGjmBNw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A55CC44536
	for <ddprobe@lists.linux.dev>; Thu, 22 Jan 2026 03:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176905343359.27281.18355975925913527760.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1dca097bf138f3e7bc02d5c802760c70269fc16c4aed89cbd2a2880d45d8c512
Date: Thu, 22 Jan 2026 03:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769053433
