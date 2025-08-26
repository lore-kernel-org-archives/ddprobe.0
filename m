Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CDC6350855
	for <ddprobe@lists.linux.dev>; Tue, 26 Aug 2025 18:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756232994; cv=none; b=mH2kMatzgXjONoES4VqGGfECJcllPXgK3W/OAoLXVd9I0MaudvpdPS6QJ3rTi5Mh/xZDxan7vc66QWW33OvpKDeoTxZImzAUeGBUIE5UCo4nBLm56H61m09rj5hQKvG8Vx8+3f7Sk9euclgsnB351Hlmv5UKlfbKixz/rl1Zypg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756232994; c=relaxed/simple;
	bh=vNso9v+kaB76MLIgfnEX+jwlwIfu2bPivnxk2bQ/gVU=;
	h=To:Subject:From:Message-Id:Date; b=Y/il8OkBBbXoS/+58jPBxUwdSipCKPYwhvUCECWzHDO1CMtPOVrhL8D/+wO+mV2dvg8RKcT68P5lZrKwXlL2FuMdnWZplixMJZnF9sJ1CEJLkNdIHWJ7MCjFh6OHWpUy7vbWl0J2PumEb7PhAtFVJbk0uKCu0UrgzXJsfi18hAQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ce53w2g5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ce53w2g5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A18F3C4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 26 Aug 2025 18:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756232993;
	bh=vNso9v+kaB76MLIgfnEX+jwlwIfu2bPivnxk2bQ/gVU=;
	h=To:Subject:From:Date:From;
	b=Ce53w2g51voB50E632TTtBBK2+OPs6hz3iKooOK6z42gYx1l5zQ2J2Ab/IW06C0cI
	 UWXDSYMPpldMoSbgirBwFCuGVwvP6z5nMwMTEp6740yO7Muq04fztadAAuqo7JXhVD
	 z2UjtCLhZinr5RRziQIR+4n+dNrxUtQaCA+XTE3Skpnpl10wrOK6PONo+SF/ncKE0Y
	 qOZGOKnYsFHs/dVzF+Y+1DebBmlrwL0kj6CxWM3p1KFYUyK14PLO0GI7TpCfQCavZD
	 X3XNTA1GbrP8+ZkVfFlGovOJ0weyQewCV06C7X54tZB1QN6HVQTpoTl7an2jlmQlmR
	 YnA47D1jit+lw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FE6BCA0FE7
	for <ddprobe@lists.linux.dev>; Tue, 26 Aug 2025 18:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175623299358.15854.12159560291060397052.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9212c429ef9510dcd2847e1c39112cfbb8919101fd01b0478d8a576bf0da2f1c
Date: Tue, 26 Aug 2025 18:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756232993
