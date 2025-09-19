Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CE312F5499
	for <ddprobe@lists.linux.dev>; Fri, 19 Sep 2025 11:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758282594; cv=none; b=IeDERyONsvBqgAJqvnlhGaW4H8R/GqWG1MBAa8WhY5ggjBwUQ6jw824zXEk+zvF9K5lT2IUONP7kZRpzzU/58YYvgUW2DFiz2GgZDEGHcxPUPrUu7vxbpoegzj+7bgQTI42BI6cCQhSU4KEoXtvoG+Jh8u7537YROwyE/uF3Hew=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758282594; c=relaxed/simple;
	bh=2VlgWcZkfRQDtzhOP3IEBKpNS1ZEnlgkVpY6uO7XX5w=;
	h=To:Subject:From:Message-Id:Date; b=ovfqfqInVJh7EHtqQMKDfIS862xS9dRgXEOz3aCG+ca7y1R8hXxBGcx8I41n4CIiZNdbJhQPguV+Y1HaTMHebaEkVXDXED7bN9Ft8WP+MvpfhF5LFUcWlre5u9BAoGilJVxBhsIK/jiwGUEQ1Dt3ZaKwFUtmY/FTvMOrV61Ypuo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fBMAeoqg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fBMAeoqg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A09F7C4CEF0
	for <ddprobe@lists.linux.dev>; Fri, 19 Sep 2025 11:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758282593;
	bh=2VlgWcZkfRQDtzhOP3IEBKpNS1ZEnlgkVpY6uO7XX5w=;
	h=To:Subject:From:Date:From;
	b=fBMAeoqgvt6EdqaWRDbh+lOR3m6b+KAa2F2tutc5vWq8faJnBn6rHRbyk6oNnpsDn
	 O1jCd0StGz+unp1HwRXBdyXKqxPoIx+zxgHKuO2VLnyWW4rl5om686KOK7jUZNvcVy
	 SZ6PYf6FWP5Y3Rd7zopypgW6FW0giBok559aOuzakYHEIGYnM8KI6erXtQugcEwPGt
	 J5wCCdSUiv9qbjEtQNNUWJfIrfo6BEr8T970RGlr3+cVt83+bKQTVIgfDR1sboBCRY
	 hzIaYbHvxJyYjdV3KnlMTGN7RMb1KaTAWwk665EwM/G51lu4l8qT4UyV6ED8f6qYXV
	 GOVoguPAQDDew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EF1DCAC592
	for <ddprobe@lists.linux.dev>; Fri, 19 Sep 2025 11:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175828259357.1851.10007129570729351116.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 001634fe8be1b2084d01cc010366b6663a95feb71b7de2035c0189f17995fddd
Date: Fri, 19 Sep 2025 11:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758282593
