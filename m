Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3063B427A03
	for <ddprobe@lists.linux.dev>; Tue, 11 Aug 2026 09:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786440634; cv=none; b=uyuL3RKAHpWajNaxAENIuciH4gof02gAMUmgXDAxGFfp5kvet65bq8Mmg8OXqz85TovC77vROnCICC8S13rOEu/AvDiiirg2bCbhnIinccjHX0jxwCMZEO0ReGdRXYGSXP5kxsRqOPf5U1mgeV6WKRb8RFhP18W6uoz5OSP6Q6I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786440634; c=relaxed/simple;
	bh=+PvwOR46DuwbF3kTq1UqKx68fYzvR2qDrl65rW2yl2o=;
	h=To:Subject:From:Message-Id:Date; b=Naa7ldwgmQAZHX0Sa574ZoSDbOXPCPd+gC3xh+n3zj5hdUi/NPLUJUJ2LFoIYEJ21qJQwsPdxs+1Rz3fC6gWJ2ft8btmryj2K6I9/70VWm7rxRkzNj5H1n5hyj9NkvebR/Cv2crixnKMSaIhYAPua8bQ/0qHUybGYsrH6SeHhsI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PM4ouwzB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PM4ouwzB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C871CC2BCC7
	for <ddprobe@lists.linux.dev>; Tue, 11 Aug 2026 09:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786440633;
	bh=+PvwOR46DuwbF3kTq1UqKx68fYzvR2qDrl65rW2yl2o=;
	h=To:Subject:From:Date:From;
	b=PM4ouwzB7dWI7Z0eB37QOrXKklGJyRctUhgEtnukBn4Xio6BOuDM9840vcdb7S+sB
	 2HrClQCKBO4YIKQiro4V45qXar5DnphDA55r1E1mW/W+9qVDketRht71j+WpapAJy1
	 mL/5n8T+3Akmd9NeNBPpZbVFNoJZXRQrUXIioTvAXVY1VYQBeQzim4ZGBfqXuec8w9
	 Z0NfZSpWvbAoxSRH750F5pBZtscPOZXzLIZPczyDufGfrVztnfFmN3oLMrATvuDAQj
	 5+L9Joh4nF+/RZ/k3FIRxaJyIDtUDl4XIGFj2fFskKSyoPVgQnQ1vH2nxJ0XPY6Wgl
	 KAfj8SN6AMdJg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A803CC5CFC1
	for <ddprobe@lists.linux.dev>; Tue, 11 Aug 2026 09:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178644063368.1244.14716457134983821908.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6a4c8257d01c76a9fc216abf37e0f2ad5641fb47ef2f5439813d7e18ed255ef2
Date: Tue, 11 Aug 2026 09:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786440633
