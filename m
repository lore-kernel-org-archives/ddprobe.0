Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1600027B50C
	for <ddprobe@lists.linux.dev>; Wed, 12 Nov 2025 18:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762970994; cv=none; b=TBvYqNGuIBOAllrSlOuKkEAJ79TxsP0KMSlSF/MEJMXiN8afjjiuykIO3gIzq119Y0WABOu5UsISsAkh3oD98+nmhWmpuqshulYoCvcLzU1boQ09dgBbJjDYHVSLGv6Jlf+T5cIkl0WkqO6S/n43cpvBbDcu8yuCzyp96cb1akw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762970994; c=relaxed/simple;
	bh=8EV5M2LLuBSwojPbg4XMpMlANVxuS3lHsLEPecjMHFI=;
	h=To:Subject:From:Message-Id:Date; b=l3t4m4nTfyByXMUZQLL5Y5tWy/gVvZS6t0fabaoVxN6gT2L01yg9YcfoK2/GDV4qlVMCzV93InyPCWSmH1u8NIwwWCIvyCCoVImBcFrI2YuNo5dZqxLNXTyWip1uwG5To/v/7Mf+4dugGIbfyGJTe8WcsLfDiWih9YaBYeqpgUY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=quQPLIqS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="quQPLIqS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E913C4CEF8
	for <ddprobe@lists.linux.dev>; Wed, 12 Nov 2025 18:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762970993;
	bh=8EV5M2LLuBSwojPbg4XMpMlANVxuS3lHsLEPecjMHFI=;
	h=To:Subject:From:Date:From;
	b=quQPLIqSCXLFbrdW1xv6JYeKJJcEebjFvhqvkZWBxA0f0Nfe+m2VYYAU8k1enaUHn
	 Mf4bHp7TpSz8bXn03PTyKaLPZVRKrmmiv9ni+hwBWaRvoOOPGQ7F2wkCQrRbmX9cND
	 GI8nwdPfCFdFXCJT87E9lF5JO4PfaoEFFX6YigjaIlcOs+jIYZXgHUaqUOn3TjUqMs
	 VuGsOLYSEAqPQP3taCUyLQ1Qa6PNBb+1T65alQXqepS7QqQHyip6PYsnc5LD602jpk
	 tsJqCP6S/w8joz7TzxJHQrncVPXrPp8Qc7QgNvH9rwhToVndD1WZh5Oe6UXXfv+5mw
	 E0hkw1HJUv4dA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90356CD343C
	for <ddprobe@lists.linux.dev>; Wed, 12 Nov 2025 18:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176297099358.14024.11285034931673856484.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b7df539c4a22ede30cdefacb0e811e794b79f1ce1fd6b6476d997f7ad72d912f
Date: Wed, 12 Nov 2025 18:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762970993
