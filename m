Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 264341CE6FA
	for <ddprobe@lists.linux.dev>; Tue, 27 Aug 2024 16:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724777154; cv=none; b=OvP8e+oFfhCOymz/MFHArWyUU7bE+106QqsMba4vxeuzYpSxt2R7Jk+d4DLLuqKa+jvEXli2WTFLnSqtG/LbJ/b45Lou8xlRxmWqOOsc46iYfXIGi+2Xf2ExBLZgcQNbgfoUS66r1xpCyL9FcGAnRFp2mE4zh34NwBtEvQ7vtks=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724777154; c=relaxed/simple;
	bh=1T43VkHfy8s8q3l0bwoAwg49s0PUrMACW5czAHov2/U=;
	h=To:Subject:From:Message-Id:Date; b=bXLfbgpuMXl43dL0ROo2dWzC7TfVxoVFhGsevhI4lRZQ8mjRdqZG6iPvNBbOft72rXnx8rXFWBlGKadp7h5dVjIFIkYx3QOLwMCizpr6fqc384MpKUfoTBemy+09wJJxEfCj2huSeSRkne0nhPCAc5tXG79usTDom6g0K7pIfq8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bEguBRSq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bEguBRSq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3ED1C4AF14
	for <ddprobe@lists.linux.dev>; Tue, 27 Aug 2024 16:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724777153;
	bh=1T43VkHfy8s8q3l0bwoAwg49s0PUrMACW5czAHov2/U=;
	h=To:Subject:From:Date:From;
	b=bEguBRSqSCGcGDl9zg2VjRQs1I1xQFEnzLAcA0FYoPK/1Uj+x+SPlg5WyrDHH9hE/
	 akiIZgL+v/40rZNTMLSA+XcFeQLNxOC63D9euLOcRojGL5Ye/4O2lsMqUA9l/3R2FX
	 /WDSqJCCyzZq8GXj9k+/97ZTVVXgjRXOPJCfVwFRat8AikxGGi/pL9puekFtFLAPbq
	 C2vSSHU1XTHpwLzxVm0kOj461+ZqJaF8+KQ0wCxKHXLVkceKRe56Y+LNTxuWMv2ct4
	 0gWtgRQyXbxPJKFbSYJcIT8NbjTqVHnGQBeQ4h/djM2HScXHJTKjFZOiYkBhfo9ZKl
	 2WCCDocmyvIdg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93F86C5472F
	for <ddprobe@lists.linux.dev>; Tue, 27 Aug 2024 16:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172477715359.21380.17730897719450941906.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2576859fc58498ef070dc78b0b084294c7c7ed1f46193a06cadb012d587438e0
Date: Tue, 27 Aug 2024 16:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724777153
