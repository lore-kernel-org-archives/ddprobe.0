Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3458C23B60A
	for <ddprobe@lists.linux.dev>; Fri, 19 Sep 2025 05:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758258594; cv=none; b=QXX81W5Hu7LfTc+xi+hbPkofF+1Tbbx4qvtpb318mX3pKsznSDsA0IgLZYr7Mt2ElkO2ifv/WBhAUZI/H/4qpTKAMdkb/7dQzUZ1UUJZr1kKuciC01RSgwQq8cJC6SdlI8U1jfMnWVEi7bRi7GzsZyubFTr3tCWUEkIRXnIzUwE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758258594; c=relaxed/simple;
	bh=OO3gHzH9ILBffsDChOO+05mitIP/MtnwGBustWiti4M=;
	h=To:Subject:From:Message-Id:Date; b=u0oY5i7oNeZxskzD22UWJ7ec+gJOxCdZFePC2RgUYNHo9AZlts6IBf0yus0+B3602pCCTZ757Zyo6jvA8rLtqVbtMVQn4s5b9DbPO9QBLSVnYLa7Pi1zga7zUN78rbu6zS3hixso+i0GGSMlIKvvmdlXUjTY0e+x1YUA7/fsGsY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oyNZbFCp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oyNZbFCp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B57AEC4CEF0
	for <ddprobe@lists.linux.dev>; Fri, 19 Sep 2025 05:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758258593;
	bh=OO3gHzH9ILBffsDChOO+05mitIP/MtnwGBustWiti4M=;
	h=To:Subject:From:Date:From;
	b=oyNZbFCpXc12I3tG7Z+KzQBf124vkMVJRz4c5JEUuHWSSi/CtFmJ7MLmIdS8B7Djj
	 9vDVdFLbD8G7yiVkU59r6+QbGqcjqgEniNunptAV3cDn02hV5xc5Hi1G5CGhyx1Wgb
	 GGdgneyFotsF5ojqgLixXew9sJjxbMxBfcX2ZuOCgXuEzQVpcdsWckYsEHWNzicKhp
	 VQW9y7bnkeKrd4mmgcRgKAjDKoEiab3lDTfoIEb64Eiu0hYz8/+WOJEPQXnSbkREPx
	 hiXL4xCaHqFxeMxonQc5PFQ/qg8O/DKE39sZOmu8iCD3v2T93z0cM3Lb0x7cCjVTPn
	 uig/k2Kug0pvw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 971CCCAC5A5
	for <ddprobe@lists.linux.dev>; Fri, 19 Sep 2025 05:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175825859360.14607.13161903696042534236.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 459b17538ec5accd0082206966888444b777514481784dbf58799a126c6c1856
Date: Fri, 19 Sep 2025 05:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758258593
