Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 296D91DA55
	for <ddprobe@lists.linux.dev>; Thu, 16 Oct 2025 03:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760585994; cv=none; b=edU46quJhwUWRi61YW1L3Lv+XTvbZn0JVk9+JZQAuL4Iu8TlqAlj7JC03mfNoHGEIrmM89+WGDQr6xaL+eNXsXI58yqFupBw50+paJkRzs64zBC24KqUIWX5cIUrK26bWcjtqVFPwsFQ+89Y8jwcgz7OA2EbbmVgBlL2V38pNIw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760585994; c=relaxed/simple;
	bh=xd1GZqDd8cC+BPV0DBTMgpAwlWG0I9kC7BAawvs7l1U=;
	h=To:Subject:From:Message-Id:Date; b=XOQkG2MQeatGFl8cg4hpy/m3RtK67I/AoltsfEh3qDAFOzHn9F2D1n5479IuGYAKj/nqLqbtevg91KSTXO4Letir5SDyA0Qu2IATAu+4S3CXOO4p9QT/hJBy2CISdkj916ceW2Iz2r40W0xc/IfJTgTAxA1ZiQOfbgXCZn2vguE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UALnvpmT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UALnvpmT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A183AC4CEF1
	for <ddprobe@lists.linux.dev>; Thu, 16 Oct 2025 03:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760585993;
	bh=xd1GZqDd8cC+BPV0DBTMgpAwlWG0I9kC7BAawvs7l1U=;
	h=To:Subject:From:Date:From;
	b=UALnvpmT2zFzjWBoMRzUrl+0ZAGz2iNDHZXWrtJEjC1qCxv3wA5dmEu7hS866+bPN
	 Jpvq2PaTY9iVAApyZbTUMBMhJHaRB6OLdy6U04tNNohLQ+TeFkWc5Xu64auAXRd4DZ
	 QkhutpNbDEp0LXZg52RQnczfl9QgVZmbroWY+txmMsBVl5PYAks9QXtLENLExfP4Kq
	 Jcr8wDWhUsSVL1HBVb15C90BJy/0K7K63q0GwfP6kz+iDVPKZrPL6iratxC24sl2iB
	 TwgT6WSpkNJtNdOpoBRPS4EEAiWGi8VMpUtOXs6WkREUNwR9mREFXxOQsMK5gf7gJG
	 Yj3zO3H3FnNcw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F57CCCD185
	for <ddprobe@lists.linux.dev>; Thu, 16 Oct 2025 03:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176058599357.9629.5887680498918306732.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3974c223356943d57354550ea4c5fc538bd06158336873eb4ded72c65e455cd1
Date: Thu, 16 Oct 2025 03:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760585993
