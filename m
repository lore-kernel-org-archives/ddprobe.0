Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D20971F418F
	for <ddprobe@lists.linux.dev>; Sun, 26 Oct 2025 09:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761469793; cv=none; b=LrpUEvlHWIw5ykSVVS6pCpxv3dnw+xq+C3zdmsELBZdVslKESX3Cs0D4CCciQc46v6qKMi5JxBUjlBKFd0mYYDhPd1lsJXKBxOLPBhBGBAq2DIttmVRzK2WNWx5y8hbaP6WJHL7RcAVb8NpU9XEzHmwicIGyRWapYZ2flIVLdnA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761469793; c=relaxed/simple;
	bh=05b5BDnTMHPzBMfbfubrIlhbklBLPkzqwSq2WpEOi3s=;
	h=To:Subject:From:Message-Id:Date; b=XFeL1ogKkORC6uWRJ2LCkbio94dPDlGsT2UQSXS+IThvnDY9nAL7hIjSdMlY0tNCeCqieTdBAqFIoki1cpu8+gnelnHXsKs7KBfV1BpUA7LxDdwD6yB53XM4n9X1xVZl8KFZA2ZHdL+/C8x91e6g+QW4neGF5JBnHDmreiK8fzw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ej7qTI3G; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ej7qTI3G"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A767EC4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 26 Oct 2025 09:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761469793;
	bh=05b5BDnTMHPzBMfbfubrIlhbklBLPkzqwSq2WpEOi3s=;
	h=To:Subject:From:Date:From;
	b=ej7qTI3GSc3GKkhdHv6ajr8wDtkExcPr4ITYENvVOHW+1yMCTY3mtd5UMp0ecmnMQ
	 WHLF3MLCTe6fKiMkAo5pKfDt7f0sU20TLOWdKcl5D+i47Zo2JKXMGpgbdZY62PvmKt
	 rXZ23U+jVQ10rXZ3/vtax7rNTVn/2d3dpSOkcET8zElVx7A1o5zomdXn53Of+DiLyZ
	 WxrK3Jdmjyh6lgPfoGXRXbY8rD7Y2S4kFBUDScMZ6WUfxFwZ3ML5RJEdpxIrW0ZbzO
	 utUqgC/4/X9q5UpaXoIkiUhrCddINWmvahmeieWfGDV9/EKa5Jx6wLKqKjua0bVjjR
	 z64aPvN3vFv+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94980CCF9E5
	for <ddprobe@lists.linux.dev>; Sun, 26 Oct 2025 09:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176146979357.11803.7327712863031295276.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3a47b76244130797c4bb2dc46723e3f8d221ae9006da5f2f467c1f9ede23f269
Date: Sun, 26 Oct 2025 09:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761469793
