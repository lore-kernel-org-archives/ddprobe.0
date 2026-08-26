Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 834C426F2A0
	for <ddprobe@lists.linux.dev>; Wed, 26 Aug 2026 05:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787722234; cv=none; b=mBRFoV/21GAYjgLOenup13RBi1rmz2ElMLLTVyOIVFx+oCwD3WbAJYb9etakiWLUrYkK3Y4gNpB0nfuFrXPVBC8mvmrhpbWSFW95AZhJR6ext3vCcrkZx2/NnYowzFq9sYsHOAcJIKGTSQWUuQSScqqQ43Y/IWiSx/wgkestOSw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787722234; c=relaxed/simple;
	bh=SkUwXRqX0R3A6pOgwMOh4SabQslj5USA2CjWLSLi6rQ=;
	h=To:Subject:From:Message-Id:Date; b=I6gn0gZTgSTs6CJDCbW3cprGvvoxJuNc+X5z+AAcasue5TXY760xROxP5dSOacj2YkTQyN33Z28Y5dNYw2KE0M1vDoFVgo0iF1ztuedLHhlNdp+cVXY9UZO8xohvtknsXxNOAdwsEexhw4dBQjGLcZeZTuQCCXUpNuaJ5G1ugYI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lqyBCsny; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lqyBCsny"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D68C1C2BCF4
	for <ddprobe@lists.linux.dev>; Wed, 26 Aug 2026 05:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787722233;
	bh=SkUwXRqX0R3A6pOgwMOh4SabQslj5USA2CjWLSLi6rQ=;
	h=To:Subject:From:Date:From;
	b=lqyBCsnyFxbDUs1z554sQrp4hY2+vkzegU1+rqrjW7nmpuaGjG0JQApgrWVcP5oyv
	 2WRDEJHF7ygznjej4HMKIMjgIxzLvWeBSW75nfzpyv2FvBKbKS/vXOVH+5oNgyaOxF
	 docDVR/EmECWdJjPO0+lSB5SAt5jyKKt7gYpkqHPMvyDqGLBbmAgIRcpp25pwvErKt
	 GXTTn5zJtSDUQ/xD+8nmCQRDrn+Vy5wDFCnw26wGOpToUEMW7S2VagzYYZdpWNcEMz
	 j4nLNi710Sjjy5EzIyj6vYkUINpjeNtN9kl9Q96ylj+UXQAjexM6/WqRVYVQtFXhF1
	 25Z3btxAJYgSA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AADB3C5DF97
	for <ddprobe@lists.linux.dev>; Wed, 26 Aug 2026 05:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178772223369.2961.17984173795218324077.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 461c4062c7f3e7fe406925d6cdb3b42dca7e78524499e061a213b84ce210b2bf
Date: Wed, 26 Aug 2026 05:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787722233
