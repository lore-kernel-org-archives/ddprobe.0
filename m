Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20D3E1E832A
	for <ddprobe@lists.linux.dev>; Sat,  3 Jan 2026 15:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767454434; cv=none; b=ipInf+yvhJTaHQ5XWlYRWvJwj1JDblDnZ/yqvlvGs+pWVc8LoDp00YuAC7KhCgi35GHQfoO2TVjXeyyNwTtWXHLghdPD/JBj9+TJvJC90MJc2xGJo4TwypYkYTWN2Ici7Rsfcqx48kNL0RN3l5xs7DrTdoREO37UQ5uxeoqEC0s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767454434; c=relaxed/simple;
	bh=1lyEGcmif7KKuWomNXzRGNJXHZnLnGqBX8hcYX6s0vo=;
	h=To:Subject:From:Message-Id:Date; b=BZ4CkDMs4bW1lvZGnZtyzHMzx3y4rRraWOgA3LAJgF++x5O0SwqKLJoFYqYJXMSYrH1N0gpzgdqVKUNjQGToW9HFZhzWkyyxRZFQDRMrFfsjV/lUi+UkK3ZpsQK4tVoW2aEH3NJ57O/iIvQ4Jo44Zdc6/yvo2xZBlNfkDSfxeIk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=B0XJ1Dgf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="B0XJ1Dgf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4CC7C113D0
	for <ddprobe@lists.linux.dev>; Sat,  3 Jan 2026 15:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767454433;
	bh=1lyEGcmif7KKuWomNXzRGNJXHZnLnGqBX8hcYX6s0vo=;
	h=To:Subject:From:Date:From;
	b=B0XJ1DgfxEEjLMA0e+VY7lKDF83k96X8yaXTvebNDvNvpNLIbRIKTWwSY3rBUSwZh
	 Xv5kHr2/jf6ce87ePUK8xxawSB6D8tNg+nWbI/JKPetMveXV2NpTCx0aDMuryWkjIC
	 UjLQ10OkuNvNAvVjw/Aerd7V/ek//Uhu/IFlBntERUpvU/h74q8aFZ0ORoBMyB94Us
	 EmT/K7qJo9HfIXFRXQgp5yypeywO0QMSRWY7jaK3zL9LY74pHcFVgIjZTqaEKjSwJd
	 4Dg/+jXvl1BASjawowi1/G78nKZmifKdji29EmEp/oFMwTz6Tr7XxpJ6h9xoJ0+hav
	 gjziEpfoundcA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92526FC617E
	for <ddprobe@lists.linux.dev>; Sat,  3 Jan 2026 15:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176745443359.8584.2733861725034482209.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 064bcaf943d2badfd202f2646be49a6f5540079fb930489af3ed93ae933a5a47
Date: Sat, 03 Jan 2026 15:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767454433
