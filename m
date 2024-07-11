Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 488667462
	for <ddprobe@lists.linux.dev>; Thu, 11 Jul 2024 02:07:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720663643; cv=none; b=prxaI4EjGQvnc0mLTFfE7ZvdvvoLHIVJj0BurgMjF2Y9CSk98R9wYZWO4f2jWfmJe3uuZzDDlEdQdYHP61SPDFwK9P4sk68riOnbN09kyr9PtWxJFtW0hHy98D0mH0BmqNGyAwxR7A0ivrSLXcGPkIAH47UPELxNc1s//XNpOuc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720663643; c=relaxed/simple;
	bh=Ew3cHxDL0AU+Urks/VrRD0bPe+CtPZ9MZmqOs7FDWT0=;
	h=To:Subject:From:Message-Id:Date; b=M/BeTnJv3EvV+5Xi7lnw24368mw9ghNRPJnWYJnlB7wSHaaTgLbkiP9J0N6a/E1vFwUiuPLAlIOMGc+a0AQtd6pxXodz1HhsiPs3YbOL+RsEuUkAvT4nX4A22QFw8NUNV4tA0ABQy9dWQzIzosteiWoCUpX59wJ4u9CcTIW3m2g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XzBlGq2z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XzBlGq2z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D83E4C32781
	for <ddprobe@lists.linux.dev>; Thu, 11 Jul 2024 02:07:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720663642;
	bh=Ew3cHxDL0AU+Urks/VrRD0bPe+CtPZ9MZmqOs7FDWT0=;
	h=To:Subject:From:Date:From;
	b=XzBlGq2zLTK1pqU+2EsZUUhM2Wngd5hty/KRjc/BICtW1scRY9qkCL5r8lMsRuvxX
	 yWWkWfBtKRp3CN4d4EmcjngqyScoEC+yw4nkHocge3+U2awSIcYUGWOpAxHg740eKX
	 NNWRhesznxnHi4/hH1qsZ21iD+/SsegupTdboHeVt90W3qC6XM3AoKnglaUUZydL/n
	 hpnJbiSGLBblapUPjda8x5+FirAtmurYp6gk4bQQg4keS7bLGPr+CbR+RlA2zD1K9+
	 VuIDNfXvAgG6uSifyUjwcfXjvth2AQvy6Q1CsBYxaV/TAwq0k9w9pgvJClo4wGhHv9
	 vHBcyhseR11nQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C76E3C3DA42
	for <ddprobe@lists.linux.dev>; Thu, 11 Jul 2024 02:07:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172066364277.18814.12892067908057492449.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d526185a46fafdcbf5873570a75ab05e9a481f9625d90fa6db0369584bdc3fe4
Date: Thu, 11 Jul 2024 02:07:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720663642
