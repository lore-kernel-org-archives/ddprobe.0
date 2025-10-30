Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3031E1548C
	for <ddprobe@lists.linux.dev>; Thu, 30 Oct 2025 18:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761848994; cv=none; b=GCGvGqGSLxaF+2tLW7JfOGaR4UHjSn2x8MveTfquNNJVJEHv/e/HlMlsAhBZrjtkgomb6VGk4a69hCqvDg3VnRM0NbucPPC0VHn0n0UY/Z5tbI2FJWoDmhLOOJwn9epD72UDlgp47KQUnuAgPx4JfEumu+HFpbH+13Sm3T3m0nA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761848994; c=relaxed/simple;
	bh=YcV1F+DU19A58ZLqq+2xuxf3/ics1krFP4bu1f7AQBk=;
	h=To:Subject:From:Message-Id:Date; b=jLunw1qju4alTpzowib8DMs//cfs+qrw+ArDv3H7mOpUwn0/af5Fql3O0N3+HS2XprYSwQDrCIU5nsiTj+BsmKmiN0rP0h5MKVzmpmeQ5OvL82gZEjjmJFhlx+uQIPTsoU+h5aG6hA/oKvWctnf6mIyWbISwhFPFCjpIqcxRBVM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sej3XVfT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sej3XVfT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B32D4C4CEF1
	for <ddprobe@lists.linux.dev>; Thu, 30 Oct 2025 18:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761848993;
	bh=YcV1F+DU19A58ZLqq+2xuxf3/ics1krFP4bu1f7AQBk=;
	h=To:Subject:From:Date:From;
	b=sej3XVfTviLnUeXvONV8J/W0DBQ87chsRu0QfdOgUZmzQXsh6nvuIe0CIDwdD3RBW
	 H1ZBLal+iTAjGCNuVDaB7fwnGh+R4d0fAokU7AAyCl6U112BQuNlRkFvx3fi906QL9
	 rjpu5z7FHh3O0YGsOy+fvWAbOqrxeIuyKTnuSFjQoWBJ1Yaifcd01Azm8GqbzC7T16
	 qKwYZz8IW3Y1hKJqkS8LBy4qK7cSyaYC3pVlPQDEO+w427+yIvGkBY5ZrB+7OwJ3Hc
	 ASN8l4Pc941pgWF3CDV/07JaFoVezNZo1W1uoBH5uL0Sp8FaQQhPClHSF4nxvlPLQL
	 IlHneRF0kfvVg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A04D4CCF9F0
	for <ddprobe@lists.linux.dev>; Thu, 30 Oct 2025 18:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176184899364.18396.641656274973549319.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fdd617bd7d36cd057fec564cee186aac21af2bdeb9033bb528b8d0c2bf642d83
Date: Thu, 30 Oct 2025 18:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761848993
