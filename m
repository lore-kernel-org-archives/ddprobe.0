Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 416AC231829
	for <ddprobe@lists.linux.dev>; Tue, 26 May 2026 10:22:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779790954; cv=none; b=BRZF8GETod6kMaTKtV0gS9BQJCXyagFwp0Ri3tWVZisHgq9/aCecolgjgutNiXNloqG5hZh1w+CgZv2wYvubDZN43KgPrJgA1m0l9/sybJDbP5PYAE2WjrWyTAUy2IuDnoW3+XRJanQZKtKAdzDfOBdAJ7rOm00ZwEPzCtMgEps=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779790954; c=relaxed/simple;
	bh=JAixaPh/bX5oD9DhHWr9LP0/300Jf4dfYpZG09OesIc=;
	h=To:Subject:From:Message-Id:Date; b=iKpInzOjDTnv/QjR71H8DEEIxLeKIKrWU6ScPsEsNCPz3f34XS9b90BJEN8eh/eG3HFL2v5vHEYb7trakQxsNn72It0a7a3maKWp6e18m/1FBtOndmUaYvkuWmfEN8A4tS2bi1cdvwbboxTAgfMWhIvzE3RzsfFC/zhy32qkhBg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ejHwwRuy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ejHwwRuy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C685FC2BCB3
	for <ddprobe@lists.linux.dev>; Tue, 26 May 2026 10:22:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779790953;
	bh=JAixaPh/bX5oD9DhHWr9LP0/300Jf4dfYpZG09OesIc=;
	h=To:Subject:From:Date:From;
	b=ejHwwRuyDyyVjC65N76phi9YnLN3hgBeacdrIAegss67ofuJgw6qgzyTAyjig4GiO
	 Fbidv3rDzks6zY54tRePnKhKEEZoAKBfRoXidPDbeAlChK2Qx6PKq6zqyvBXfym6tn
	 WPyQfSUGihoaQ8onTgMUtXIHEZuyBDqRBSqtXlRwneWKeYLMdQZr/RSAl3P/TulsPN
	 Gs93DGhBAzCCj6oukBX45gbW/9qO6WV3VvvjB2I1A/iAtNNjXbsiIxj31+obxnSRiW
	 RWNffCG561WgyQ3Iamj5h7H1K9KW+W+fWGIIyxqtuTFB13xLV1JqQ6PU+fJaM88RBK
	 LMPPVBrXFjk0A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC300CD5BD2
	for <ddprobe@lists.linux.dev>; Tue, 26 May 2026 10:22:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177979095369.14604.1293994548510685502.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 32f206a5d3057df5eab1a095bb27a767104ebe900845fcc522785ffe461ff769
Date: Tue, 26 May 2026 10:22:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779790953
