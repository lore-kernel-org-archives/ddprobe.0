Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5FD3EA48
	for <ddprobe@lists.linux.dev>; Sat, 11 May 2024 00:12:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715386343; cv=none; b=KohjKOsh9fE7ZMbkYRq6hwOqKiyRWkmjkVn6pfBF9wRQ7uNajpyZtaJfwMAi+u9PsWDVlBt4UG0JSj0RMhsOWFe+vMh0zjddY+S5uMasro+IQESGhe424O7mXnkMzf5B5MYWFgZXfblSzBi3KPIJCytwgKeFnN4y5kPXgpHBKjQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715386343; c=relaxed/simple;
	bh=5jV7l1WkeLxkkrjDBWwu4ICUd3VejKjxy6+gS4cpmzs=;
	h=To:Subject:From:Message-Id:Date; b=ACT542Cu2E8iy5Tib7whfqBubhk7srJx8L5Va+51h7Lv0jaadiwBYVsLayGoE3R6MA8eszIeyD1u+iX18+5miN0O6ahDsvtYGhrSBUxgprrq62YVdHEGvZ0fjO5Hr8pXlNQnR9coecfpkYbpir/jbx4ip9TR2COiVdPZXAJs1YM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RLqUa/WZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RLqUa/WZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3B90C113CC
	for <ddprobe@lists.linux.dev>; Sat, 11 May 2024 00:12:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715386342;
	bh=5jV7l1WkeLxkkrjDBWwu4ICUd3VejKjxy6+gS4cpmzs=;
	h=To:Subject:From:Date:From;
	b=RLqUa/WZ9ppdt88fCzZTlNE7RRDdZOJSCcfijyoX6AgkyG8dKGqrGaZAwv4a5IyHb
	 EeBUJBXSyYIlk4ZLGLcuUJjh6u8A0YzsjD2DnZ8upp7adMSigsj0kzkVJcgrAHc9Dm
	 bo8vj7FGzzsXLB+mVj1JqYZ1pJUvqL+6MNVTc0lNjAIg/wtEP8hHb4rYgSN4O74a0g
	 prxyjsEuhPMaDR2IWtZj1QyRHgKwQr1ermx8Fg8WR7x/qIAXM8YirZuuRb+SCvu0j4
	 KqjAaYiGxwHVpSqN55cm68SKQte1vtC5NqbXESymYq8oPs0EwX/tnm5+Q0VxAZ8Bci
	 /Nlcq31fktdog==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF1E0C25B10
	for <ddprobe@lists.linux.dev>; Sat, 11 May 2024 00:12:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171538634276.22123.6519019804184642584.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9bb2377141330618e5f3e641f550b7e09228e8eeaebd6612f1506e0b9bbecdc2
Date: Sat, 11 May 2024 00:12:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715386342
