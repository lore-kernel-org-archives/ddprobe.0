Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2060E2DA760
	for <ddprobe@lists.linux.dev>; Sun, 26 Oct 2025 12:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761482394; cv=none; b=IehC6bTi9Sg7UPLxNQmD9iKFYv5dzl07bR59OE0bZWvmdHEiTL8fsG6Y3A+mI1ikiRXnpGcv0AMYEpcteIkZOC905lw+9FI4xeMDlJGIcRtMyAxNPuv7aMlxQBcxJpMAkvGZKcypQRYkKKM7/NnIi/0DewNMbgP9hv27lpfuNaI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761482394; c=relaxed/simple;
	bh=KXjumpSQRosNsPe3YaZ+NtUGxPQooi8cQ9xRTEyxLOA=;
	h=To:Subject:From:Message-Id:Date; b=WIIhXoTp4TV+PPKd6S/E279eSjw6xdrQ8fiMnj6RwGVVfrezzMQTkJf/jpuOWdafnk/jGVdIyFHOz40RX1VgKm7HDOp5fMyul9HoJlahOY7/RcmA5xG4ecDr8FYNT3FcaLFgW33rJfx/Xf1xAZz0B4c5+g8oBpw6mnS6VD9K7hU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tztElcbQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tztElcbQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D7E8C4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 26 Oct 2025 12:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761482393;
	bh=KXjumpSQRosNsPe3YaZ+NtUGxPQooi8cQ9xRTEyxLOA=;
	h=To:Subject:From:Date:From;
	b=tztElcbQsprIto4F+s0iTuXpaX70R96ii9xp+c8Mm/TSCBFfktvxpEyePj4C0hjn1
	 eIFM9amb6JVOCNjbYfw4NzXzuFlRN5ZGytRzD7sEWsePRJYeKyDH6mRMkpETemq8vS
	 FsIxecGp2cexaIxd54n+52FrBiSPk8ln46cQbydQ5eb4vgJzshsvDp5EcCPtR7sfS7
	 IMT3Uf23Q6p7K6VS2KfqWrKj513khmjn1qb7IsIOIfl2QZJHT0P5sCrlHMcSVGXg1E
	 e+tbODdDS9h2v408eQ8wCb4a3vHYHflP+9p0kY4cEIoFA30MxM0ElfNOCZyeo2Mwmd
	 JgIVwpZpI8hvw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F2CBCCF9E5
	for <ddprobe@lists.linux.dev>; Sun, 26 Oct 2025 12:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176148239357.25272.7495957093250134142.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cb48edf5f722d6be80c2ee71be95737e9aa57f20936f5731809b9e79031cf13f
Date: Sun, 26 Oct 2025 12:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761482393
