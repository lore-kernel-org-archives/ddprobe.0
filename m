Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E4D11DE4F1
	for <ddprobe@lists.linux.dev>; Fri,  5 Dec 2025 09:52:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764928374; cv=none; b=Y/ouzZKmxCGzR/I3Lud/xKLr8p85KG/YXsUlP7xqyW0H8uHCGd2djJGlp+1X5frVF0SS8qhOnRXdBf/Y4Go3+/YKczlO0Oq7TOmzlM/Pqtg+kXsUPuW+sO5OVbiM4t3pam9yZZc3sOw+uzfVprjTEMqqIkR5Rp828By6Qz5YCmA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764928374; c=relaxed/simple;
	bh=cPvU8AmwEseVgzshBDYx8QVTnKeSAiTDGlhcKIIBsJc=;
	h=To:Subject:From:Message-Id:Date; b=daOnVPv7xiMY7PJ3tqyhl2gWHCbTYOfU4EQAWvrxxFxAw5oHwJeqlXAEVVLWpRX9h3o0mpR3G9fsl1XKwB205PsVqxy4lfLwprzIKaMwET/kJQgIaLAdE1Y2h4c6wfzKRG3/LiYf6W8fLrfTi2UxjQfbnpJoMsmTbGRZQNjNSvo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qJtvdEvr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qJtvdEvr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A59ECC4CEF1
	for <ddprobe@lists.linux.dev>; Fri,  5 Dec 2025 09:52:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764928373;
	bh=cPvU8AmwEseVgzshBDYx8QVTnKeSAiTDGlhcKIIBsJc=;
	h=To:Subject:From:Date:From;
	b=qJtvdEvreFWQuUuCmclB+EumVXK4IsmgtVRTpmkOVVfy+axM6XgoPRBfneNm3F4ks
	 joyN1wPIl/GzPLmhtoqYpxMdGaqVN0/6SUx9Ahbrnl7DLmecozSfRcYvgUsG58orFY
	 oszEvSlilEZOMoaPpSi+xd5typJO3DT2ffBm7eGfutyq1NNy+x8V9ikjAHM8hr43Uw
	 QCKAiXtUsrsVBoobXOjdM+1yZv828jR2ukbLxdGZCMusrNmdpXZjcnv8JqPufF9wTo
	 Xc695Z5qLAqKcOZsObXjXFISFQV/e8Hdrgt/ej028GixBQtjuIR8T8aGbyogbJ7XI1
	 qaOQis7oQ5wcA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 925EBD2F7CD
	for <ddprobe@lists.linux.dev>; Fri,  5 Dec 2025 09:52:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176492837358.15523.6669878613155819179.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0ef0116e2b86c630ec93a6540d65658b8f07a5f9e5442cce2633a415d5c126be
Date: Fri, 05 Dec 2025 09:52:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764928373
