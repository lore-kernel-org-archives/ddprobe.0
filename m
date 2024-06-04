Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7FE2213D607
	for <ddprobe@lists.linux.dev>; Tue,  4 Jun 2024 16:46:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717519583; cv=none; b=i+znPtqhWc54r73G4ibJv6uwVm2kjdNwUbhXJQ6HjjEZc+vfGEdQ5uCVMibqvxKqXcPHeBlF5IsPvjZR/kNqcJnFLeUxDmoglIUST/28Rpqmwy+Hl5pDjCukxGXwd27hzVE2faMiuNK0EcSptCXLKktWj+R2TwXDNTLGWY75xOw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717519583; c=relaxed/simple;
	bh=z977o9lnNmxUDPV2GljiuFxnJsCEgw8sv9xFa4x7cCE=;
	h=To:Subject:From:Message-Id:Date; b=P5YjAiMk94wU5dsupXYkYYXaK8tDinEupNx4/QlQfrGcPrhV3mkFkVXptrgyXEonQvAK2Tdmo6eQUpyACUIBygYmWhEWBMHsN3nz1rahSDpEfcIws4HEVXa79YiPved/U+BAxA7kjxGe2WYKrptAcCi6tld1oH3BwMFbTSop9EM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=r2a7lWWp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="r2a7lWWp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 1D23EC32786
	for <ddprobe@lists.linux.dev>; Tue,  4 Jun 2024 16:46:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717519583;
	bh=z977o9lnNmxUDPV2GljiuFxnJsCEgw8sv9xFa4x7cCE=;
	h=To:Subject:From:Date:From;
	b=r2a7lWWpRZ6AgJFOjErVsndgOaRYuUIbbp03FkkaSWD54RRg5BE8t/9gz4BpE28Ae
	 KWDd8GY6sZsLAq1oO3Wcfm0PQG+jEiWzNnXyylYAjNr8uJYnN7O357edULUeoGHRrc
	 Wz4IQ+GqILVJd3ZPChD8Kte4J/vilEVknL42Txmj2Du4oGsrjvRTqYV8z6cVm2FenR
	 XPxpkfYaemPLVpL7ET3fryW9c2GywDEMfOXgtjD1kZliFFZGs+OgTSesIUJAfsJlLR
	 uJ5aMGO4dCo8STug/ExyC67EQIZAZo06zjcsbMW2o0yA1GT++oGiVvNG+TnNET8rwz
	 RbJs5ERhCugzg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E36A8C25B78
	for <ddprobe@lists.linux.dev>; Tue,  4 Jun 2024 16:46:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171751958292.29851.8281273568715534580.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3b717041497514425fec8cd3cc60ddf780ab9f7e97ea8bc0512fbd44d4be4696
Date: Tue, 04 Jun 2024 16:46:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717519582
