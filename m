Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 132A03A1B6
	for <ddprobe@lists.linux.dev>; Mon, 13 Jan 2025 01:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736733354; cv=none; b=dCP8goAlm/s5gX2io4W2DX7WQTrI6x6eBgNeFz9tN1xu/Mc02IPEd3N9R0F4U15wqBl6SpVhWSvVd/xwSZ4Yit7/YmZSl9/7KuoOW3MPgkrLB2qlbg/+6m8e586excmwGKjnrEWVItM9TJRhicwoLWK6tmPNlMntWYFpTrtvKKQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736733354; c=relaxed/simple;
	bh=QbVROW7ZQHZnhTJ5adrBtpEBHFeWMzs5dQtNFBdudBY=;
	h=To:Subject:From:Message-Id:Date; b=u7gm0m+T3vIh9LweQkz3q5mkim2JY5YyVmWNH3x93FzWpJ3rT304UO7aCTX+D0TWbQ5O/FNwSFfbK6FgTEIMh1jFduE+4/ldR1xN7LK4bxKpkIgtzVaQE7VyqYhe62LE5lKi+FOZwwovoL0ZhHVMJBmjBKKxDuTFR2eEHcbRoHs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MqH40QSy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MqH40QSy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4F5CC4CEDF
	for <ddprobe@lists.linux.dev>; Mon, 13 Jan 2025 01:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736733353;
	bh=QbVROW7ZQHZnhTJ5adrBtpEBHFeWMzs5dQtNFBdudBY=;
	h=To:Subject:From:Date:From;
	b=MqH40QSyNBrBHW7gj4bnVyMHUP8UIh7mQGYfnbO+E3ZbGRprk0S6/cPIgXOvIend8
	 b2+uaAjhCmQFfUUk1W2MVJsEDXBtgnvwOQ3rVXO64mzrxHbl50vhMEOGk2zJLP7tB6
	 tNOd/ObQZGFSV8y6+rWeAgri9kkR4smfk4C+Bap6qOkHFLWr0krrNcb6Oa49uxlo3F
	 dp4M7+CIEI+DSHKT/avq7gYZESk2u2CHApGWX7aSTu6r75mVOs+TouYZVcq862uJX+
	 Tl5NELAH35Hi2Endy1Cq+EHVr5nWOIqg5HjAY+l6KjxKIvHKWaysOd0lWkTCav6x/E
	 Nb9eaBVO8vW9Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92996E77188
	for <ddprobe@lists.linux.dev>; Mon, 13 Jan 2025 01:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173673335358.31742.17389863659214176199.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f05993e7bd40d0649448f457837a26b7bbe50e881b2fe91fa3c958b24ccf3fa7
Date: Mon, 13 Jan 2025 01:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736733353
