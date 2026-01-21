Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BF6A374165
	for <ddprobe@lists.linux.dev>; Wed, 21 Jan 2026 09:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768987434; cv=none; b=pC+pN7jjljQFrV3nDqj8lFoSaTwpMRiOb/65V7h1sYlDhEVpBHwlZY9fEO+XiPkq6MOLnKBf17O9Fa/IG9xs6p3toTr5XVCJ5BnDwLsN2ww3AsBMUKyOVxTdBojUmRLClGst/1Gye4rNuBEudOeLRN1dmB9G+798MkpI02IndHM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768987434; c=relaxed/simple;
	bh=XvdIOumui7o0jwQx00Wp1WvOuX5qwDZ7ZAQQ3wFrdxk=;
	h=To:Subject:From:Message-Id:Date; b=K1x4K9WX9tc0gLHAwtjdRKNVq9a/TlfoY51ne5Y+ckrnvFq3lRVhmdC8vqeYu2DJ1A055ViSGYxbOR5KJUfp3piaZH1+CLetq4RFfqIcb759f3Pm26HYOQo9yfVYi7gGRYzByuyQFm6NMgOU5n9E9JYMgumKzvFjkjn7X44BOuY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nAg9aM2r; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nAg9aM2r"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6874C16AAE
	for <ddprobe@lists.linux.dev>; Wed, 21 Jan 2026 09:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768987433;
	bh=XvdIOumui7o0jwQx00Wp1WvOuX5qwDZ7ZAQQ3wFrdxk=;
	h=To:Subject:From:Date:From;
	b=nAg9aM2rwjbPie/NyXL6M+saRhoGTsy6a6qJhxhQ/uWPzXCTl6XQa8cawdpeKxEqS
	 wejFffb9d+FhaeEKkL1MsO1LoKTE8NefFgo0aZHvh4YEkxDEQW+oIobdFTMEmsPYda
	 wa1iOk2W+jrku+803EZ0AiUioyGssKTyNyK5vHYvGd4H3ogtW3+bvJeJuWsXVnf+hx
	 jFVNA1RJqmZyRx15sr/gxlYzYtkOZJs7mf7qE/jYHRzXiZamaJ8VR6uB5dVhmn1sB+
	 5HKNqaHoiUbKZ22tw3jRwYZWWgTq6I10LCYktL5ps7Ws8Xkwd+9fGvRWk5DQSmmQp5
	 OZXAWqmrscH6w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A3190C44501
	for <ddprobe@lists.linux.dev>; Wed, 21 Jan 2026 09:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176898743365.11897.6573825557709787551.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7221f4d9ff5ac2d7064685e870ebc8692a458904da73380ff4b58881c30c6d64
Date: Wed, 21 Jan 2026 09:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768987433
