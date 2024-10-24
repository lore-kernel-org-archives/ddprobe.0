Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D0731714B0
	for <ddprobe@lists.linux.dev>; Thu, 24 Oct 2024 13:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729778154; cv=none; b=baDz7FSsW+bcmXjhiPMlKkSCBy7LZm+2E+grUnGhN1qZszCelB2QG/l/sHtJAI6tlWzgTgQ+lojky4KmqA7sce+J96mCp+fZUtJ3zHgR8qD+rcLAyy7ac6rbU1488clCnnmk4cNyteTRR9Bf0iBR5+FXS0mUdjlC4eX8ACUt4dM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729778154; c=relaxed/simple;
	bh=tOSFHN/GA7VJrhWciLD0FVcenbRzR2aoxXRYFG+22MU=;
	h=To:Subject:From:Message-Id:Date; b=YO5bSdiKm9tE1Fq7I4V41iPLVObojnygnpC1VsWfbr+1DEgJsOGbh2kEWk/WmhRI4KTIunI4nsvc0vcMjvUmsB4tI1tW0+QIp4Jwj0Vbz7uTQxCLdUVC/Rp6A9Fs6ACN6bbNXf/jWKQzP7exhf3FBwF9LZE4C5sOJlg8k9dsiHI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FcEN3GAz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FcEN3GAz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1BF6C4CEE3
	for <ddprobe@lists.linux.dev>; Thu, 24 Oct 2024 13:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729778153;
	bh=tOSFHN/GA7VJrhWciLD0FVcenbRzR2aoxXRYFG+22MU=;
	h=To:Subject:From:Date:From;
	b=FcEN3GAzowWItfxO9cL7M0J+l4bru2GKdmEdxSgQnSfiK7ckl7ZNrd7wFeTLdtZea
	 vToZQY8Qf3wU7+X8YtnmCPMLXY6xoVlNHnEEp4FNMEQfZ7rEEs0tx7AiHH08HqB3XW
	 XBObLG6XZJ+zSC4Z0JsfJNRbvXUvMETVAQTaKAzdVwTyebaNSFo9BLXdJrOJI0wX6D
	 m2AK9qz5y/V+ssPe+/rXXTyolO00L06NAocEDdNS/asSjnJHL59RmBhmsd58dd6Seu
	 FF8Ssc9zqOzXdzb2Ne/z7SjvzBhatAdXRiBEzLP+ILpdviDBUtdNeGZ/ZXbhwN0iZv
	 FfzbAYbCeTKgA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9ED19CE8E78
	for <ddprobe@lists.linux.dev>; Thu, 24 Oct 2024 13:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172977815364.11880.8722027608193267534.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e28c1971748da4af6a9b04ed8970a38d7c1637e1efef18544361d69cbede8a9d
Date: Thu, 24 Oct 2024 13:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729778153
