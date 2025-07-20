Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26A1BBA27
	for <ddprobe@lists.linux.dev>; Sun, 20 Jul 2025 16:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753030794; cv=none; b=Qf4aJ08IbiRLSbnW057mTL1WE39vUmFC1OCI0a0/FSYO2SEKDfxSrV+tXPhrDwktnLj8jAAOVnhOIW9J2NMPQeFiQO/POzyh9DyB1aJcU+fQDIEKQj1QXYWwLfl53sbQ/bn2eCySHS1mUrwoJCCwwZe3porJCS5d9J9uAtgRc/I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753030794; c=relaxed/simple;
	bh=4TI/TVUMsOJvhhxVB+7Yh5d5U4316i3Mjme4jaK5ees=;
	h=To:Subject:From:Message-Id:Date; b=JJNdJlMMGMSY2YCiutjHZUFTXfamuq8Z+co2m0hnxu4+FwI87N+o06mw+vffSixSCvVzIDNrWsnsuDSVwfkrWJHTFUDwFWWOQUiRcV8gD00IqitH/Bsbimr18xbQOKjm8qFu5rmJ6mynQVXkH+6lambZIxscey3TQlLagHiezTE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=V8RQj/8R; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="V8RQj/8R"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6910C4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 20 Jul 2025 16:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753030793;
	bh=4TI/TVUMsOJvhhxVB+7Yh5d5U4316i3Mjme4jaK5ees=;
	h=To:Subject:From:Date:From;
	b=V8RQj/8Rd05OlEmSoOKntguN3HRnfRyrj53jIjsqLg1sntXdoFDn7G2da3jyY+gAp
	 DrjIj2ZkeWJnv2uCA5cGEUH36tLJxH2au3Hv/ZVKJ89ejEQ0XOB8M1fB0mIoha8WJB
	 FINi24lfjtQsXhOWZFENqoL7nMW5SYEa/3cyMjHsslH47VrtMaJNJU2OMjs/598Bt7
	 jGsoA/sd3Yj/PLrNVPVpYaKJ55R7b8h3S3+700grgCQ5uZk8KzlZ7Nf2rfoW5hZYG7
	 fhfV5G21F0H9KvJRsq9GJHO57BxTiVfjuQ1QU2jlbIyrsVRGEnqJGXAFdzR/NLijRF
	 i8Oi11mwnQCcA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 965BEC83F22
	for <ddprobe@lists.linux.dev>; Sun, 20 Jul 2025 16:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175303079358.20008.15221109419338885424.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e123dd0fc9f6c7e878d402f883d5102efb47ce190bf418f7d1e052cf7f761055
Date: Sun, 20 Jul 2025 16:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753030793
