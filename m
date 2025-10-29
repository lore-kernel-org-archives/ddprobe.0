Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 108BD293C42
	for <ddprobe@lists.linux.dev>; Wed, 29 Oct 2025 07:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761723594; cv=none; b=cgvsy0qtNbUjAvnRMFy+Wpp/s1XBaItzgqtt/tvXtRp5NK0R3UnwcL+rRprF4BqmZ5G4zh8e6Z1OqBHGMrwX11Pe9svM2gVvSEcdzYIdXuK4XrdWaZbY50phoHrxpRfIUl+7z7NZIGV21y2TcydF9x3PUk7w7uOfzBGNDghccJs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761723594; c=relaxed/simple;
	bh=nMWPh6LXr1jCxHqh4Ft4HVgmunFMN14XaCrNWoMte7M=;
	h=To:Subject:From:Message-Id:Date; b=RcGDEqId2VA6/MZTyB3RH7ZGfd4GbVIAFSbBZrpKhOmxTTB6nwa5jJzMFvOMh934TN7ArntE1cI/bCz/ukXCHN/jRMT1uuGDNgxjFAzq2PleK91PFmvTJnqUp72SoJWhd4zHFUSoNNZ1mGRM/I+W92Np0u9S3CilCUuunJhV5lk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ncqchL2j; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ncqchL2j"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EC88C4CEFB
	for <ddprobe@lists.linux.dev>; Wed, 29 Oct 2025 07:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761723593;
	bh=nMWPh6LXr1jCxHqh4Ft4HVgmunFMN14XaCrNWoMte7M=;
	h=To:Subject:From:Date:From;
	b=ncqchL2jmlXrXaLozRp8US8B8KxnuRZkCHi8Y+BxigbC4Ec9iOjaMba8eirR9X5y2
	 dDkuXxoQmQlsB247LsKc9dJ/BJG0gcfi7NM5YUULnpiXwqH7SpmdjUdWgq2S7AtoK9
	 KHzhPRqOEymJSJgtj++RhNmRERo4OA7UaVk1g1BI9LSB3nSg6/2BPI1kz+Je/eMQwX
	 XezvsDPp9jiv/mONWtelgyzjy/R+cnp9s7baz+MxDW7NEuCPRUccAQa33lB8FAJW19
	 P5z7qBVTFMKBkUaATjVoY/32qPKM7U4MRXhHaANrYrc4C5slRqunKp+dhSyW+uCOAv
	 YlAc7Qht87F6g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90489CCD1BF
	for <ddprobe@lists.linux.dev>; Wed, 29 Oct 2025 07:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176172359358.25995.17536582168403218680.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 52208e0fc467276dfb19b34a7c06a589b3d67d64dbec145026fe6da1d9351104
Date: Wed, 29 Oct 2025 07:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761723593
