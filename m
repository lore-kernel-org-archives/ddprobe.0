Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4868F1F1300
	for <ddprobe@lists.linux.dev>; Mon, 24 Mar 2025 06:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742799594; cv=none; b=sOvumJ0YNlFTESTTM/5IXz4v7vKkXPdzL3+7Hg5nskNEGZZXKcQZaqU85UcvULRFFxkM7YG/LisS2jdv7iUh7cl6Sa+uMSuhRQLqJ7guFqitvBOU8PzmiMaUoqpa/bHHe4xGQOhkaWRobVcvTfLR0gCY0jImcc1vXkIrMy+HNJU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742799594; c=relaxed/simple;
	bh=DmESGNfh/wafufRrKiXRZfQfOMBQj8Id4u2AV+U9jBw=;
	h=To:Subject:From:Message-Id:Date; b=T3BBdnFfKP/HzaFDOgJwkWRjf08OP8giaye29U0DCR66N94FlRZg0yxKTsCsTavIJi1ip7gw5zm2mUgF5FksGBbD5Aqn+DyoOaW01mCwvnvf2XwmqT90agP47bb2frO9TgHQKD0pjcc4qV3rf+fuNbsxmiocMsNQmqLTlhSJJdg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fmTEWYUk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fmTEWYUk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA5C0C4CEE4
	for <ddprobe@lists.linux.dev>; Mon, 24 Mar 2025 06:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742799593;
	bh=DmESGNfh/wafufRrKiXRZfQfOMBQj8Id4u2AV+U9jBw=;
	h=To:Subject:From:Date:From;
	b=fmTEWYUkB4eL4YGKIlLSUer9zdfQL2r4Lky2Eea5HRQ3x7a/JTJsxw5XQZLzBeCWz
	 jQuhDGQddRglNUXVpsL4jmW0s6HzATmC7j/+b31xyVo1VfzgTnBHA1nx4IYN4EIay3
	 Hk7A3merLm4mIjqPQWPVB95HR4uAGvOaNlD5lofGzof6cP4s1BoPNP7bKbK72UsZjp
	 iRzk986nf9Kx8WXEpCCrgi6c/52kx2j0p/d/668+KRMzCPmfXjgIdYSj81JAWRVVX7
	 XupGY0DXlOk5er7LCJnYXghAQHv8NzNv1x2KToqRBseR1776zg1nn6x0YigxgQE/Iu
	 BAQ4TgNQOsyfQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96A27C36002
	for <ddprobe@lists.linux.dev>; Mon, 24 Mar 2025 06:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174279959360.16575.7555364860975612350.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 51c2223350ff7c61cbcaa77b729ab78cabbad174632b2603c76f9280b4d0d7ae
Date: Mon, 24 Mar 2025 06:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742799593
