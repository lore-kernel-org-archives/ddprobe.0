Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ACBE143E9F5
	for <ddprobe@lists.linux.dev>; Thu,  8 Jan 2026 11:33:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767872034; cv=none; b=TTqgZQK6dkoUG+RdI5XSKLqP0qRSVhkAMYAZxx+xeYm9nnmQFTgWwELdshByGUPDqUZvxbAw3lbMkOXMUiKHgC4Qf4V8oIDGpxkeNkexehH43h9kgBI5Oo+98DqMzoHXaS87a62KKLVINCzN/F4xhjZHCStdlWaLl4WpZrz9d8M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767872034; c=relaxed/simple;
	bh=A/mvV+KWj3XgDnLup7v2BMXJZZtBudk0Jo5Lq4vHM98=;
	h=To:Subject:From:Message-Id:Date; b=hDq5ReL0ned2b4z2JAZfR1scaS9dnCXVIQJTmGNzQNj1LQZpo2Qz5k/mxFzhOxO2BI7cHxbsVA860Z9bdMawxyWVKjND4nGiNyH9b8bUKHn3+bTc7pThe7BXjOT24FkOXnhZSMAOyuazhCvvQCyO2wnFnK6I7inRmDbEpXACLwI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WWd8aUHr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WWd8aUHr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E422C16AAE
	for <ddprobe@lists.linux.dev>; Thu,  8 Jan 2026 11:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767872033;
	bh=A/mvV+KWj3XgDnLup7v2BMXJZZtBudk0Jo5Lq4vHM98=;
	h=To:Subject:From:Date:From;
	b=WWd8aUHrTWhq7kWdcB9ag3KqzLYH2wFOtXTHIxFmt+PP6GDqRGCucltsHXhCnjZQX
	 dW6nJAn2nQfrH40/RcvPZE8dweVgGKSPtIUkk2UXoMFe72e0Rjj8RH6ErU6p1m6YiL
	 hTikXXsIFq0Tfl5ao+fU4kZQC7joEic2lbx2EKrI4MQvtT7Ofd2OnsiMuzxUo9K6O+
	 IkdGBzyTTViU7spmF3+xgKzxkDwJrVbQn84LyboCozAKfwyKb+mZ/owP0kxTVOQrEF
	 YCAJ8pUVz4LgedfjreDfHJXEgo627zvfx7NHBHeTlKKpbzCwrAf91ESCsHAC8FCmF/
	 Jj5+jkkZ+U75w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FF9FD185C6
	for <ddprobe@lists.linux.dev>; Thu,  8 Jan 2026 11:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176787203358.5619.16555128897404325302.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6f3f43829a799b87b06cb47407fd70fe26c9e5eb293b666ab106e4f56ecd389b
Date: Thu, 08 Jan 2026 11:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767872033
