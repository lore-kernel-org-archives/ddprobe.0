Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2387E3C39
	for <ddprobe@lists.linux.dev>; Wed,  6 Nov 2024 07:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730879154; cv=none; b=CN+B8AlEq2UkLTN/DpSv0hiaIiSftluQK+isSgWHsJUhkKSgqBiBbSXLYf+OnrKY20jcp4HTXEXkmgZv4/tfJwPEi824IJ/JbWX6fYPH5BaR2y4c95DzVRbAsrP+elK2tc+0Pz+B7PS7/YAyOF+AD9vZ9BTllj0K3Bg+KxGxwsI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730879154; c=relaxed/simple;
	bh=FHcFbhd/2R4HHKTWp3c4+gBUKA5swWqX5GuXh37Qfyw=;
	h=To:Subject:From:Message-Id:Date; b=PVkL2PTJIHmCl+ll+j4ZRyWqplxYwOfPS+20hYDiGmFPpEwO/R8oXUij4bWQCozNDxZ7e1LdJ11V5vDzz00mHQMkZW1oQ0S/XMrqaufnhl4GhJdIF3h6NMUune4j/vt9qPkCX6oUPWlIviWw+gJf8oa8i0it70W1t/103ikRfeA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=h+joMoyW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="h+joMoyW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A42E5C4CECD
	for <ddprobe@lists.linux.dev>; Wed,  6 Nov 2024 07:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730879153;
	bh=FHcFbhd/2R4HHKTWp3c4+gBUKA5swWqX5GuXh37Qfyw=;
	h=To:Subject:From:Date:From;
	b=h+joMoyWR7Vbr/ymQMv9vCO8BUd5N6D/3kzREYhYCFmtJsEM0aFvxbekIGHT3HGP4
	 07uyTWNQa7kDWRzju1OVVpa2HjDYKZqsW87FIqrK6bdpPTaateLFdvWtN4ZQ+ygs10
	 0aCkMup5Xx73CcibZsCaZY9OCQ++WuLW3orH1l42w3AscCvM4m6+tZsbNHLL27Uk1D
	 jE7lUK3vhdGy7ckIbuJGZlCYTYIx0bDutoQG+azEHh78VrWKRSAtd29TMiQv6vtaFk
	 feD7s4/42EZblRMXxWBluRJIH2mHICO5AXzMFPy2W5fJwXDCC0Wbd+jHiV5Y3jNZPA
	 8htBa2TFxXPWg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 917AAD29FB1
	for <ddprobe@lists.linux.dev>; Wed,  6 Nov 2024 07:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173087915358.11123.7688799789846844028.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 40fa502bc22261da0b38bcaa7df3c69510cf8542c54297578f27440b5c709edf
Date: Wed, 06 Nov 2024 07:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1730879153
