Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C62A2E739D
	for <ddprobe@lists.linux.dev>; Tue, 30 Jun 2026 23:28:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782862114; cv=none; b=WqdUlkzklezGMiS0BDzWvrsNfFEJo/ZPHgu1fRj+7JRAoGzSDkDlcR51/N7vg4kOdBnEniZ+VZ3wZiybXunYgZrKkT8ZjFFIxsTeFHcIIcNYrcUrPWEBtOWP6DuQew6/at+k6kQgnvMA23YFuw0AzjT2JuugUodqn+WwiLpWzUk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782862114; c=relaxed/simple;
	bh=6QrWbw5C9KpAYnIyBdnAT41/HM5s+PNUVVQZvkxtdQ8=;
	h=To:Subject:From:Message-Id:Date; b=RUFqeBlQPs7YtlymB8/Hoe85rK6lXWRAG9Zaxja8pbhUt/G2JrPQnVIIl3fgPd3Ne2rO9S7hj1717NVmRaGCe09oAV4PxUoreBaFqs7DXQzVDHTWKvON486udmonm/Hjhbz6Bhih5eGF9ntpXpeTs4r1pPR8NskWdb7xFZi5mTc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cfjH11OC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cfjH11OC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0DB3C2BCB9
	for <ddprobe@lists.linux.dev>; Tue, 30 Jun 2026 23:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782862113;
	bh=6QrWbw5C9KpAYnIyBdnAT41/HM5s+PNUVVQZvkxtdQ8=;
	h=To:Subject:From:Date:From;
	b=cfjH11OCNult46mNLy6csVoEogGzVfOsNll9VIJiWcw7KS9lQgCro3PwYu3xCEgsd
	 PMEDEcYwqp1gIf/OrTGSBQ6+yYP9EnkKeN17CyYMNGWnGBFp4GADjxruAjaNAtPuP3
	 uB/+6QL7tEldpHylyKQ/AbmBYS7qZ3hzkYW7CN9m99Fxkvs/wGOvnFhPZRUNt1GBJh
	 h3N4SdC7l5kGK3b3+dPZjnB/PEgsYLaOgRJB49ZjEp3hMZLpPIzHaLDmdO+HihhUW1
	 bOGaDRAbPw1VS3jsfViQKDQcDgh8D69c15tHrt5AEis7KgxoQRlSYyRj7g5u2qjiDV
	 YaW4MEMdpsZ7w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8986C43458
	for <ddprobe@lists.linux.dev>; Tue, 30 Jun 2026 23:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178286211368.25719.15764309007521934564.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: df1e51d666f757a6e688bd03e346e41156bafd4a7eb2a19917fd32ab58f2ad8b
Date: Tue, 30 Jun 2026 23:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782862113
