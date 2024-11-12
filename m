Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33F5E20F5DD
	for <ddprobe@lists.linux.dev>; Tue, 12 Nov 2024 09:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731404754; cv=none; b=dinUPyrc6SktwKL0yBymlqkzTxpeAQyxinrz/AAxY/Rl8hAaCykZcS4kYDPqlAEWqMu/AfPqaSEyyGM0KXeq8Q2pWt7aTI8JYqhqFNPS60jdcZLwjKBbDxEOSQZrh6+qFqgAKzuliD5BfgX2qbDiyxOidFHSAgYnQjKKmi+L6j4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731404754; c=relaxed/simple;
	bh=j+QL4paPxiyu5MaV7S/xE+Qm+yPaJEJ4e1rM3fh9/X4=;
	h=To:Subject:From:Message-Id:Date; b=WJf0/6I4VqEYgMdwWJKwOW9AGHtIU8Rssix/OBpHoeH2cYvQFjaGG3x7zQTq95JbnIAUKtHa3lVtH4yq9x1iU/w9KmJJg3Mf369WZyHKib//C+aAjA8CEDY6YkJCvuDtyAoiVBz9iuCPHguzJDy+lbOKaHbmv9+mreacrmpGbf8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GoyfybK3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GoyfybK3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4E99C4CED4
	for <ddprobe@lists.linux.dev>; Tue, 12 Nov 2024 09:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1731404753;
	bh=j+QL4paPxiyu5MaV7S/xE+Qm+yPaJEJ4e1rM3fh9/X4=;
	h=To:Subject:From:Date:From;
	b=GoyfybK3NxiWuQYpjkdDK66lsx3d6QB7JiEJ0vvhXCGqewRuCZFY85zScsWcs8UTC
	 +7sc7Bwv/CLeGY5XuV2fFGG0p8Oc5VoMq3PUEbCCUBCtHy1rYleLQKdrKHPNUqYZUB
	 RSp29v3mQKi5rTOXTDEuK5SV3Vv3K7cGBP699cmUalWRLxs9CRF6Y3+asE5+AM+dRA
	 f+ihFZR33YVFW8B32QiQwiZJTYH6RsZIeFNJ2bTFQKy5t3D7wC+gJTBMKQesBVkFQ5
	 IH+hxOX0evJqXDlC22APjmboycGHV7Bclmu8VRallhuGFIJYjPCmU8rveWjmHOTLAr
	 /B1Fj9rh+LBdw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 933AED32D7C
	for <ddprobe@lists.linux.dev>; Tue, 12 Nov 2024 09:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173140475359.6766.2030678800183304588.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 61d477159c1c1cb925d25c00fd36a2465f010b203f1d7bebc2a8bf87b0a5347e
Date: Tue, 12 Nov 2024 09:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1731404753
