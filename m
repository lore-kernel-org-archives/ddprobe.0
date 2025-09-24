Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0CFF31CA84
	for <ddprobe@lists.linux.dev>; Wed, 24 Sep 2025 12:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758718195; cv=none; b=VxmB/Ys52980XJiPWGeH1/xxV9MscnR4sn1kihRXVJOOWh32A6C/XqpPGseyASO9PIvFU7+v+MpJ4LUP7fhb+JKX1544xkZyZggv+0cwtlv7kWcU5/gufkJ45ANwhQ9KVlY8GwPRELBCShuVDCFwhAtnvzTLlH7osZUFQwaIleg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758718195; c=relaxed/simple;
	bh=QwxzKCUz68AglvjJh4InxaW8hEb0JkECJvW31jZENJk=;
	h=To:Subject:From:Message-Id:Date; b=qIqmTd/ghu5fzIgwyBzBc/6iuhtiPaFLXxFHbR6JNuRcZy0iSjx8VnBPQveNRZjN5yLnmRUjrq2c1QuSM5kDfp//EhKNQ2BssLXvhAHhZpDHNCSZhLRami/m4BWhjqqlGoPuWkeCHRN/5QlIgN43njbk5I1d3YQERnSqpaH2s6U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vPkclEOq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vPkclEOq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A56DEC4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 24 Sep 2025 12:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758718193;
	bh=QwxzKCUz68AglvjJh4InxaW8hEb0JkECJvW31jZENJk=;
	h=To:Subject:From:Date:From;
	b=vPkclEOqFkyOV06YXnlDbGYq686Z26T55fObH4M+gR330VVc9fqSYVNIiEzkELW5j
	 FvKLXuuEWBKf6PXzwSyndFgda0XbgPEpKT6NErg4kNJmKb3gMiIcJUClBMgmojiS3x
	 zWJA8vvll4/s1SVqofMPwoIoGAVayPxzAJjbKQbICC4h5qR7W8NgcGzIJskEl4yS/a
	 MuxgoN1y0lwy4kBcjEFjNx9TLqzEyLDW8I6WSQJWp+H5czRQZSZFJ9JjuKSFB1CT/D
	 VDSQYBg+Hti0AFpeYOeqkL+4z9LHduaODjDFngGQ5JrUQa6qIa4TwVgDL1+OcOdEOx
	 8WqiTyheFWnkQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92186CAC5B0
	for <ddprobe@lists.linux.dev>; Wed, 24 Sep 2025 12:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175871819358.20254.12336802194213589191.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f324c84ba343be4167b7c769f3f9001076faf3f7e92d41be6511eecc93a11ede
Date: Wed, 24 Sep 2025 12:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758718193
