Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25E48191F7A
	for <ddprobe@lists.linux.dev>; Wed, 25 Sep 2024 14:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727273154; cv=none; b=HI+pCmEvpTDlazak3c+z3nZNcv4Hsh5X9GHFX/mkITO5n/qTncuYUhh4uGQpnLcOMfpLr/RLllhDm83p4avbjs3YEmqdF30Az8vWVfTBr9+ZnwtZ8x/faHovPE91jG01Rw6xpu6s+j9pkwkshrF41pavh87IQUGBW7jdBhPlOLY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727273154; c=relaxed/simple;
	bh=gXILkWPNRa6uMDfTc+qlM/+Mnv4gVNQY70jKs5uCIRA=;
	h=To:Subject:From:Message-Id:Date; b=K1GGx2XKrgIm/eUmnI7jagUDYuLhZ6aICPRqlxvzgPAE7Q0mVAciZeHPLj0ok/qmml2ohgN4ZXrOGXvcmYBqakkxhgxqsMawIz9AVtNVGEyf/42QzG1UI/2zj4kbHUPCWlK7bg94CdPz7ZTnQSvkdAO//HRDypjKZfBqXaRn8ag=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AGWWLpb9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AGWWLpb9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0337C4CEC3
	for <ddprobe@lists.linux.dev>; Wed, 25 Sep 2024 14:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727273153;
	bh=gXILkWPNRa6uMDfTc+qlM/+Mnv4gVNQY70jKs5uCIRA=;
	h=To:Subject:From:Date:From;
	b=AGWWLpb9SXJFPORjQ1lyfowJV4UG3hZDlWYdQVnuiddD8XOASaP12lxjleKNIv4hA
	 tsA4PllaP9pNU4CiqUIwO+6chIJEaO24AgLI5QyWue4pFVjaXoZosAWxvFGtEFSzlP
	 L9ICExy390zJwJLw3viuRnTT42naXTJLS4uVxBsIYveD7w19XD4ZOn/v658ZJ01svq
	 ATcr/aorAmJNtHDie/Bxk3gWulLbr2s54JImOdMGrJP+sGeij8bSSnRNlF9YnrbDOc
	 NPr2sXi86MHFNbV1iaHheQhQQIwptAlP7xfvc5Cmsz1TsZ0lXgJ5l2wgWIxqFUGg/K
	 D4y2Y3D5rwv5A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9141BCF9C6B
	for <ddprobe@lists.linux.dev>; Wed, 25 Sep 2024 14:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172727315358.15544.175836078069015109.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ae3254da223018c49172131073b2ae4cab42c73010deb30d7afbdfbc9fc60d1c
Date: Wed, 25 Sep 2024 14:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727273153
