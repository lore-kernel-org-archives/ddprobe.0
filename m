Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 89A0013D8B2
	for <ddprobe@lists.linux.dev>; Fri, 12 Jul 2024 12:18:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720786703; cv=none; b=TcdukFZE60kYh/QigbU8Pv4RLwNnc0MXGxmOXU+soQCP0z9yeba+Krb0SjsK5p2CPS7SHaAJ+EFOZzU/GI4YCN34VMdj6q53ht8szp3/PRUicwsuGdHXQgjeVf+DWQvc52/eT1xwqWNkZhnsp+QpFpIw1q2LTA2DxHml1pd2kF4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720786703; c=relaxed/simple;
	bh=/t9bgW1V3PCiY3YvsotNH9qvRYtynMMa84SeDGQ8gT4=;
	h=To:Subject:From:Message-Id:Date; b=Yl7qQTQw6whI7N+UsyAbv8X4PuAa34x9Y5nM/TI1N3y1EecuYH84i+yDvlSiHh7z//CMRciG6PLuIB+kd80ok8oZ6cxCDq9ML/4nz6WG+RQCwCJ1rcWsbDbOX0AL3kSx2vHB2U6Et4eSaQB4K4sIY6gHHNFrdzYnL8r/8K1dDEA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eu1FyaJ1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eu1FyaJ1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 035DEC32782
	for <ddprobe@lists.linux.dev>; Fri, 12 Jul 2024 12:18:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720786703;
	bh=/t9bgW1V3PCiY3YvsotNH9qvRYtynMMa84SeDGQ8gT4=;
	h=To:Subject:From:Date:From;
	b=eu1FyaJ1TN46tGRq7pNFLu452U/55r7cc/Zcr3zFbwToQhuE4gZtWEA9KVytsb0XF
	 sPwCphAZ7RqgXK/F1krAjzMW6Acg6hDX6g559398CwO0FWdc12RvlmVijEej15ano+
	 02yk8wXTwO0V4nCe18zgBelgbbyledEj055BNK80FDVzHCZTAb/oIhckOb54YGxg4Q
	 ki6iNkeAMZzfZYPUtfCCHgR11mN3KOzcajPX9Ygst9ao52NorLHNXw3uv7Hwa644nR
	 Gsiu1rJrzfmRiOjywKwxoErLSj178knceWCcoO2lhsimPHw1lOIF5XwIkflolt21hr
	 z3N/ZAN5FHDQg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E1D77C2BD09
	for <ddprobe@lists.linux.dev>; Fri, 12 Jul 2024 12:18:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172078670291.26228.2228631966919607784.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 35d9ea8d2cc1076fe45d4f69f012b9a52cd8eab1bd506d80904ec40208dc4b62
Date: Fri, 12 Jul 2024 12:18:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720786702
