Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E0161953A9
	for <ddprobe@lists.linux.dev>; Wed, 15 Jan 2025 16:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736959554; cv=none; b=oDcyXFU93t2JYjq76/wYFaSUBHiKi6C6sgXYhvKmIDQYf8yOMbm+GxsmYJ1jPpB5GncEXxyuXOUqK1E8QaeFNbiOG2mX5nJiyOGUviI53FDq79VfXGQZWw3ImO5LndGvOVz70sxNPdWicZGHzW3yjk9WeZDTpSL5IwlrVoVEUc8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736959554; c=relaxed/simple;
	bh=VQ/fiV65D6PQTfTXGOqsVNU1MnXSzHiSszKDRVRNdJg=;
	h=To:Subject:From:Message-Id:Date; b=ZIwHcT0v9D0QUsXg6UggueIbfASdj0mJ1bG3XYCpe89F7H9xBprRQIND5nqWr1b7ccCyq5SK2uu8kYyhd/OzsF4wR0YbjlWQf4EmjqhbRuu9SOj511bjnB6BBLriq//GrRPt4pmSk2WJ+0klIW7/lu1OuV7gLCR2aEpZJYw7eEA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AgPwI28o; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AgPwI28o"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADDABC4CED1
	for <ddprobe@lists.linux.dev>; Wed, 15 Jan 2025 16:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736959553;
	bh=VQ/fiV65D6PQTfTXGOqsVNU1MnXSzHiSszKDRVRNdJg=;
	h=To:Subject:From:Date:From;
	b=AgPwI28o6ALWLt92ijMzV/xyYJg9K7QoqM/3mQHbpbl9pZjzyZuYJLoYEwPWnGPgR
	 aj3BwnlMyW6YlOPmRrFIdAx/po4Vf0N1L/SJMj82IQBfPOHzFl8UpplYzFyCuNLPNa
	 6DHwIlXb64QavTMxxvU9MHNPrDumS+Y/i+5hwGaylZ5iw9UUPoeBqmZ4TyUVzWb0x3
	 mtGgNh+AWEZkDnq5zpqziKJEvXvOadESih/2HoSuYjRyRQer6ahBa0JYbrQLcQ7aP4
	 1rSPTpX2QYm24a6WEmooeZxJTS5wjwI3WgiM5bcOBSYfKbMoNZgfumiZXWK/lSnWZu
	 QAuJwb8FpzFZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95B5AC02183
	for <ddprobe@lists.linux.dev>; Wed, 15 Jan 2025 16:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173695955360.8849.10044238665229439458.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 70f63fb05a4742398b0857f5471ddf4ab107f8813e3e6bfa89e816fe8b930bca
Date: Wed, 15 Jan 2025 16:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736959553
