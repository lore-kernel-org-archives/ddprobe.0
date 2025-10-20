Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C62F2D9482
	for <ddprobe@lists.linux.dev>; Mon, 20 Oct 2025 19:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760987994; cv=none; b=Ta1SnCELfFxTZASJ7ztgZFJekJKFc7RuUGLo8UGW8mstL0kLxYTdHZi1AC6Sw1u371mKuXwSFmzqffYV3bydyHqsVoWDEQKOKS6obIHFH8OrYBxSDpQu+cXJMLHJukkHxBj1Wl3qKBwujIDfrkvAhs7oZ0udxEOHGCi1rAK+dxs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760987994; c=relaxed/simple;
	bh=8OuQl7RWtr+tIpdhO30mkVahrVSCG3ZidJj5RZbKJOA=;
	h=To:Subject:From:Message-Id:Date; b=ZqvI6lS8ZK1cKyjE99XHr+nQayLPaomqANdlmz3MKbsPsIYUfsYPw1qbxi4FgUOublIVR2mOE+0PU4IojOmEgvCCXvFbpGDtggpJawads+BbFcQjyf7pQlWf1YUPVJlHnqRLfKf7PRkgJjR0LQLCM6qCLQFnhQjMyZtH7pOp0eg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=d4/KzPMg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="d4/KzPMg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0DACC116C6
	for <ddprobe@lists.linux.dev>; Mon, 20 Oct 2025 19:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760987993;
	bh=8OuQl7RWtr+tIpdhO30mkVahrVSCG3ZidJj5RZbKJOA=;
	h=To:Subject:From:Date:From;
	b=d4/KzPMgk9QH8VqZvTF7I7tYw9ONxduCtUp7E+QLlEKWsWxNZZ36dUpCgyfZ6rO9V
	 EVKpNZ98rnvkFMEeG1WFbZ1TT+hDP38X3sn8UoSVY5HmrFtqfaKMhkLuyOTu8QOQRl
	 e/4tTEQp5saD1JOlPaAZPkc19Jm8JH5Kejzyb7a45Bn9oGoZzGNQrkKBG7iAh2JQfJ
	 wZmtqqOUlEaXSVSWN3a9kC5XaSquO72COSuHAM/pL/Ac+/0GI7fh/rpy7Xuqs30SK/
	 ROc+U4nAC3ttxsLPvJYff+Py3VWVwW0GslhJS0FeRRPQbezFULE28TWO8Pl7XVykPp
	 G9aCdi/HafXmw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90DACCCD193
	for <ddprobe@lists.linux.dev>; Mon, 20 Oct 2025 19:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176098799358.11698.5509909869937348994.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b3a03470a7425a198c8097fca32a962fe4044aec415bf8791cf0f298df90833d
Date: Mon, 20 Oct 2025 19:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760987993
