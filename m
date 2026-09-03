Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D28F43C7DB
	for <ddprobe@lists.linux.dev>; Thu,  3 Sep 2026 10:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788432634; cv=none; b=UGjl+20RnSRbhK14w1thERq7RqS4OpXHrViJ6U4OwTyUAKLLhvZn06de75/Xv8NqvvWkFDzSF2jFAOtJf2rJbx9Jl/yx610nMcxdj0I5M9Cx/k8HXHW+4n48RdKR7QumqQ9SKW5iHRswX/iGBI42Uy/s16O6U/ziIl2fcPj3QEQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788432634; c=relaxed/simple;
	bh=IlKKSWsQr+qIiAm4HOCXjLQRdB/k2I4l4dQxFOFiDe4=;
	h=To:Subject:From:Message-Id:Date; b=EK6nF5XZMDIzEBf2udxXfZNiLDU/fUst7csxtiH4SyQFdqUeoGGHEYRKxnsGjVXXppE0+fUrC4vGmLxluAT4gihdp86uY5Vbvcil+9rqFHzns5+2b10LQcjCz21Q13Fi5vjZr5oZQMSBzb7vibubLCp4Uk+BTtLzGdvOcVWL92Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nIX4Kb0p; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nIX4Kb0p"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDF7CC2BCB8
	for <ddprobe@lists.linux.dev>; Thu,  3 Sep 2026 10:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788432633;
	bh=IlKKSWsQr+qIiAm4HOCXjLQRdB/k2I4l4dQxFOFiDe4=;
	h=To:Subject:From:Date:From;
	b=nIX4Kb0paJH8phKIxoweJrdScNvDCHroJN1/jPLadEGi31WewX41+5N6gm9nlqdHX
	 0bLVM7EzPbtLE4flJjOkABAuvkSOtfk3E5FYv2FxAs+hb7UmETRBz6WFVcvK2n87IO
	 shEvbtS5aCTc9cQu1N8OF+/Fz1ldyjT2/iBHvvzCjldykxQaQsKHXG8Rk1c9hEMKTN
	 8EBor8N9aDytYRfZMg4IGpJm5gIlPB4YgazoZ5WTR/88YE5HVsAskiPkjwKl5QWlgY
	 Tv5zexE5ZxyZjOD8IsCn7a0pBF93Q6DVQy1bkEmMQKF9VxM9aVdflzOrE3jEheZDnQ
	 v3lCK4faQJUhQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9F75C624D7
	for <ddprobe@lists.linux.dev>; Thu,  3 Sep 2026 10:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178843263368.25763.2308304730228394083.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bd71f8740ddfe0584ef4efa46f0b002f802be0ba81f2ef069febd2a9b18254b8
Date: Thu, 03 Sep 2026 10:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788432633
