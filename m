Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4404015A86B
	for <ddprobe@lists.linux.dev>; Sat, 17 May 2025 08:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747471194; cv=none; b=CtZFeuz689jmRhyeqiKF7QaMtGXY59N/tC2XyTCdWpZf9fsml+wb7v41uTV54TkTQDoo3QUv4qonvbqIWLJnHy10ujA2xJxp0aT0kw6zcrIj1Z4CDFc4he7lF4NSL9yxZyxjgrtRf59Az7Og2L2MLUZzCaLaDXrUEbdzyHaD8iA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747471194; c=relaxed/simple;
	bh=NSm10L1sXZyw6lNHst6Y9ia8629LTlqeeh5adQHgYX0=;
	h=To:Subject:From:Message-Id:Date; b=nmUPxrMtbeaDMhSalvxtfkdhg2tjUfPQCcENt7XeIoU88CuReE4Kt+oJwrdmWdJM0NBf0CwwT8AxR18XHv4hMbDgjZEbSjf+ChI/80SCvyD3HmAslvgna+e3ksaDQMC/uY8Yet1nU+NxZLIzREmWQu3qhGLZ47ptwjnWC/bXWEk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hjVBGeHP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hjVBGeHP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A76CAC4CEE3
	for <ddprobe@lists.linux.dev>; Sat, 17 May 2025 08:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747471193;
	bh=NSm10L1sXZyw6lNHst6Y9ia8629LTlqeeh5adQHgYX0=;
	h=To:Subject:From:Date:From;
	b=hjVBGeHPrvwxfqwGYNe1nmJg+90g59W15hu8ewpIAvntRfKNypqCeA/wGnxtzZwJq
	 cDcQG13bJKccsleiuLgBsxyM1RbgiQk3TFCrDF+rxBBZ0Hqfjk3WptCb/Q/nB9+M81
	 YiVi8fB76ypQFV99Z1R28B2fa5/qgWf9thElCLDtC2Tt7HEEYF8t7BkoKUS4RItwqx
	 yAtweYALeXYYpB58EDrJYmLgMs4eWCrePDEez5jEwDhgtkGvAm5oxSAWbI5u3Rn3UM
	 3R6ogo4Z0O6iL3YML/RbO7FWx/GEFjcEP9pwYRITQC7vHYdY3t7qkcBMxvYzJxm6ju
	 /gcLib7dsAm3g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94A9DC2D0CD
	for <ddprobe@lists.linux.dev>; Sat, 17 May 2025 08:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174747119357.18336.3372494693971508245.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 795fffc4341ca5338b9dd2249e5a36b2a8bf75da68591585d368614693b57f0c
Date: Sat, 17 May 2025 08:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747471193
