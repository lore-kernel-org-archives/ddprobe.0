Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F51A39AC9
	for <ddprobe@lists.linux.dev>; Mon, 27 May 2024 06:44:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716792263; cv=none; b=nleH7T5qq35eZABB28peE/4Z++AmQKwACvjf8d0HKgpqFzlVHfNP9Kx+pSWMCOHX8ne39sYOgc5Twlph4JgWjZ7TPUMc34yoPnHGUfaM9UFj3w90cbIH9Wh9zVdjJhS6taqOkOuljZmTNm22UCnBF0OZ0h3sdM+KEjBaCiLXI3A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716792263; c=relaxed/simple;
	bh=asl+Ndtbe7yE8QE1S1agzppRQR9Zl5dN4+gIiwOSiss=;
	h=To:Subject:From:Message-Id:Date; b=X2FopGPurGm4fTLzo8B6PUAU66Op44R/pNRJu3mI9cgghiByZz3AXsBtlw+gvqTF0RMg71846HrpZPd4X8jcnwkLno1k4pLiddwjRXu3/V3dZCHYdmh8jgFwfvp0HxarrFhXyG6IjGgvDYvlokHcLN8QadG0lyc2OmbEZAOf+/I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dDTM91g4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dDTM91g4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D78F6C2BBFC
	for <ddprobe@lists.linux.dev>; Mon, 27 May 2024 06:44:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716792262;
	bh=asl+Ndtbe7yE8QE1S1agzppRQR9Zl5dN4+gIiwOSiss=;
	h=To:Subject:From:Date:From;
	b=dDTM91g4O5e5dA8gMy7HdHxB6laTucvaLVpyHIc8vLyP4PaF4KFElPMLolO6L3ZCm
	 VPuW/SlEcsw5soeJ1QVtHuL/ZQEPzEE8gSQSnfTlSP/Y19aSQNKL4wAFy/6grhqidi
	 P5ieZSMPunSQQ3EuB1UV4JeQ+RUzjGYE0N0MwVyBDpbTmZme2pvC/A0lyTnPFYXdd6
	 pKUHDBF1C0EuU1pftXTwW7lJ2khzSyOWlLECqohCe6+Hcj2SA32pfwqGeAjHxqkwek
	 10BC52yTkB+8aJyvHTBXn7QGqxVcUbnzfXByBMnckWLMNxq4XW5QfETmAvnJBmPCeR
	 l78ijMWuTMhYQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C4068C25B74
	for <ddprobe@lists.linux.dev>; Mon, 27 May 2024 06:44:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171679226279.19774.14977737100049575188.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d7b5c15fdcd8ace9993d1615229f45c4c2dc7e4d2333ae3ada99270696c51e07
Date: Mon, 27 May 2024 06:44:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716792262
