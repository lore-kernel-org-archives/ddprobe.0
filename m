Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1453E225409
	for <ddprobe@lists.linux.dev>; Sat, 18 Oct 2025 20:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760818194; cv=none; b=PwgAIWxq5XjWmRIzs29B7vm31r+MH5h6UYlq9+u0mtAs82Cm6X0IUup9bvhS6+IIbC4UIRXi9vDZmXgdSY4IEExA/29Wv/37vRQ5KOVqrEmMfknl3Kw3QUj9tsmPoMFlf2cWXuFEOxrR/7Ae68IWhw4FOTfyIu+Z6kcEfBEqNSU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760818194; c=relaxed/simple;
	bh=EV43irrUJP6stbye1yvENT7AEj3/eqDA3K36hV0n6k8=;
	h=To:Subject:From:Message-Id:Date; b=BYVinVXDiRy7ej07X6OxlaOLSQxJOqTgBnplhgy4aslKZJpfy2eroSvKxwBm6x8t0Abwwow8+VPPlgxfDjhaakZ51efmmlxfsGNVNIAmX3JijnlE5QIik+S7JsqDnOUhC2B2OxwJrHGKvAUFNpNOYkquht1Iv/dLtYnjyKkNU6U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NM5TMgwX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NM5TMgwX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2CDDC4CEF8
	for <ddprobe@lists.linux.dev>; Sat, 18 Oct 2025 20:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760818193;
	bh=EV43irrUJP6stbye1yvENT7AEj3/eqDA3K36hV0n6k8=;
	h=To:Subject:From:Date:From;
	b=NM5TMgwX2oPsH1Kh3JX+GlHm4EpJd3BDTyRelOvlUkgsE7+NKx4iIHZ5CXkn49Aag
	 QqEz1KzoZtcLPj89yyBRuwa6vN2PeHsVpEqAsJ/rLDNqhgxtYzKx9Wrve2q14Ho/8X
	 OY19os/0zFRqoysYMY5blT8gzI3UGE720Tf/K/otwlAtc2wAPkbDeHEy9WGSi8uNGI
	 OOBnMTwZFGB3+pkxx7N4Ow3YWVdEwxo0StQt9AqVsdAGWNVYWY//56lUdfrHk9zUUA
	 GgFHeiBcx7ZD4ilffwdft3GLNIsjklkGdgEhtqvLZJ4CllPUd424cwMbchgz1lMu91
	 PX37KxfY31YNg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FCA1CCD195
	for <ddprobe@lists.linux.dev>; Sat, 18 Oct 2025 20:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176081819358.4857.5439995885288266505.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7e3a9ba73009013e1ec19e25a5f5fe7700f5a811eda1b386e5a740f8d2219a83
Date: Sat, 18 Oct 2025 20:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760818193
