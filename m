Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4DC051A23B7
	for <ddprobe@lists.linux.dev>; Mon,  2 Jun 2025 23:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748905794; cv=none; b=VIIYkt644o0nwbzO32VYHYlNta2Pk4EOWjbmsGJkYeZPXAYb5QBhD/YprZXoDnYIPRD/FZARuPAY9WKNFwnwh2C4/rbSSE8k6ClOeDzkeuEDsMM5MPys4g3zqqCtGgKZTlfpwdYPNRfw+jBLpXK8yz4Tk7DgRNVHoSgAwoeB9qE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748905794; c=relaxed/simple;
	bh=Thg0v6uUGw+txkItFraXoLtS9zbtKRaKfBA3G4qmyoE=;
	h=To:Subject:From:Message-Id:Date; b=mEYB3csPPFsQskpRIk7UCm3cRrR5SdWr2A7oxdOyhc/UctFssfS9+Fo6ORlWLHu4p9Rr4nIaeYTpRHkMwb5R/zQ6m0fkjhjFbTGjrmUkJs+C1U2d77MpcB1iSmsPp3GweAkI3DF1FFNKJMNHVLkAm4PQ6inJoFTVDW4AI3BTOZU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lNw5/q47; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lNw5/q47"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9671C4CEEB
	for <ddprobe@lists.linux.dev>; Mon,  2 Jun 2025 23:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748905793;
	bh=Thg0v6uUGw+txkItFraXoLtS9zbtKRaKfBA3G4qmyoE=;
	h=To:Subject:From:Date:From;
	b=lNw5/q47EyT6brwoUuAkWhNBaz7V4mtqTOwBsUHb2Q4NId6z4N0+RabtZDTxABfEz
	 Vzy0QvQkjyIa78WNvv/05Q5Zu7Xi423BcytPemt/YnUChEMr32+zTj+yMGeK/+tIW4
	 xf1QLPnvNP+WLUUlZhSv3UsB0OhdrPutJ4IgqLKO8rqhBN0d6BQiGGD59d7WsARABO
	 +FhPqqzn+h3dTRniEJMrga13rtKKHt2vfip1B3XRj/jAhriE6RQzPpEFNRdP+AKuvG
	 WKMOoIoVp4yNr/o21PPujkIzSTB/cguZCQTnvytL/TBXRtPHrCH7MRa9mCZlsBQdlo
	 2p0oNy4Jex/DA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95BFDC5B549
	for <ddprobe@lists.linux.dev>; Mon,  2 Jun 2025 23:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174890579357.1679.15660128158420314026.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 34d5d29b6549d3a516dcba5cd2dc75effe9a0624a8bbb3da8b94b2a45ce2c2f5
Date: Mon, 02 Jun 2025 23:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748905793
