Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 519704C70
	for <ddprobe@lists.linux.dev>; Fri,  5 Jul 2024 16:15:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720196123; cv=none; b=S2upmLGEXH+O02/1CI1NvooXXsrRiWWxVN7J6TO3F5Dh+PO6vZ8Vf2L361tDL5DIk7jQiXkOJmIk051j1bORBhVCntQxSFai77k0Qph+gLSrlCDXk/I0O9orFd1jtkAN8AqTzSWT5G0JBfiHNk1YIqamW5LnzEBto7RIJ1jdLAg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720196123; c=relaxed/simple;
	bh=z652mdzKlCq5yadNDqC4IxhAVHw5Ae91l3z+Rp1a32Q=;
	h=To:Subject:From:Message-Id:Date; b=hyucxHSNi4EDZWi2oq2dn9tKdEoaazdAz+udZlCTSHv8hrYLPKkl/46UjsK349Hp9S+qLwPrLXe5fNjJA7Ys8wcYw5n+S7O0ePEctmqozka4fn/fDi0SBe6xOEu3rGW2f0DitUKR+j0tNtxkziCWCD+CkdlgXQGNU/hBnHcZAag=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uaR0S5yw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uaR0S5yw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CBA95C116B1
	for <ddprobe@lists.linux.dev>; Fri,  5 Jul 2024 16:15:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720196122;
	bh=z652mdzKlCq5yadNDqC4IxhAVHw5Ae91l3z+Rp1a32Q=;
	h=To:Subject:From:Date:From;
	b=uaR0S5ywV8MWHtqOqGWKsjgnrhjA222a+SFUS1emuJZdM79w/ofV4cHGk1yNcqmJ3
	 oRApLiAQITRjR9PkXAtNlWBHxb2UF3gfjkLeE85kbeTRJkaKNKKmEjQrwYojM0b9kJ
	 7FACFV+nWYn5WxKzV9Zl5inHJStysAbGBMW+RVOMBjm01WXhrGT5Sd93npx3QqugT9
	 vh6j0qsEB5d92LNML7ffvOIVsYON9wlqciQ8nsP4MJ9WJ0Xijawov1Z938khesNHOk
	 M26WOlhzP+LEtuZeNUs9a69QBxrL9fJCMBZpR8KSg+XM4IzKfonFHbvZX1bLr9PXvK
	 9NxQAkZ177j1w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BDD12C3271E
	for <ddprobe@lists.linux.dev>; Fri,  5 Jul 2024 16:15:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172019612276.7379.16826500762014238773.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1f4d6cb3c56edfb25344197a07ad782e0d4a951fd52f0d89a48c16415d91b82f
Date: Fri, 05 Jul 2024 16:15:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720196122
