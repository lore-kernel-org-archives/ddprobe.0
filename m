Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 639A22C6A3
	for <ddprobe@lists.linux.dev>; Sun, 30 Jun 2024 15:54:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719762863; cv=none; b=TExTUEo15r5IeqnEdkTSXvfuy1Fnh002ljc0yjwd4s4Xf8IVQIN84PUd3761O/p4CsHWg9CQtpFxK95mmqXWYfwzCKSmhoPUviVA/l0vcczHTZxp1uaEnGh5UNyXD2zY7Xg50gq8BGjtX7qC9SH1BNz2HtIyNKZKeAgzWAS1P8Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719762863; c=relaxed/simple;
	bh=gJYasXIzmS5Mmz44xiFkXFlmwSeasWv8rfyHnYtvgTY=;
	h=To:Subject:From:Message-Id:Date; b=EkwkeF4C379lMueIMj53xPPvE1kcu4Gdhp9yKeAzHsmToXUl8+eJPnxEGSEK92VBI0rrpjUpmG8WO8jwzS9G+2RBqagQOPtqGAM8ySeIelGx0PXgfmqhHtHrR1NLKgMLXSoIEJEAh+NCY+Q2kRK0XSCW6LuEU3GJfRASYDgLTPs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZnIkE7Hu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZnIkE7Hu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD2E4C4AF0A
	for <ddprobe@lists.linux.dev>; Sun, 30 Jun 2024 15:54:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719762862;
	bh=gJYasXIzmS5Mmz44xiFkXFlmwSeasWv8rfyHnYtvgTY=;
	h=To:Subject:From:Date:From;
	b=ZnIkE7HuwPVks7CoAS+o9eUVKE9JNEhz6j7YBijUft6OyyK+va7jOEcgPLPys3cx+
	 kn4erLWNpltvETRqQjpqBRLHzF8didDYQeL3mEF1/I78SA+JHnBZnz+ITmLgt9Uzok
	 wtphmTNIxe1V31gWpObFlYSKfEF466EEbdNlmTmvWBTFOmCAqZNBgU1Vyz/hBC7j6f
	 mAWFvEwKCPskMB4qmJDnMyTh67AHzxP3zw76a1oKKuZZ3k6paB2owwezcieYrHOXFC
	 9p/SZ3Axu/+W1NnhC6lDIt8RGbPLFlEMas+jQFKsPY/isXV6Lf/zjze9HXNNpyAAd3
	 FrxhaSL50C9VA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C32B6C27C4F
	for <ddprobe@lists.linux.dev>; Sun, 30 Jun 2024 15:54:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171976286277.22600.14284514744301241408.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d81ee58e6e54846e8c9b9797bf76021ecc43101bb14e5743fbe60d1db2022ed5
Date: Sun, 30 Jun 2024 15:54:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719762862
