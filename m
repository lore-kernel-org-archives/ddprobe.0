Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4364C42D75F
	for <ddprobe@lists.linux.dev>; Fri, 11 Sep 2026 21:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789160434; cv=none; b=Nr3KL2+g9zWp+sXewC1TT0pR12Cru6oPa0l32X4OJXfGSkdEF5Z3Bs3+p4tAbkADEK9EoIefUrrIo9WNBTEbnpL2vCjPKq7HGnIua5gDvWKG/wsdpwXgRv1HRziWTkF7rpPxXA/ezVawSgltdxE8KRxCtDcRp1poBp1PQCk4riE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789160434; c=relaxed/simple;
	bh=RLFnb9Cn9qJuT4qbCWX6K8tVncPHo4v8TIqFFqA1EcI=;
	h=To:Subject:From:Message-Id:Date; b=RQNBDVc5vOMNwq4HW3eAHl7wIQ1Rd2XGpdED9jSr343/jkCAAhNqceaNSRrRRYOKeOXPMtOSEG93I9dO+whBOTCFKijM5eTTBaOH21S08srqJpfSOGP60xq7DY0uHvv67osEFQ4NTOPltq4a99+0YXkQcOProxhiIMXEePLfvxA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Bq6uam08; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Bq6uam08"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E4D54C2BCB8
	for <ddprobe@lists.linux.dev>; Fri, 11 Sep 2026 21:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789160433;
	bh=RLFnb9Cn9qJuT4qbCWX6K8tVncPHo4v8TIqFFqA1EcI=;
	h=To:Subject:From:Date:From;
	b=Bq6uam08Te6mLC8wVVXmt/to5q0bjm1ArSJzKYJYPsS5hXCxFqvXAfBj149dv92GK
	 mfEqUq4OgtFfeTBX4koQicnWg6lOmlc8U9QoTwinUqzgyjNQYYTuulW7ra7lOCv0Wj
	 aH7I8rP9KJc+Wq1Qu4aDuo2M2al3uGVAubw4VKeGsuf+EMvwB+eMPdUtuevHU8Rvv6
	 pHaV6rPjo9xVuEBR6Xv9h56JeVPviZcnaS+9jCR98Il/EFZHETJOpq0kGnItaPgZv+
	 /VzrzYbjLGOaOmZSrCvqyKxUXOXo3+d2pgXk2/u4tuTRTGBo7irJLhAo0yx2rVAVNq
	 jQHMtRXaYQfUA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE13FC88E4D
	for <ddprobe@lists.linux.dev>; Fri, 11 Sep 2026 21:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178916043376.16488.9289753225740730567.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dfcb0652ae792e18dd41e4698c51d7b0a3c39841289163162bc91907ce539d3d
Date: Fri, 11 Sep 2026 21:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789160433
