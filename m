Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5877C12CDAE
	for <ddprobe@lists.linux.dev>; Sat, 29 Mar 2025 22:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743287394; cv=none; b=garCFmKdU96JC4hgQHsOdUuUPxdRvtypEgfbcjvxs/1Yd7s9YFsqJurjdfrQ8TH2u76581jmkRvxNp9EXwPD0Mc+7TRXG+UA+N9tUEnNnQiVqL3tvBtOziZYsAIM/8AfxnvOIOeqYS0kwYKBOAkbwSOpoO/EZedZOsAKRDkoNg8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743287394; c=relaxed/simple;
	bh=3SpA674CrVLC5/0is/y86wIACZYj89j/0GztVywSfGs=;
	h=To:Subject:From:Message-Id:Date; b=QUQfSrN94SFNzZ52Pghbv1XS2/0FQotxKF1YYMZsxsMYHnpmYiB5z0ppudwuKV27vypv5d0jmSeslG+ioN7q1Igvyri8XiQyv9mNNw5+NxuiNhePbJ9ewFlm1id4lTN7jhGnlliCYLm6Lu4Kd4Mczc9pGfM+vRFQ43lYnCPX63k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hNdquDG8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hNdquDG8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2436C4CEE2
	for <ddprobe@lists.linux.dev>; Sat, 29 Mar 2025 22:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743287393;
	bh=3SpA674CrVLC5/0is/y86wIACZYj89j/0GztVywSfGs=;
	h=To:Subject:From:Date:From;
	b=hNdquDG8rPmMo/KD9G7wvx139koxFIkZo3uLT+ogFTIYuAyJ2EShZbLucLw5qUOaH
	 X6l87V/100CGDBYbgXyZzOJgy+5FyB0glLvRMY0Dn90WGkpHDCxhhgM6ejn4sF2DAv
	 xIqBn38l7TNqXdycphChu54DstfIG9wS3NEM0uCsLbkCeABjqRKUDYECsF/XZEx4bd
	 ybP+Oa4eWtNLzTb/81OBuD2XtpsJh55BilSTuVCuhOBYRvIrykGYAI069EopsQm0CY
	 /LwOFpMUZHOIaGhr4w7RhbrSUNksKe/hZPac7cdQNM2VXfptYe5U8q6b2Z3n7F+Xnc
	 8e3TCFD8GsJMQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9EDCC36008
	for <ddprobe@lists.linux.dev>; Sat, 29 Mar 2025 22:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174328739364.3191.7461127368287856053.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 581c82ed9e62cad39875277ada62c3f2243408845c8a084aa6d8f08ada29b0f7
Date: Sat, 29 Mar 2025 22:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743287393
