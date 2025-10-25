Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F7A9DDA9
	for <ddprobe@lists.linux.dev>; Sat, 25 Oct 2025 07:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761377994; cv=none; b=azFPoE8z2zBVW5cbu9dy+S3PeuzUIHqEmQwfzESMvJkgQQ3Io66EpYlnvzjezzFy1KH+mvksiUruz9kA9Ol3uUbvfRSQeElw3FI7X5erZpjKEoWBTcfS+1RN+XR8mUiYI60j7I4EIADPC3HsyK02t8B0KY5YtFntyGbhl2fjrcM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761377994; c=relaxed/simple;
	bh=B2PM+ZFSocsTsa+pfIFvpUCGsfLX1iKthF3whWU8X/I=;
	h=To:Subject:From:Message-Id:Date; b=JbXQjRmQyosUjwbYVkGvan31Vh8x+75Fbsi0QRylA2aYbaR1hYEwdD6DXvN09ZV0kFNi1sXGkH8qGC4ivmOMVMBpzZGzTXzbTI4HgbfUb5gXlzKSu6hDh4+bfo/Qf8RTBFJZSg5C/fje3Z62EINp4jqtHRLzpKnDC6TZgK2lS+M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=owTMSvyw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="owTMSvyw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A06F6C4CEF5
	for <ddprobe@lists.linux.dev>; Sat, 25 Oct 2025 07:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761377993;
	bh=B2PM+ZFSocsTsa+pfIFvpUCGsfLX1iKthF3whWU8X/I=;
	h=To:Subject:From:Date:From;
	b=owTMSvywmGoH9xO1gQrHBlIYu8U4Pjvw8WDbRddtY4t4y2f/OGbGdmsLlNCzlPtIq
	 ZArQ4qtAaHw9S3rvbjrxCQiYwDLLK6yIeCvlqYd0SWsWCr563BKUgiv9ZiUk4cNZRb
	 C5fm+9QDoBB0l4BZ0VHKZFhu66U+VQtQMpmtoD2mXHx/QFmmrBLK6bS5GSKgpfKARA
	 JwEPnIbea7LrJMAFhK3nkbkQG8qXw1PxdaoB70rLtY2k+Pm8n5kylltyUPQ8UOJAXn
	 xkUlMkz8if72bt0VZR6gG2e1BzjkGZtFMDwAWWhyJghgYIbMxVrDo3wF0RBQg/iTZT
	 YYs1/Pi67Uebg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92671CCD1BF
	for <ddprobe@lists.linux.dev>; Sat, 25 Oct 2025 07:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176137799359.1633.1479522206665100082.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 52dc664bc9a31d5dbd0c1bd7e47be8012c182e5a074d79010c49927e504e0f8c
Date: Sat, 25 Oct 2025 07:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761377993
