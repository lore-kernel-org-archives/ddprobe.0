Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F22F353E2C
	for <ddprobe@lists.linux.dev>; Wed, 20 Mar 2024 19:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710963497; cv=none; b=gcOH9NJt5rUWG01jabhzFlaNmfRbW8t0yd5bioxKtfmXAOG+s5utGhKz+a8uRVeHquLgYB6aleq7DPh9KAFqVB3aWDsgJsDP6PtHyYstt4W9gjEChFyAxoJzkp86Q88PmWU+YkJX1IK3SGAbJVggqtRrzAYL4jl36MeHjSt4xmI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710963497; c=relaxed/simple;
	bh=xpc4cY1BiAmPRy74LKGEOPMNqWadE0GA5FvxKZM1ksM=;
	h=To:Subject:From:Message-Id:Date; b=EhHi93qm4Jz3x71a6jKu1Y5CQpEOvkFpOrBWd4RFZY61crlxNQvIMWnVEmEnTriMJLVDgf51PUQ7T6eG4I+vI28tGsALTyS6t6U+nUGzeSzO4KbNi5g1wCQd+BXfFO6U4Uvl6G6Zj/KmCF55rT9vJV+MWGPmZMCxX+NWt4BSB8Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ceUVEnTN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ceUVEnTN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7A6A7C433C7
	for <ddprobe@lists.linux.dev>; Wed, 20 Mar 2024 19:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1710963496;
	bh=xpc4cY1BiAmPRy74LKGEOPMNqWadE0GA5FvxKZM1ksM=;
	h=To:Subject:From:Date:From;
	b=ceUVEnTNLbLunJ3zgOxZpLK38qUhqaORW8KM4PlH7zRt3xW7sugXtc7CueLvpE9eH
	 U80kC3ddxefGkbku4ER88Gy9IcFna1hC2FE7UKHmmDbpOpVjqbyYqWzAVvmXOVCBoc
	 KYzcluLIPwH3yzISXnVS12FPSnSn4k/uswLE2Jjxv/HTFWKDVovEFp5h9tEX9mtG9v
	 yPrS8RNI20X73zl7QMouqsLr+tgIPywXOxPr+NpbjPlxAxHRdMFERR7BIxzU8oD20j
	 swgRKCjzsD1EomJUczh49yK9B0Q4JmgzLWDvHdKULBa55nzD42/eXYmGQmfzZLxAQy
	 Y0MN8mBQMIpLQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 654CEC54E58
	for <ddprobe@lists.linux.dev>; Wed, 20 Mar 2024 19:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171096349638.32181.13698408862501594373.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 176d67dc61b4c3fbf9d81fee3229d1f3f3893200d6ca38493283b00f3312d832
Date: Wed, 20 Mar 2024 19:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1710963496
