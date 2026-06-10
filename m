Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 365DD331ED6
	for <ddprobe@lists.linux.dev>; Wed, 10 Jun 2026 19:06:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781118394; cv=none; b=PvaiLLRugeCu1G0FVQmZn58CZe79WBDLUtAceKYv0hWT7otoLsaOmq3ZTfu4h0lwezSd+qKz8WJ/LtIUhjwbdx6JUw4IkefV+LLaXfDruLiLYtF7StKt2gy54915dclmVfjDae5Rm/+lnEexQZBIjYO14SifsYEQqSxV/MRr+wk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781118394; c=relaxed/simple;
	bh=R2iZFvDWcKPRiD4h3MJTslG+bd7M++DZppoUcAeI/6I=;
	h=To:Subject:From:Message-Id:Date; b=jTlW4gOqyUhPTMSVUFcdB+17E9W5dH4YRZ9/mp923u3DyJtsgTBD7kdR2/ZOFk9hCS65beZPxVjUReTqzzC//XvRebR0mXiM7MszalrUPqnLztvCwt1PmXmcsUoJhoi+UrPYBpskziNHsDzi5JClT/qLb22SlDzwKZLW7R2i5W4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SbK5cRBy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SbK5cRBy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3F94C19425
	for <ddprobe@lists.linux.dev>; Wed, 10 Jun 2026 19:06:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781118393;
	bh=R2iZFvDWcKPRiD4h3MJTslG+bd7M++DZppoUcAeI/6I=;
	h=To:Subject:From:Date:From;
	b=SbK5cRBy24wNfp7sx0hDv5ai1rZD4ViU370G1dfWDgjBsWhpeSTLjHsqO7JXr0hm6
	 QngOskQBjiPDFsjdQBw8gU498ytXybVzBhBaxXbrgW4zWab3934yzCiusWsri7OYp+
	 Ps6I/uPoxPqIYhHO4nnSfbpuQXZHunmhjKdy1T9SOb1TFb9vNNdyVFplMInkJYVIhB
	 YZ0Fg2VHCr8sk7/XIpsRgxKLOX8rGsDUrj+BLKhbI2ZA6zXe5UQvhrWAM3F1opWAal
	 7IVu/6DsL2PCqL0w18JwoxLNwMonQysjEfdfFgC7l4I58Pt0sT2VsW4Ai7GCY+ZtdS
	 B9LxcUOfwnc0Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B8DA7CD98C7
	for <ddprobe@lists.linux.dev>; Wed, 10 Jun 2026 19:06:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178111839371.23584.14923619025252746617.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2357a9ae07f189c7e8f87c774230cc49b8c8d9eb12b354e024fab6316dcf9132
Date: Wed, 10 Jun 2026 19:06:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781118393
