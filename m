Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19A3E26738C
	for <ddprobe@lists.linux.dev>; Sun, 12 Apr 2026 15:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776007054; cv=none; b=iTWABI0a+gKWdr3FVVXMe7qlXZZdWA+Bzsqf7ZmwiDT+AQomkkFbwBF2lYfW2dS4Tv24dWjizaLWBBBjpKM1h2S5M4N4xVEZr4DMqS2/0LAPPaL+KnIGeIASBr1Ic2ETeB0Keb8NyhGLmSEfH7yTd+hNcrEEUqGzbpcFjj5RkX4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776007054; c=relaxed/simple;
	bh=rsDYDBCzEhhliltrQOGnOxJkKWo56odraknEOXQUdx0=;
	h=To:Subject:From:Message-Id:Date; b=rx3qNlgENsfwFTJQxY7iAA8NatmQ8grmGTWFDE9wqIJRYmJbV02SWflAU9AVFxX+iY3A9IRSqOFwhPN9zCfAvHi6Q50hG4132/ZFDGbvy05OXzv9QKK8tE8/hyy5NTnS0VzEmdQoFRKWa1tKAYOWNbEfHrECUxFObblqM/gB90c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KUuMbwSo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KUuMbwSo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD126C19424
	for <ddprobe@lists.linux.dev>; Sun, 12 Apr 2026 15:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776007053;
	bh=rsDYDBCzEhhliltrQOGnOxJkKWo56odraknEOXQUdx0=;
	h=To:Subject:From:Date:From;
	b=KUuMbwSoerDcvzehB/8tdUXCPstts52X2NsIBqYD/7IZU5i//372OzqsAWpi+Wqaj
	 B+/uQpFMWW39JNfM9ZYd27bYrzIlwQmk3yPckX06G4pEeayT64Khd7juiGqmKmSY3s
	 XQZO+hK6QXS0wDRRB9aF3AgUPS1cpsq9O8MmyJm83IVTaPHi/k0pPk2BDnri1A22IV
	 dAdQMiUSZ1Y7ouelfI9L2x49JZTYRW/j6gcdV15aDpgdJ8AItjKT8JXL9j/45kH576
	 5fVKhG+ho815bUsRjvt22JBn4Xa+cbAFScNpyFxbMQ9TsTuW0plfLqqIowrakq1XQm
	 Lsb+0vv/5vAVw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFBB2E937E9
	for <ddprobe@lists.linux.dev>; Sun, 12 Apr 2026 15:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177600705368.1698.2178544029426195514.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 761f09ed8073702e416750b737b4caf6a26d5af9b77d4f3ec64ea14b78723f37
Date: Sun, 12 Apr 2026 15:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776007053
