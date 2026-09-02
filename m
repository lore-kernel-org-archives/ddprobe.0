Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3ED423603C3
	for <ddprobe@lists.linux.dev>; Wed,  2 Sep 2026 05:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788325234; cv=none; b=AowFNhtiPIChLFXrLrh6yT7C9wtkl9W7rZA7L4G6XAFekxzwJGoEqec6ZAVC3OeMBXXDnLKJIVPTNoqRsyqAP5Z8uG6DBcLU41NpQSx3Dwh/T6bQYozZIexW1Z+ky/lyzWEyONsPprD8SXxj+DDPQ/S6gvSFKFUwi+L4sumYQKI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788325234; c=relaxed/simple;
	bh=L4FQxv2e1BsaD0DDJaTkT0KHTI9nBZD/Q7kKH6e1z8c=;
	h=To:Subject:From:Message-Id:Date; b=BtmryI9QVtNLfZA312mIL5Uhc4M7m37ko2DyJJcr9ha/oYMCYElOXMbIAwYLd2eDF8e0ZTVH6Z6/f1LgX9/PSVGJlh2ubLkq8/ZjD0U83RFLWhzQgWmvnN6X0YtUnaFHnxgDvmkV8VIUuxkgwMhOm4FdclL5Ypcmhwsu1WUP3yw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oYz6PmYo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oYz6PmYo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC25AC2BCC7
	for <ddprobe@lists.linux.dev>; Wed,  2 Sep 2026 05:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788325233;
	bh=L4FQxv2e1BsaD0DDJaTkT0KHTI9nBZD/Q7kKH6e1z8c=;
	h=To:Subject:From:Date:From;
	b=oYz6PmYoc6+GD2rMDP1kPDwl3ntKIBsNP+G7nCjtVzNjE5jU6QHXlxBZIxG+d4jX8
	 ET9Ppsjrjrp5kri37h/gEEzWMrjMc9UpyasrZCiSQM8oxdZE+bPYhkQVH+7b6nFp3f
	 nt9zvZTOW8d7S8Q/ijlfbUqKRMar8XSEF7Bip89FtkEIEWQVTxo7eiBEipNrozSZ6I
	 OfKzV6JEajaXgz0a9ExESt5YtbyFrzkbiUnawmunBpL6OGoDmVvzq3bS/HyBG79PYS
	 Fxm0ZfKfiv8Kmqcfhjzhyo+8Zsb9/pZHQqr2qARTcJIWLuvMqgiqF2gMH2mOg/StA7
	 BfvLD0O3NZJRw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA3AEC61DFD
	for <ddprobe@lists.linux.dev>; Wed,  2 Sep 2026 05:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178832523368.3082.6636781664866869031.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dc962aa665b24898d2438aad76717f8de878fa4660c437aa52971cdf7aedc17e
Date: Wed, 02 Sep 2026 05:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788325233
