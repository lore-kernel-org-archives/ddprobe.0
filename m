Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BA6B13E02D
	for <ddprobe@lists.linux.dev>; Wed,  6 Aug 2025 05:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754458194; cv=none; b=pYEpDdC91CP88q6CeonhIdRKMdWdgGUfhgkv3CoQP1HgIL3laXaG3I1yGMl0Il6okRrs05BOh68zSWb7qVYsjSEpGKF++tac+dJdlunRPmda0IDjyVgt4VbYbxPEc3kjNf6bEXpBcFIjDWQLUOtaJvs4d8FG/vUFmhldW0dWxys=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754458194; c=relaxed/simple;
	bh=rtKmHlF33MPky+6+8/cmWfzZ9vKiVHZL061tl+9Xm3k=;
	h=To:Subject:From:Message-Id:Date; b=M+eiB0o6bTtOSuIjSEoaMJeZiOgHP/oH18TJSZKus6onUtdEPPavGEhbUaw5Xg3nh1oOoXOI94fnh6f0GBbrLShVPLTGT3U1z8VF7aQTbBZJl72vW8HdkGP29NHPYGOQjjTeO0aPculMWzhKPiFOkycPQFCL0c2TO+cSaLbex+U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IG9fiDjS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IG9fiDjS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4B94C4CEF6
	for <ddprobe@lists.linux.dev>; Wed,  6 Aug 2025 05:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754458193;
	bh=rtKmHlF33MPky+6+8/cmWfzZ9vKiVHZL061tl+9Xm3k=;
	h=To:Subject:From:Date:From;
	b=IG9fiDjShD3PsTfpuSmzUfMpp2JEUFCBKwQ5olvmhGQOy3/cIVLmIi5QB4/59AKZv
	 hEd2Ia45PyLMA22DeIGJwSYlCciQHjSI/RUjGwCUK1oPkhBQrVmqhNo4am5LczCK1R
	 CAEXOBMNUtUKMZfew+cXQVcq6ByQKs1W3AkiewHy/dmFbHoe8y9PTpGq7mcQ3PTcvU
	 ybLx2XWpIuGAOBx/CxLKJtuk8RLsNMjDmeWe5w8BqkYntqsPYapc8GZ+nk71rZ+Soy
	 flL+WnuLjLOnUBAZyBxDbi7uOgqavgGZ1js+yDhZ+0KfggoLrFAxJoGHuo+uVqnbL+
	 UdrKKvkhEj3PA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 916DBC87FCA
	for <ddprobe@lists.linux.dev>; Wed,  6 Aug 2025 05:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175445819358.5793.11930782709551920711.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 862192bac618b5615a1d34ccdda50d582535dea2b9ef7add0e242386abf63dba
Date: Wed, 06 Aug 2025 05:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754458193
