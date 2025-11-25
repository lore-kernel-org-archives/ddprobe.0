Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27B6836D501
	for <ddprobe@lists.linux.dev>; Tue, 25 Nov 2025 22:02:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764108174; cv=none; b=e4gusxWezaXLN/nEXkNvHPWhPuj8+fZQhgn3v/RNoBKJ47mdE1vmOMyLtHG9pKMdd0FZyN4F8CHVa3ObBLUrkE9unt3GauU/mrH6oWudfaA6G1OxCG/vjGITfna/UpwYXhjWwzb7nEHt0lIn4FgN02JuGaxA3wwXc52lgJJbGug=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764108174; c=relaxed/simple;
	bh=b0ZrLNv/e1BY/D8jFOTrFtO233qc+RpdNIxR0EKlIJg=;
	h=To:Subject:From:Message-Id:Date; b=lJuFRBYSSdyfGnTCWK7zGiChp/not9UxX040CUe9lBieHzRhg8EkIQgFSwyP0hDmrv8IM7tXzyfldIuuvOBRxu2PFskAfCSG2gz98zw1uwZfcQnXJnOo+2WtQWUn2zmSdru1DLxwPYnVCQpRexexSlKhGj6IBdby6rtEo4ECKk0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ibxv/cGg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ibxv/cGg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD440C4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 25 Nov 2025 22:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764108173;
	bh=b0ZrLNv/e1BY/D8jFOTrFtO233qc+RpdNIxR0EKlIJg=;
	h=To:Subject:From:Date:From;
	b=ibxv/cGgpKm3Z+eJPpAi9rHHc/+SJHDlX4E8/pRmT1ONpVfnoWxudbmM431uHpzea
	 KJBiow/HcVl2AMqqlR80Hjfuobef/i45/hRgqDvNreSP3zYXo3tV9z6Aesw+DzrvTo
	 kjHoyI1M6r5t7N2TC3DKxXj4dsA3z9UEZisKU+oGqGjDQgYqH1XDQQwXbNDIEWH3Mc
	 MdqkG3r0xZwpJS54Z3TuSFunxfnPDmXVGy4O+EdTOa463iyLFAFw9JzfKZzfA9sGxK
	 lYKyvNA+xPmXeEDyayqnZbyxcFsB7Nof9JXII12ytAhRAFeHpFvh82IjxiXYaAx66R
	 urpCNLPaii+aw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A065D10366
	for <ddprobe@lists.linux.dev>; Tue, 25 Nov 2025 22:02:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176410817359.25483.16616298066398755284.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 398560aa704a88fe6b27e70d6c4ada805598b631fdf5d36d2655b95d0c1dcfd8
Date: Tue, 25 Nov 2025 22:02:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764108173
