Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1609214A82
	for <ddprobe@lists.linux.dev>; Tue,  8 Oct 2024 21:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728423954; cv=none; b=JD16rAX1DLavmoYP70pKP7KHtk0lufbNY4MFfO6gmohzzfhhDRtmyxRyMYIsfDAanSmWs4dI7EExXP0+BaV+2hjEN++rRSvlEOlViZGB/443EJz4wbxNapRNhjeQBYL0OhEUEhJXmw94/3Qp1nfT8eE5DAdL9SHUIN2yiMzvM4M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728423954; c=relaxed/simple;
	bh=6n10qQcvQD8duNfUIVBRP1rn7DmnyZSHIwzFmFrRrk0=;
	h=To:Subject:From:Message-Id:Date; b=m+owfdfAUwncGDugMVYiD/gUeFNfsCNir2xt9aaM/ZuPg0cMFppooVpkkB8pB4WEYiWFPVLWW9q//amIBwVz9+7j4b+PBrYWCGbAcUa4ie2wikpmqlETZx9XqloItoDVTbYliLC97maEqQCvbmSxAvP956zLai2ifUHJ+Ex3ycs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EY0ULJgn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EY0ULJgn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB6B2C4CEC7
	for <ddprobe@lists.linux.dev>; Tue,  8 Oct 2024 21:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728423953;
	bh=6n10qQcvQD8duNfUIVBRP1rn7DmnyZSHIwzFmFrRrk0=;
	h=To:Subject:From:Date:From;
	b=EY0ULJgnOHv0JQYC1J8kE3znNZURGEFwpUk24YLKRPx8BZiPXj8KLTSkfSRDFmCEP
	 1/3Qmj/coExKmeRueTMf37NzpHQcCXXvvRXkxG+W6lg42h8ZuDGdrNsNtR/hc4zDzv
	 Hl3r4O8ijqn0q8iE2wz3ePs0uw0R0Nzl1zBWBkZMANWaYJBRWzBx2FEJNG3WIRrhay
	 nILj0yX6Of+MkV0GCq86lDflsGWoKCttH3g3qEOnCCsq5yu1ami0B1gfRAsBY0c61d
	 GdU5Nzp0Bi4KB8doHyFGQ+5SusvNC7k7YfUdSaHBVk6eRIeOYAJBZnretlEe5pesuA
	 bJKgiDsCxjK2Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D4B8CF0427
	for <ddprobe@lists.linux.dev>; Tue,  8 Oct 2024 21:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172842395363.4129.6540376684663206164.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 54798dc2cd92cedd2e427e75d72f51c4703491b77367ed7c0d78f2ba76c96223
Date: Tue, 08 Oct 2024 21:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728423953
