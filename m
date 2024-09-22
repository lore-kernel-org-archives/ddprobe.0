Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0953F28F4
	for <ddprobe@lists.linux.dev>; Sun, 22 Sep 2024 08:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726992954; cv=none; b=l9gLMx5v9jWqyLNWYDQYNMRt4NTHngZgb2m5/Vc1RegRs6lAj6xOpXV23H9QixmsHiRlGithutn2CmlAJZPhtJ3UtzZ8mZXlaptO9wYBCemKlORd/iCPVc8yTcz4vnUUptGm1k4REiF3VdxN1UCUnI71JhSybygORe0LNdGAt10=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726992954; c=relaxed/simple;
	bh=T7B7QkZp7VpUGkigxzbxBpjOR8ii4ecbxlkPGERMNIE=;
	h=To:Subject:From:Message-Id:Date; b=HCu/uS0TgMXkgbgch0Tp28dgmHvIuiBtbuVx7RiUxnMDSGMPwArqsbPpdkG2GGoo1uJuD7u7cWJbvB7F16w5aqJieyrS+zX3ox0IGHhXsDKYvGW74cTK5Be48/E4cnc0fytQbq8u35rYVrblH/2rMNbw42GEybHV6k075QzNauw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jOJGGOaw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jOJGGOaw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E1CFC4CEC3
	for <ddprobe@lists.linux.dev>; Sun, 22 Sep 2024 08:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726992953;
	bh=T7B7QkZp7VpUGkigxzbxBpjOR8ii4ecbxlkPGERMNIE=;
	h=To:Subject:From:Date:From;
	b=jOJGGOawnXLpRv4tl40WVuQRIBNOrfgZO6C2TOqiA1oqxKjHIOUUpobMJvGt5BPAV
	 HCY1V0gEhQr9RcYSQm9KReuzhWS9PGeloLsIR0FzWB3l1Kmlit9UufqR7j3vdBDQmw
	 Ec4By2XZzYyzNUBDZK5ugtWEYuga+5Z4U9hZJeaJiHxBqIWw4gPthhi7jobh9tJwsZ
	 H6A+yd31xQSjgMETxTEPlbpK+yIJhY3YVlEOdhrDpn82OIjhW+8F44f/lrzwgojf1W
	 aMtH8bEzKQ+4xm13Ih3TwGS8G0+TW2eGyI/ODDbozmZ6K7ieUMNlhvNYlYdm5jKkrd
	 F1y6ZoIuWGxtw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91222CF9C69
	for <ddprobe@lists.linux.dev>; Sun, 22 Sep 2024 08:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172699295358.5403.7321944669030775087.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2f97f36366c84cec04fa3679a29fbc45fddb33fc038f56c7b15711ff8445dc42
Date: Sun, 22 Sep 2024 08:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726992953
