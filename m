Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18F5326AC3
	for <ddprobe@lists.linux.dev>; Mon,  1 Dec 2025 01:42:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764553374; cv=none; b=XqBd89uGnbxLnXZn98k4rOkjSCBncrgJ2F9gqlty2kIGMb7nBjwAX6mLhrq4sk1GO3uNz5A9GTEiNc5rKBdXdTdP2UVGlNWpbmNfE2HFXlM9/PhdMvSGMiG13OVK8zl4q+kd0i+lYFHBoANbJDZDZPepkrJemBkGy+a77qPgi2A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764553374; c=relaxed/simple;
	bh=JWfYDNWWp77NcsIv7QWP6xrRgrarv07TMvSJQh361Ks=;
	h=To:Subject:From:Message-Id:Date; b=GitRH3FwSzqC5PfPxig+KERMO9K94pHnweCVE0KA3zzJ8mioq3v2qZUqk3wl33XwogmTLuPOOkDwO49fouE8G4VLV8T7w6+WsC4OmHD+oQcn3nvc5Vt9TKzCV1upsOg+RsNjN0Rzeoue4TKivneCMvk0jG08TXd7kEPUud4GP70=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NnralQa6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NnralQa6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3743C16AAE
	for <ddprobe@lists.linux.dev>; Mon,  1 Dec 2025 01:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764553373;
	bh=JWfYDNWWp77NcsIv7QWP6xrRgrarv07TMvSJQh361Ks=;
	h=To:Subject:From:Date:From;
	b=NnralQa6lsFfqQtnjDP/rYCdCQMJL73A/Xhzp6KfYgNj4XSDb37kIM1QF5Z30GXso
	 poBpsM17F6KdZpsG2M09Q2mK/rv8c89xrsVILelmG+iZMhJIMLYTGa60hbIFB5YQS0
	 TgBlSqJE1ePDaQSDrOipqEHkGA16cwn5bdlL2GDa4sSh84gv5fe5j0mdEvjQff7212
	 zTTzyI9exFlpSEB851XV5dsglaauGPUx7p0HFq8F5yDPWrPSBAFE4nR6bYK5i8aKml
	 wjIs0/wEtWeqcigCts9M36lCwG7n9a9a3T8iAOYJm8UXOHmPTE/mfUw1U0CxrCP+Qx
	 iH7KcKnUsUWgw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91CA8CFD376
	for <ddprobe@lists.linux.dev>; Mon,  1 Dec 2025 01:42:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176455337358.5884.1960661130688327454.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 257c798f7410d3d9a28939092794b7457d09d37f4236d44959da34f8ed6b5c09
Date: Mon, 01 Dec 2025 01:42:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764553373
