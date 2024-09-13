Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2300F1DA0F7
	for <ddprobe@lists.linux.dev>; Fri, 13 Sep 2024 12:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726230954; cv=none; b=dcxtYcFFR8peVn0uXDsiz6/KUBmDUkPulGQRky7VHXHDnFR7R7EC4a4Sifk64w8vEFhJbqyunbVQZeQJQrG2sf7dEV06f1HtimIKS5OOypxPKLuRwvRL9ztABZ18JIhoJjo+GvI0jX3ZLIK0jxZrJENICTwNDb3VEuFKhm0QBLo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726230954; c=relaxed/simple;
	bh=Bj9sAlD0k4jYWCO3KQqdMcOQFK6GvQwSAgh+pbqeD+M=;
	h=To:Subject:From:Message-Id:Date; b=YsxsnDfomBD/bFPOYZR0128s7htVp/gvZi1TPR04qCFOkMva48UGywtrAU7cAdOrAGdt61Td3YKAOrnw0q0qDxTe6QXfBEXK7Wa7ziOJx+sDUG9yhDHpSJUCeYsSuCUgbS6IoI5KU1zrKJqQh4FhD0FAQBTV7bItP8IpKC//ris=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZMCVuZEK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZMCVuZEK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0E7FC4CEC7
	for <ddprobe@lists.linux.dev>; Fri, 13 Sep 2024 12:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726230953;
	bh=Bj9sAlD0k4jYWCO3KQqdMcOQFK6GvQwSAgh+pbqeD+M=;
	h=To:Subject:From:Date:From;
	b=ZMCVuZEKSWKW9t6WzLte8WAquoCtD5PElAD3uUiSroHyqDjWxbcf1JqWBdSTcudQy
	 yD212vwDRDsL2bMstTl0O/UrcoRwTSnvlOV5+4+h0KYVpmSdEOQ8kAjlySgi/5mdj0
	 l2nnzLrEr9q035AFCiYApQhh/E8cr7zXavjeNF5Ut1nmMVpzsB3vP+sJccvepbruuB
	 XOkVNX4zGGaAUEeVyDchVL9FKtYPtb2HlVZeB5NHFZIEPDGMGKZY036a+FTi6h/cNO
	 IX2mUhbTbqUWouZkLIumCu9UcX3M0rb+CbcwXbrqO+Jwo+86vJonREk+2UwTq6Nhu1
	 YjX/rbVlB/p+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9AB72EEE26C
	for <ddprobe@lists.linux.dev>; Fri, 13 Sep 2024 12:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172623095362.8940.7735197373468750868.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 266aabe1433547952e5fa45f011b1dd0126a731b1c27b33b99f80eaa66a32d45
Date: Fri, 13 Sep 2024 12:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726230953
