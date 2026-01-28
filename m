Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BFA9E2EAB71
	for <ddprobe@lists.linux.dev>; Wed, 28 Jan 2026 20:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769631833; cv=none; b=pZLW+NKXCGKtIGNQCq/Io8vDf0c9YNMiJb1mxGDOoI9e/0ceQpQ6YJTjDFfTKjmRhvIGJDBYCDiNJ0PDJE1MP3Q7NCUjnRtbVVP/2NHYvQntbq5VduUQz5uuraibIBhTvrAvdu+pMhaJuG8whGJePqN2zWeyPWu5AVkv9DzN7Uo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769631833; c=relaxed/simple;
	bh=HoWgivE7ZteuLQrQjlwIj9XRf1vLcHxB1iTt/a8JGpU=;
	h=To:Subject:From:Message-Id:Date; b=bqmOoQHhOCWll2hb7HAw/asfkX9Akm3vnpfsu2hpzyEetyIAv5dX1ACLW6Mh5t2HlRWf5mBiwpZXWiAKDvKWqdl9CyY/UBmt4IaJZz1woIqPRTFJh6A0cA/S6yODIGuGD0P4hhFraVY6NC/8g8NlSUXM9dY14uDCabNEzLxQLEk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jsQp3ZXh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jsQp3ZXh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A151FC4CEF1
	for <ddprobe@lists.linux.dev>; Wed, 28 Jan 2026 20:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769631833;
	bh=HoWgivE7ZteuLQrQjlwIj9XRf1vLcHxB1iTt/a8JGpU=;
	h=To:Subject:From:Date:From;
	b=jsQp3ZXhwgYPQWJkoI2NWAVMlqy9WliSwzdqqhoLAfdYWxkIddMgJzvIUlh78TXim
	 hOfFoYV4orGZhpsN3NUsy5rddnX/A/DvuBxYAqgcL5HcWvFcY7AUKeiBeZiqDXXg9x
	 EgAUa3v0DNeuI6BnoF9qxL910KhuSUzG1gndd8r67SyfR9c3iNiTyGHelj0rRHv4al
	 iBPd1qI/s8bgobP40tFc+KvfvC420cJrLK1KlGBfQnrgdoujwlhrYQtYyO3mByrcRJ
	 ahnTvnnL4fUtV/H+LaOeUKh2jMTf7chEKkDLe6Oc5AeOO0nOU3xwDM8IcYSpja+2H4
	 1smDkIk0/uX5w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90752D46BFB
	for <ddprobe@lists.linux.dev>; Wed, 28 Jan 2026 20:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176963183358.29674.3377578113866275589.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 050a4f951269c1acf1eb92747a03bc1267208e6f26e13391df525480e3d98ee7
Date: Wed, 28 Jan 2026 20:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769631833
