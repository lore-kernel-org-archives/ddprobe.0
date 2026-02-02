Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0248737F0FD
	for <ddprobe@lists.linux.dev>; Mon,  2 Feb 2026 16:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770050034; cv=none; b=AuOO8UBWDx6rC+l7/oAo6pxb5e1cFBWzgAWfW272OvAx93bu9yjdtsgI1T0ksuEXAHWkv9p3UU7zHCwf/G2ZNnF6l01nL9c3GfysrRsaFz20O6IFcqoSAePioukFIGKxdd2YTzNphpz4IjDNzo8FwAtHJNQsmAt/BcFE66E5wwM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770050034; c=relaxed/simple;
	bh=Qxae4trJca7OD7ZLB+7QMLmWMMSITHhkDHsCoHj56n8=;
	h=To:Subject:From:Message-Id:Date; b=SiFcw2kbUEWf/uQvqMw3W4y1Xx+vH6yYGsZb89hJdPTPNVCGmkcu7CJewix3YjIexzEsLazi6/c3CWONu5EWjTX3HXPQ4b6a8YGF0YIpvOjkN+jGc8M9vnA9p0pikTrrzhWSFt9rZl6dUzjx/E9sfdZB5b8TwaVlqx0i+nTTycc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dGncoecH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dGncoecH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4083C116C6
	for <ddprobe@lists.linux.dev>; Mon,  2 Feb 2026 16:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770050033;
	bh=Qxae4trJca7OD7ZLB+7QMLmWMMSITHhkDHsCoHj56n8=;
	h=To:Subject:From:Date:From;
	b=dGncoecHfsNP6vT64NEGfGNKMPeypdlX5G3H2qIYAilPWrh+eDB3pliaogjxaJHFt
	 U1OLcZn2hlIg1NbtBgHwfdYB1wAstXDc4ZhIkAi8m5f4g7fWweB39eXbSB7WbzCrm8
	 gtA/8SvpzMPp8ngncrWkVWcItVEhh2POehtjibQdLFf94vuHbDaHgep3pxJpbt8jHP
	 A+StBy5Go5omnkeO8FxAMBz/Qev8DNR33obozJWPkfe5iE6wBNZV4G5EhOcBPnreBW
	 zzDdalGHyDJTT9/IVfdTJ7Uu/21OrSVIsfECaBqyImoKnrYtcmUpFaBX1Agp3VVa55
	 WtN9ElgYUjlAw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A1C41E7DEF7
	for <ddprobe@lists.linux.dev>; Mon,  2 Feb 2026 16:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177005003365.20234.12899927989499333598.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7bafd2b234e50e967b220b3d2ff734c48a5789e38fb94492830a1a787421f406
Date: Mon, 02 Feb 2026 16:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770050033
