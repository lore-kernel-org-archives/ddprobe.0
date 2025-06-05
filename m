Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32F7554723
	for <ddprobe@lists.linux.dev>; Thu,  5 Jun 2025 04:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749096594; cv=none; b=CrjvV6rVcS/csMsT+rJza+5EWc8gU35FSxvyh8mGlWso/KB19HPQnJkkoxa6Le/n6H/UDno30DCHeLUQA+a7I0TmGYMYr1ATrvMK6lX2xY6jVXJGK8yTNfIYvq9IlxHs5KQ06bBxNWZK2z8jWFsTe8mE9q3yU0wgbBEIbCUOqNw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749096594; c=relaxed/simple;
	bh=JPUDZ+RWanmfSclFHcAGLU0SGA+Nj/D+iRBH/SkfFDY=;
	h=To:Subject:From:Message-Id:Date; b=BmnEk9WFrZfVpmTRJJiw4VzYINrVheEg1itIDw7C4USyfwuEbyKyWAn5WHV1VdK/LSa2q3Jete6gwJmH7YBIenRAqsK+TmDJ2fsfNL5mL6hoXIrhq0FZe5QF8UwpX506E2hsi4+vLEdFzFS9lTEfvpZhjIl2N3kIeZI/8UdykSI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nACw3PWn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nACw3PWn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4778C4CEE7
	for <ddprobe@lists.linux.dev>; Thu,  5 Jun 2025 04:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749096593;
	bh=JPUDZ+RWanmfSclFHcAGLU0SGA+Nj/D+iRBH/SkfFDY=;
	h=To:Subject:From:Date:From;
	b=nACw3PWnXRclOgpxlMibsTfTaJOgiPV9lhCXIBfLp4LgBNhZdAWdXG8oKcGLnvWRK
	 +oq3HTXN8WfJvu9zHkXO0Hhw+Mdxn2vDNqk0JDufJtsptg37b/OTvFI22M4Sc0UTSn
	 g6jJ7CcILuVJ2dBGFqPEtt7/Htau1BMSu15DRCqAMVKF5DZC8EdsV0gmdxMNhhlNes
	 V6Eza1yLHEY382msbydc4Mt+SMq12SE1wO+TrFTTXwi1uIVhxKm3qS/nkAjpdmn0sW
	 TX1UHXeJLAbmviCJNcdcnB20qXphGyf7haiS2ze3us4J/oMxRa6ST+bbNBnE/7vKZF
	 KOGLrnsgxHY0g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90597C5AE59
	for <ddprobe@lists.linux.dev>; Thu,  5 Jun 2025 04:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174909659358.14761.17494423085949859346.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0bbcf5a4a289cff684b4baf680533dfa3f42078356e8eddfd869c4e7a698c0f5
Date: Thu, 05 Jun 2025 04:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749096593
