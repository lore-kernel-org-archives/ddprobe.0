Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0487F30ACF6
	for <ddprobe@lists.linux.dev>; Thu, 10 Sep 2026 15:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789053035; cv=none; b=YT1hlfDKb+tJwRsfE8Ijc9Dlh0EPi+WSJhLTDRtkw1gQ7P6M3mm9fcc6/CFnJ1dh/Er7JvPnLKE3USwO8NiPEjjTFuzQh7yCHVjtTURvd7NkxNA8xYyw5BIRKvbdPVj1pDQvS8Yw9ucN0QFaiGwPTYMBOA+ddFhCwyhcmErs1kk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789053035; c=relaxed/simple;
	bh=5KfDTYQwMbpmYBI3+ZmmutCmENWXjy7ff+JmB2HUXxA=;
	h=To:Subject:From:Message-Id:Date; b=K6UMYXrYr2nKgAL/mKd8KWgr6hw3I1zGQYvFYMVm0XCHbhMarNjRwZa0BXbkyQz3xTDCqDAiMc8ryoEvcqk4uqHroqMAgSk8Xqx+84qNBX9lh7PCKzkns5LyNFVCq/l+bmaUMIFcNm3PXfLHvLPL42IgwFaAJFmkC/Q8cc1ko7Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sVoa6O0G; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sVoa6O0G"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC012C2BCF5
	for <ddprobe@lists.linux.dev>; Thu, 10 Sep 2026 15:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789053033;
	bh=5KfDTYQwMbpmYBI3+ZmmutCmENWXjy7ff+JmB2HUXxA=;
	h=To:Subject:From:Date:From;
	b=sVoa6O0GK9acbzUGgP+F/OjIE6wvWH5aI0+KYxDXNGtrnAEHlbPW7ejMzLyxLB1mC
	 KveB5/fOP1/g77217sBdrWuhf5r3eXWmSJA6CalfzIIhREJuxyaqgpASdWYeL2PmYZ
	 xqpaig5bL0tk1CSvDqEjPsSExPl586b+Z75y2oHA+AB7e3j430qFy4s///2+sP07vs
	 kxA61Cs235S2XRrg7DC2fDs17OOtOnzJ11Q/2Ka8JWQg6ROo/aVc/xZuucaW4cYZYh
	 BeuRVxN/e7v3cJ5qVIt7rEWgXQuQwABtyfL3NrAmqGCjwcZ1rpEU4B0Ri0tdlTU97t
	 x4do0fL3LFS2A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1653C88E40
	for <ddprobe@lists.linux.dev>; Thu, 10 Sep 2026 15:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178905303371.339.16485456627066495946.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 02cab466ce005a24704625d9d41a5fa00ab0ee7852af5078d9356cb76a627086
Date: Thu, 10 Sep 2026 15:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789053033
