Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41A411A3160
	for <ddprobe@lists.linux.dev>; Mon, 22 Jun 2026 04:36:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782102994; cv=none; b=mSRdJO71WwXznpl7vOo3XcV2czXgqxDTqfDlbWb8k9jU6V9Xyt9t/QFhGaUoaMSvd5wOU+GViAXMBxIOcmzJHuJgHQwXW0W/nTwdkyPx+sUHCc/mxpNOmZ2gOXpXDIRtRETxxlFXuvrw+1bJJfHRmjnIo4/8RVCpFV3bwESjK0Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782102994; c=relaxed/simple;
	bh=NJf5fUJXip0Cb61myUE4VYOwbBna7NIpk81mIzOdqN8=;
	h=To:Subject:From:Message-Id:Date; b=XJy7HCV6T0XhjEAlONFicfdnWoP6YPhyIaNhhZD2Q15qRqx0ExXE7WkMnYdNC4X48Uq672MkuEVMVXVeGpJdEt97ssaPH8AVZXGQVHjL2/86IbTyZ5YKEi+Be/1//bXpL8SzuRMafFqWrtWPEUCythgMlOyy1V+d8MzLCl977s0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=i5IJoAVs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="i5IJoAVs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C509FC2BCB4
	for <ddprobe@lists.linux.dev>; Mon, 22 Jun 2026 04:36:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782102993;
	bh=NJf5fUJXip0Cb61myUE4VYOwbBna7NIpk81mIzOdqN8=;
	h=To:Subject:From:Date:From;
	b=i5IJoAVsniwZQfJvaFed5arYWv/lt4Tn6b9ATULAMq30AzHofXhXTT6Yid4yqF+UD
	 TEZK7JrMUSbX4nb62gd6fW7iOA76B57rRA+ZdHIrSqI+LDptPXGky54Bh9M2inlkmS
	 qmqWDKg46G6coR5gg6wFdurmRd+g00qYlFQVvwRBlJUuJQ69XooLH3I9MAlCn9NTEP
	 u7NQfF47N49MECoDE5T14M2CXMFzb/f0l6Qu7AkQiVy1hmQIhJaLhERfZTULA1Eb1K
	 inT/TAovIKJtjozs9h2HukGCZkH5goAsz2/EI14W78p5uQDhYEc9oimsi7mJzTGqdz
	 lB4HQ13sNCJsA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA782CD98F6
	for <ddprobe@lists.linux.dev>; Mon, 22 Jun 2026 04:36:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178210299368.22995.11119368931860602165.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ec30b398f5155ac303bcb7c4400d2f9bc521d10aef5e323c633df768784bbb2a
Date: Mon, 22 Jun 2026 04:36:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782102993
