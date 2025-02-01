Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 65377F50F
	for <ddprobe@lists.linux.dev>; Sat,  1 Feb 2025 05:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738389354; cv=none; b=nTTOSACRamwtAElqvnWPwdJIYBSxUezVEsQzeSRzP6NQX+qw5TPTf/mQhSV24L5yauGm3QDe+At8ql912lEbhq/UYxJXTgBnWe4EBqNKt86XEgq7D/di1aMnSP7gOJQN5LARnLpEqEDpRlBG4ZzQ8aq1+tpm7BXLwf2qbd6/Gc0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738389354; c=relaxed/simple;
	bh=iDziBNlH2+rVuTUHKK2r47LTsNnzA0Ufr2bosLUWxqw=;
	h=To:Subject:From:Message-Id:Date; b=IhYn89HFl1ifF7y9SJUEFakhgx2H9xUnnGfunmhPCOrrDkPjRaIIfTJfiLJ/4OwVRdWk3VOXR+R2tmSp0B9Td+XGXWN7HFMcjz6iYXESR63oYls+EexXgKzmI6e1aba9dI+V2FKQ0jTG99h+ir27fjFLc1gaHV00gkGhjYqew+Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=t+xDf7Xc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="t+xDf7Xc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C6C89C4CED3
	for <ddprobe@lists.linux.dev>; Sat,  1 Feb 2025 05:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738389353;
	bh=iDziBNlH2+rVuTUHKK2r47LTsNnzA0Ufr2bosLUWxqw=;
	h=To:Subject:From:Date:From;
	b=t+xDf7Xca9uq/+lPReGDCEuYzEAGoZhEKqGrj/UzOqUbyR8sP3UEG55LSm3WtLjgo
	 k7OMoxHGZ7RNBIDP+laaUhZfCNrtxveINJcZR5D+p8FQTjpBNYDp/WiRdNLCtWCbP3
	 iheVdP17uBVNTZCrgOfUPduDdRnkRuVkznX6uoyYTHQIjlpbOKvN5UK05XaE6oEA+S
	 h1FcVBg7PVCZKZJMX8qbeFUCxtTGFYdKfQg52vdIDfalUeTBP9+LGf7R4PB2/Cb60U
	 I1qE9s7ZxgJ91QhmBNyPhmWQdelo7vVajn/cISpMdSp0Fga05t/JEI88RcGhllOGLJ
	 g5uD06FFAcl7A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA8BBC0218A
	for <ddprobe@lists.linux.dev>; Sat,  1 Feb 2025 05:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173838935365.540.9406299658457453402.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9bd0f751cddb7e28e3f9ba4f48be325fb1cb1ec1e82cc8d164f536a5ea4b4cdc
Date: Sat, 01 Feb 2025 05:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738389353
