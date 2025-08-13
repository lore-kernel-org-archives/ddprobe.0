Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20C0A1B87E9
	for <ddprobe@lists.linux.dev>; Wed, 13 Aug 2025 08:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755074394; cv=none; b=ZaHhl/WxPxgRzn/iTy7i6lvqg2aPjdTW+Ar3yR2z4KZ/hTD7Grv2T4lDrz+mgjnXRnaFJEnGyQZX9lslsUi3NfBKVN+gdiPtH7rxJy/1ZMRGOehB6ZsUiyoJhy14yPdG07gqtZNriFN1cW1pqQCjrdcZuIPXHx6V5IcI5ZV7oJM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755074394; c=relaxed/simple;
	bh=QZK0F++zHmlSNPGXkqBY1Ztt69umJunkSxJF6+qvGdA=;
	h=To:Subject:From:Message-Id:Date; b=pCBZgd/zEEZ3NGlXw30RcIGGr4zINaxHtLJjar/gDkdM86w9/unHBWjCjTUiGEs/h/Db1/FiZtA2AK5taX+0M6ce0QfWRwh2jQV7gPHtPWQ5JYOOMLM4WBxiabmE02hPJDLNGNpyqyw/CWaSR0/i2ZIfcG8TUR8uceqaFRFXrNw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VtLvSQir; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VtLvSQir"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1A3BC4CEEB
	for <ddprobe@lists.linux.dev>; Wed, 13 Aug 2025 08:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755074393;
	bh=QZK0F++zHmlSNPGXkqBY1Ztt69umJunkSxJF6+qvGdA=;
	h=To:Subject:From:Date:From;
	b=VtLvSQirq2pyA7B3duit9govDqI8z0atIWY3gtNRdPxDJjeEXQylbkVY3AHd1AI6e
	 tTqANKuHrCj4Yxz5MkSDF0X1yibCQe5zu9jxNHo3/Q6SE63+PZ9FF4G3SzxNH9LAO8
	 l3RohF2GtUZmr68Ehk67JOCXgjwwMQ4oeT7Fwhyg52GtXlCfSBFxpQxTYzbp6xnJPc
	 gpg9+cALPaa+6KJTDFXbsnd1tfq0QHbLGm8eDm/0DfUwNNYd2KdCj3++bkUJ0grCQq
	 PYPFmTDpTvdgCoSoIkoIGLEOe20qHZJ+XhdiDyb+UM7R9hK/KRiOAdpvSe6i2kksGB
	 wKAQmTxzfvxBQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 913E2CA0EE0
	for <ddprobe@lists.linux.dev>; Wed, 13 Aug 2025 08:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175507439358.5936.8780061051638020572.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 49cbc1dc9ddc806f80a6a14f1c3318d1b0a381fd62c2c8b9df46cda578c52c1a
Date: Wed, 13 Aug 2025 08:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755074393
