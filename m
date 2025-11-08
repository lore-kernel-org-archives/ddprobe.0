Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E3E6E1B85FD
	for <ddprobe@lists.linux.dev>; Sat,  8 Nov 2025 23:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762643394; cv=none; b=un43w7rJwH4+WE35MtQhY9y7DNHVr9rYU8wUKwLO6s7hCQ0lZkW1okD6xaYNII+7MhiP8Ui0nqmhV20ad0J/GsqSsDx+n+L3FSnWKbWqHzCy3aPr4P2hEw7Bk3agz0l1cx5i+f84yKbVpTYRY2Ag0O0jtkvOtMfsdUnAdmF9C6M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762643394; c=relaxed/simple;
	bh=lZ9M04xeFXQzLZajhOU88WNejbQWUIejtgVs7cdabb0=;
	h=To:Subject:From:Message-Id:Date; b=hNN9Brj5rcEyziWH6HIrQT1sgIiqyjzLZnhFmJTn3KNdfLMfKkhUe2wwgj1uHsxKe5RpxjgsPDd0RMJwgpBrsLV25PrOhEDGiISFR3dW3DPyvOsWSK/nYoqSZ+hGvzj8m6TIzYu+NClEpXFik7w+MuO11fMtlC0pHf8wc4pyQ6c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sSV1vKwt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sSV1vKwt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B918CC116D0
	for <ddprobe@lists.linux.dev>; Sat,  8 Nov 2025 23:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762643393;
	bh=lZ9M04xeFXQzLZajhOU88WNejbQWUIejtgVs7cdabb0=;
	h=To:Subject:From:Date:From;
	b=sSV1vKwtcbby9wE1uvMj6wgb882kKFR+mFpU0MjkJoLLfdx8kqPk8wKbBSNqwwL7U
	 PZl8LoME8tAKXgCOgBijvudUugdmSB/IBzJnBsj2tEZHI71duGFnIJM8zMH2QdxdZ5
	 GteKJcMbtRvmQ0VF4Wo3fnGMaxJJPYZO/vl94uJ5RjSdsSjoHTsL6oc9pRkZHe0TBC
	 34wTRs/nOTCDJPlojK7nA/904++4SABbivhTNUSZ1PbodC7846gqaH5KkagyNMeCpX
	 vssc2NHLwHxX9VNqYL+lX/VCzKW6mLSw3ydf59FawN+py2j34hloTI/ue+1bO7Fqhy
	 xfsuOaXalzjOg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A5240CCFA13
	for <ddprobe@lists.linux.dev>; Sat,  8 Nov 2025 23:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176264339365.25071.2510215344127068296.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0bf839a5ca34e129de6dfe3be18233c74e589a53412b4e5acc9613292d979d1b
Date: Sat, 08 Nov 2025 23:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762643393
