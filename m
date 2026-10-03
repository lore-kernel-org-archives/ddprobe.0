Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C7A1233936
	for <ddprobe@lists.linux.dev>; Sat,  3 Oct 2026 07:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791011434; cv=none; b=O/B3NTCd1J3ocNVPrAYCzdsVcCYxgSb76P7UBB4xI9tLwbpT9VaNIfiJ8T1207t1kz0LpfZLXp3mRskXMRom8RnqUgHSTs9eV+0ZrsECR4f8JR28ldC7ZdIgqtmjetPBKl4Xk/aYLGNIZ4eb3fcG4q8eNidOU0tZcgDZCC6HTRQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791011434; c=relaxed/simple;
	bh=hmFGq/aB3FkGxmFuoAngKblPNg86/GSHX1nK1i86IGQ=;
	h=To:Subject:From:Message-Id:Date; b=lS0MMW1WNXTbJUOyore5MBIlleWKQS+WztmbeLVToUZQ6wO1058T9heOM+IJxtgUjZSx/nATDN1N9EkJYEnLt739NSs06sxfGMx9NIJfUe5cB0apPMjdO0f1uAcf/qD6hkMWYXzfGTA6NSYHSskzSMHViApjg7nTw0oFW+NPLyw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=i8lrGAsS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="i8lrGAsS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCCB7C2BCB9
	for <ddprobe@lists.linux.dev>; Sat,  3 Oct 2026 07:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791011433;
	bh=hmFGq/aB3FkGxmFuoAngKblPNg86/GSHX1nK1i86IGQ=;
	h=To:Subject:From:Date:From;
	b=i8lrGAsSbyFV4lgZ6NK+KbS+lAlg6pQnDlP0ijHDxId3HSf/HyaF/sh7miY9vqd3G
	 cNggpLGMrOY+vgEQ8Jsm/80UNKEhcu6rS5UzZ5pKe3xT9In+CTeXaWH+ysDXfoiGyX
	 szmDQBxr2T6nsV5BVXIfXHeOv9tj4PrrZnjGHhTSyD27RyU/Fu0p+M9wgS5CDHtOGL
	 MoZCO7jHOsAjl4aEGtXZIvqld+hoGWDAyFeDQsWmTleWJYge+OaVw6Uv1dXMITK0v+
	 c2OuwRC6P+fYNrdcdxsrSeZUTYuU7Rvm1DlGYuU7jP4kAm5Cin37GbqIFWXH7zn2de
	 7rm01MjEEpkGw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAAF5CA5FDD
	for <ddprobe@lists.linux.dev>; Sat,  3 Oct 2026 07:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179101143369.7946.17968047053657094409.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 95667b8c508393534840159c998ca7ddbbad23827a7f9c5358b8e452fabf787f
Date: Sat, 03 Oct 2026 07:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791011433
