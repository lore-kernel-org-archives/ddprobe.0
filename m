Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D5852D12ED
	for <ddprobe@lists.linux.dev>; Fri,  7 Aug 2026 16:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786118434; cv=none; b=q6Mon853KtcdD1Xa2EiVDBM45bwxwcyuv+6ro4uCJ4DDLQHc66k5dKGsP9nTmWn01VXuwwWdS4TPRTaIuoi8NzbNJA/yf6IS+m9kPOByvZPRv43jVqUG4YQ1m94o0iDoxVYVuOJ7aptvXiIgbePfZzQ3FKsguAgQBP6Gjx9RLII=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786118434; c=relaxed/simple;
	bh=1tW6shlt5evfIi8Z9q5CwQvUS6R5cY3R3rtqj0QHRtk=;
	h=To:Subject:From:Message-Id:Date; b=mwvTX8M006jsgydWxGWHUgmFjXy9m2xFRSEws/dRj2Ogsza9sJTpCqfuOZ3C2vj+OYyUEFPm8IRhxBnX8WFhLBK4XC7Cp/tQkvJDNK7N/u3Wap8jiGfOXPfLIR8Cqa8jmAFlBqGuh44SkG13z0iH5OcGIeBhismZ0W4lCkAJAq8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VxCokF/l; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VxCokF/l"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D52C1C2BCC7
	for <ddprobe@lists.linux.dev>; Fri,  7 Aug 2026 16:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786118433;
	bh=1tW6shlt5evfIi8Z9q5CwQvUS6R5cY3R3rtqj0QHRtk=;
	h=To:Subject:From:Date:From;
	b=VxCokF/l58oCjYfdCZhz+3DaPV28+Xsoz9Vq4ZNtoGACQEhWDxXSHfwggHpxdLK7U
	 zWZX15S2+s0HgJgsRzZJp6B7WLYZ1O7E7eVucUYFt8Umf6o9d2m55HRijntPoRj4Jc
	 KA8KT8NG7nSbXVrtDfMvSgr7JPJbU2k27nsCm2RA3jJORazF1G1uYKSLOtkmyOQvoa
	 0aCmCSyVXrUFzjKkrwjy0tCG6Cta+USyIr/oF2KAadoW7eKjdKXSVygVcIgNRi+Xt+
	 owGpWuDHjc73fenZVjJNofSeFgSTNNL4TxQ72Z4d0r2NWr2LrrKYckvFU0YPlDQbzT
	 5l1PI3OhHFZdA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0729C2A09B
	for <ddprobe@lists.linux.dev>; Fri,  7 Aug 2026 16:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178611843368.11002.7354809996438460651.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3fe79edecd22e9ff91150a78c13c667d5bbb7545ff861c5f76ab42eea93ded31
Date: Fri, 07 Aug 2026 16:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786118433
