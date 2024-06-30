Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7C7E510FA
	for <ddprobe@lists.linux.dev>; Sun, 30 Jun 2024 02:34:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719714863; cv=none; b=kxUj7wPpQ3CYGJJMAeI1t5jg7Zx2+/MdIOLHUgB1kgs7RUrcbT2lCS7Q7JZpRynY+ge6/AjBBN89AaMeH/t9FDoZ3HM4Q3+/HwotfzlcNdtAm1oavXAabxg3IZ8pbtWSps4yoX1wrteLWSS4YJbX4mlI+0CG1mbYipAetrmLQ6I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719714863; c=relaxed/simple;
	bh=iK82rS3rBh4IqWGd27RCBmaxzNzeF9wGAC4NzV/oQLI=;
	h=To:Subject:From:Message-Id:Date; b=u37f4mVlwv3RQSRkye1XYhMBd1/RBdFahAAB+CXDnNXi0yYBxScFMJOJCnAOol9qF2LnotLIEEz288MHGHigYmeBHxUpvSw2eRGQa13RT71yV+CVOsOJ5+fgaPjw8z8grToNRAp2C/CtO7BW1RsQK2Ch48+4BSWcttnkpX2bPys=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UZuZUQy/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UZuZUQy/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E4CB2C4AF07
	for <ddprobe@lists.linux.dev>; Sun, 30 Jun 2024 02:34:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719714862;
	bh=iK82rS3rBh4IqWGd27RCBmaxzNzeF9wGAC4NzV/oQLI=;
	h=To:Subject:From:Date:From;
	b=UZuZUQy/OWhkMkonPnLpSiJa2EXpw4nAXkRZK+eQ2F5tsrCOoEXxJE4YuwYYML2Pt
	 DtZ8eyFU8m4GsqjkpRhZT3RZbqAbSeB0OMuRCWjhooxR5XDypS4A5UBV9VqwH3GJ13
	 3SPBdBNM3tStKz6ARrkp5bE586hGyDyMEBhwRYhIBwk+cYM8o2etcZnyznVE7Xzn7y
	 2oaAwVEXdrk1x9zYEsvFvTtMEmK8Wvcz3lufjn8KFCBMms18S1pyl8CNtt6a1ZFv/J
	 0AVJbpEmq23HTYBG3vOeXpZxxJUCDlG9ns26oWw0kv20tLljsGIQuYnr48WJr40H4z
	 tx0LziXazmzcA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CAB92C27C4F
	for <ddprobe@lists.linux.dev>; Sun, 30 Jun 2024 02:34:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171971486279.18276.11931928855357022226.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d1ec2ea165a35362b9af316ff264edc0dbbefa94d8e14b0b6f2f17ab91a56aef
Date: Sun, 30 Jun 2024 02:34:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719714862
