Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4DC12184524
	for <ddprobe@lists.linux.dev>; Fri, 16 Oct 2026 06:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792130434; cv=none; b=IOJGx6Uq8dXk2Zq7T9dbLaaraonUUwQGl5cuZFeOZO+RzqxYlHc+jPKcKJw4Jr5aE15mO+r/+QzgI8mdZJEJ7DEzeGs+jF+7cd5rMpfIJJcaRJdNjuvua7Hvts0y3361n5M5a6L241grQp+WWvaAolBAWIIZ6FLMslwsrlhjbTg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792130434; c=relaxed/simple;
	bh=OIXPi1TIjHgceCE3QEEaOaavxFc/AYEiaKk4aERQZN4=;
	h=To:Subject:From:Message-Id:Date; b=keIRL9d+PQ7MfTju+lcss8toS4fWY3BV9SYk/hji6kKcG0YVmSUNBS4T2OxBhHBkxtGaNqiSQ4w1Q1FzrqWvQW0XcH+/4R2jWbpgcAZrx54ieB3qJYGA6ZvT7L+atfLc4JQ2RJIjBCC3n4aTjRkRfnhmOJENc9L8Zp5NGh8r3c4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=l07EYHCS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="l07EYHCS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB0BDC2BCF4
	for <ddprobe@lists.linux.dev>; Fri, 16 Oct 2026 06:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792130433;
	bh=OIXPi1TIjHgceCE3QEEaOaavxFc/AYEiaKk4aERQZN4=;
	h=To:Subject:From:Date:From;
	b=l07EYHCSspZJ8P5tS+Em3NSyczEUKsAFWVXsd4hgcRtXSSNZIo1G86EKcwcSICqFV
	 zkYOeIuzDkcIGwn7qRdevByolSPzv8m5NylpsQgh4x7hYnQHLgJlS4Kgh6pHuGUPSC
	 /IDzLV8roDrQg3JCrJ3pEgzgYGwCDnsooL8/qUyWzsccPd5P2cuLH8a5B42e3vQHIx
	 Tb7MefybqK+vHncyLSARTxO6TraedYLbVUvrR+bMNII6NjTCLBUSLNsocdkTa7ne2y
	 wsOKIeKBJpHJOH2D3BmWVsvtZx7wROpRWYm7mTfcujSkPxwM1tMrW6eB9/QdlnE/dU
	 nvGdK+6t3RTDA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAB74CC6B2D
	for <ddprobe@lists.linux.dev>; Fri, 16 Oct 2026 06:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179213043369.19931.6705554112802958371.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2d392c9dfadfaa44cf53d4e79e1381be4d56db5c565e40152f07f6f618493781
Date: Fri, 16 Oct 2026 06:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792130433
