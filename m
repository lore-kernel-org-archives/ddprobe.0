Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 248554A0C
	for <ddprobe@lists.linux.dev>; Thu,  7 Aug 2025 13:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754572794; cv=none; b=SGJ/qmTpl3PBOnLVye4fkZfH8ZMEz+V5gZqY1q5/uRxBH2qHeVLQN6Iyw+q/vh1IOs5peB0g9dziFfyyIUeKLTpaX93lUPs8Yyjhk5EnEBY3/1/FNoN4YVw2i1aDN16DEJsj4OCLfm+sRjgiMXbIo3+rNYragXeotmRYXgt94ng=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754572794; c=relaxed/simple;
	bh=ZlmSnyJxEs2YXqJY9gE1b7OqB/IlEJtJ9D83NSHRay0=;
	h=To:Subject:From:Message-Id:Date; b=ZY9iPhZWKV1m6rmsQ8wVx3E4BZ2vYp38NFqI2F+8WEjbZP/cc5kLlcl9NNKJWaGec8Uq7hPsbHzXUz8sGOR6ah6mqdXmSEyBKZhXozqUxIy34nDt7Y/5U/m7EnuPBTeMqJzDduioNgVYMuplrVJUp2yFVprcTi10gHRRTHbn82k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bhtsp72K; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bhtsp72K"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1F14C4CEEB
	for <ddprobe@lists.linux.dev>; Thu,  7 Aug 2025 13:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754572793;
	bh=ZlmSnyJxEs2YXqJY9gE1b7OqB/IlEJtJ9D83NSHRay0=;
	h=To:Subject:From:Date:From;
	b=bhtsp72KbUerSrlE3qPGcBXdFG2QJix/tIL9sphgFstcCN9ULhehO/uhTOsqWd7Lg
	 YOjelj1bcYNY/1HKfwxhIqnYkfhfDI3582eumN3JCJu5fXFKFS7j9G0mmM3XnrL2HQ
	 rlInx9Je7/y+aynxEPmkNs6etB3Rj4tU/WziL+JosIbmRHwkBW2Advxz/wa6paqonk
	 HCwxLkiDhQL7ONbVLeofrPqfKmYNYgwz/CzJlErJvZnNgLltq7r/PHmRIeymGEYD1C
	 yK5wcANjdu4gC1uleV0x/lqGN6wWpr9lifxDemxW53DIJVnYPCgooCct4YxlTMYIB2
	 VsR2ZNAfw3mQg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 912C1C87FCA
	for <ddprobe@lists.linux.dev>; Thu,  7 Aug 2025 13:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175457279358.28904.5596380714534786838.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 046250d041d46a49095b8347193fffd8fb3d787561d60f827528acf9802deb41
Date: Thu, 07 Aug 2025 13:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754572793
