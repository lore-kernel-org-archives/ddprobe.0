Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E22E17BB4
	for <ddprobe@lists.linux.dev>; Tue, 30 Apr 2024 06:22:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714458143; cv=none; b=Lb/+wTD2CwYaR0bbhfs3FEjNFBXOQ6f/QJ1ifmLtYWK2I+GeUEzdRtFakkVs/RffnPEbEqoLw4E4P2TLhV/wjqkl1UEdGe4q82jPN6ijQooQBtQuAuyal4faTWqv5FSnYTY7KGKGafkz83qxjnNM2TytJp9dCYnipylsfj8AqwE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714458143; c=relaxed/simple;
	bh=eDgwdncAEQ3nE6nlGNxVp/xPSZOoQve2+LrP6avHzUQ=;
	h=To:Subject:From:Message-Id:Date; b=RxH4a2nsOhjZ7WZxXqcxBjOLxwJma9b+p+lhIyq85N6/P+2MU5wEN6FXwammao1SeV1NtVjVr8xdiXmkNdc3cMJBTaqZ9rpk0p1D5tMXroDJn/7qqHWgzDlwzktLFrSvwfbH6pciL52SPgf/gb7aiAHV7jnGqsI2sJ7HdnXCG4o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pp83TKAx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pp83TKAx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D72BDC2BBFC
	for <ddprobe@lists.linux.dev>; Tue, 30 Apr 2024 06:22:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714458142;
	bh=eDgwdncAEQ3nE6nlGNxVp/xPSZOoQve2+LrP6avHzUQ=;
	h=To:Subject:From:Date:From;
	b=pp83TKAxG3pjRHXzB4nQus+Amu7MwEp31WPHaIpZmsfdQLdnqBfvyLpcw2ZrX61LL
	 wP+P3+Dc5oEAt1huPGAu0pFNjbEndLSYXV3vf8T2qB3KhSzpEjAwWJrgGS7VaV250t
	 kA93sqK5nl6VoP6Ob8SFkbxLNLzOyfwcJ3jRhjQsorYx+28Asn4fZA9kCOGcOLgDZm
	 g27jO84Ua0XNK/7I46NEdSSAxUUgW9JHq9ffb+rFfABokguy15rEhlxPDYtgh4if2s
	 LzTRN8GxfljunwlmxG9IeTF4f8HADhXnultAGvBjyRDHt+ZlPJUwuiRkLo89MLUOX0
	 jV+HDFzXgQiDA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2378C4345F
	for <ddprobe@lists.linux.dev>; Tue, 30 Apr 2024 06:22:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171445814278.24364.15010988644915066112.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2042afbaa8716a9b460c180c08e3dad2fbcddecb7a5c263d3a66c1b9ee6a9e08
Date: Tue, 30 Apr 2024 06:22:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714458142
