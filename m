Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C6C02EEE97
	for <ddprobe@lists.linux.dev>; Fri,  3 Jul 2026 23:58:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783123114; cv=none; b=tKOOjEjXPMz7lQi+v/WLgAR6Uff++9Aod3bAcJnVdPD23UwvsqA+11gPKo9KWlK5AcpA7qDtmt+gY7kuMtMldXde+gd07aVEyL7IpfwOAmkGzR+Yvye9aE+NYdAq+GKevZQd6q4s3FcmH57qO1ZdxU+3vReVjXMi3RW8DZHF4BA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783123114; c=relaxed/simple;
	bh=uqFGFz5xgHslrFEghT4ampy7gvQ05QVTqHr827JkofU=;
	h=To:Subject:From:Message-Id:Date; b=aGEz6GWXACSjn86XAVsIv39fHHQOABefxM6nqwbAX4ntbz/aau0TXA4HxSEJsapmWPM8bea5CzzteWwniXyJkrdBuoAAtgyhhifmfYgnoQNnbiH7FCY0t2ZX4ltXBYrIDiRgNofj00QbA3/bhkl6d9jbBcaI0pMcrzbwwFcOw48=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MKK2m3cG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MKK2m3cG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE3C6C2BCB8
	for <ddprobe@lists.linux.dev>; Fri,  3 Jul 2026 23:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783123113;
	bh=uqFGFz5xgHslrFEghT4ampy7gvQ05QVTqHr827JkofU=;
	h=To:Subject:From:Date:From;
	b=MKK2m3cG8qPywUFe1nrt28XV5jz4rFuTGHK8bX/GK84+9CcO8wYskP8SUS+ZJP5dO
	 BlI4BmMSvoXAKLywqt2HLT0cL26rtrZDjvwbDxlxHzTU896P+TYRWxO6Cmcb8CnspK
	 lCxeISG/uW3hk4ytoFbC+Xe/GT6b+xDCyHxo1HtjWGGUCs4xx5OtF79r25E2CylYv8
	 rbqJRdrF+2uHo7ijtZxSwUECZPg0WR6AK3rOV+rEmxc2w7OKQthyzD0Zh4Lb5RD6tw
	 pscfyNLkZD/NLCaV316sYsRfCktgz1LNcMKsC0X3e/ZASSOIc4BLMeyTHfZWLtHjLg
	 6Bpl87sND2n7A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB45DC43458
	for <ddprobe@lists.linux.dev>; Fri,  3 Jul 2026 23:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178312311368.26806.6166854142150879816.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aef8aa6780dfed2480530afcd860f3ed13860c32d6c9fab6d1cbb42488ee4d1e
Date: Fri, 03 Jul 2026 23:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783123113
