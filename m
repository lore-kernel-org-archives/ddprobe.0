Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C7E53AA1A5
	for <ddprobe@lists.linux.dev>; Thu,  2 Apr 2026 23:55:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775174134; cv=none; b=f+84EgyjLqPEkE9ASOZWJF4qTtgbIt72Gd3YG8RAhT7DGu2esTWoKHf0YJl9RDRdVftqhRDs9MpbkOPsHsMNdgvxzypKnVT8TbRFMuV+Nmw35INSKT6fROKObVd777gC5TQ+oKcUr7rxw9B/jk8pvbq9dgCYjxyvO9C/GH06Pxg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775174134; c=relaxed/simple;
	bh=XxQLzivIkZStmIhtJYbAcLSpKpRHnlHYbCRbrAiUD0c=;
	h=To:Subject:From:Message-Id:Date; b=a9dHCH5Zel6U7MaBYDlFFmt0C9dgq1Z+kSEceX/IK+R71OXEwNZnZOctnkG3Zh1KbsCcFKjXJl4mOswmYK4T9b7eeWWODCTnA5Yb8ENfqnQbsr6D/o0/TFxTwzFt+jc92/bNLNcff2iBDwbkS4gRNyzeD0TdRVLf/7C9cKrKwVY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XFCDEY/G; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XFCDEY/G"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE1CDC116C6
	for <ddprobe@lists.linux.dev>; Thu,  2 Apr 2026 23:55:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775174133;
	bh=XxQLzivIkZStmIhtJYbAcLSpKpRHnlHYbCRbrAiUD0c=;
	h=To:Subject:From:Date:From;
	b=XFCDEY/G6wsQRbowitGzouPskgeCFJLM7jemmpeFFCWe4fTEeuHCH9gzLW1TmhMNe
	 JNTOzxBYfnINajV0WImMySaNEPxqzz9j/YsOKCzhfti1zqmN33NT74rz5hQa2lVJxa
	 4uBNaGoOKrJjNTTSTF9Kn0QZYsTFFGXjbWog2SeM9NCpskeKVa0NcIa5f0ICMROO5y
	 3iL8qwi7BZKK7EZsnAMzRB2VzG6AWO4VZ7P3Rjmjb63fM3gyoyHfHPlR4VUaFg4UCM
	 cYNQY+3cKXhZksyQxfw7PYpLfPbYYsA5WsF77NxGB9zpj+7BvWii6Qm4XJ+Lo+g9oa
	 jGD69g6dweuoA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB110D6AB1B
	for <ddprobe@lists.linux.dev>; Thu,  2 Apr 2026 23:55:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177517413369.11572.9617183525388302706.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0e36542d5fbc262718b930db38bb2553e520cd466825aeaac692d64dabe3ce06
Date: Thu, 02 Apr 2026 23:55:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775174133
