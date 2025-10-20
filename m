Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A1F31A00CE
	for <ddprobe@lists.linux.dev>; Mon, 20 Oct 2025 16:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760979594; cv=none; b=YR1ZeA8fJlMuNQLr6XIg+LQ1UeMsV1qS5fBfKMN90aD6b07kJnI5Cc1yvROfZMscbwV0wIWapHJDpxc4vRNEkZns4vhY9sZIji5ZMhfFYD2ugGKKppJ01TapDJbGyLaJiyS5wUSnML+pIAq9sfDjJ7AW8LX2HxIgZah7pMGekOY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760979594; c=relaxed/simple;
	bh=OOh6VCsgGlDvwCk7JWT5eNkyVtq2hZY9EbQxWDA+PXo=;
	h=To:Subject:From:Message-Id:Date; b=j01515bVywgQVGUWITif0HbAcsRyKX/ZpE5g9ZklKWtjimZaqvYkkjcl0X7VyvV9hWkzof3JbtYbb42ec+ue7EfjdCWxQXRYsuc2+i3vTPYOL172m5t6EREBOjcKYWuCotoJLnK1/iU8SLxTfnixerMYQbvQsKl4nJYVp/QXEdQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Nklm/gnC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Nklm/gnC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E52BC4CEFE
	for <ddprobe@lists.linux.dev>; Mon, 20 Oct 2025 16:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760979593;
	bh=OOh6VCsgGlDvwCk7JWT5eNkyVtq2hZY9EbQxWDA+PXo=;
	h=To:Subject:From:Date:From;
	b=Nklm/gnC2Uym/rtA//DwWMLZR7os+Qee2RPL893pmEk4CMPoErMffw58fJdgae/ll
	 eSJlkM1slTfaYsW+zDzNnmD3bi177pXzbYg0acQMd6iGTG9LdIExW090IbqNvAi2be
	 F5g/Hkc2xs6OXp7UQEaLSzWETpXog1lnEypCNz6/00cGrdBPf9nzGWuZuWvBgXdrlq
	 MRK31Qz+mUAuQDwbQQPHw1gVcGbp16D4IKQC1l4GTCR3zNZci34LiZZipkqKjM+xd0
	 y468mmx0hSIfi5ZVr/9dYY/qDR7Yq16jXNBMLYVTCsNtzANB/3p0CNuvjVBYJefz9c
	 u+OXn/8r5pDoQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EB49CCD19F
	for <ddprobe@lists.linux.dev>; Mon, 20 Oct 2025 16:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176097959357.9259.3129884952642247828.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7290dc7625bb9efdaf7af37a3967d6e0dbb49cf36a41a7daa5a2950e8bf60342
Date: Mon, 20 Oct 2025 16:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760979593
