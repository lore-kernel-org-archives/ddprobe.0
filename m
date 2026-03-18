Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C6BE1E89C
	for <ddprobe@lists.linux.dev>; Wed, 18 Mar 2026 18:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773857094; cv=none; b=oohMCzTusr2dZ+L8XrPzP6XKvFsNXtWhk3kQ4NAN3Wia35GIQrMgIxnM0C9jriFO4jaAbch/OIeStCFuRuKKKJLSLAsL/Cy68LIljaZHIDy5g8wOP+PDoq0Ygp0Cluc1TNrSYVa89B8vLds0blT8j6+kqT14wSu1Y/1Xi1/BeQc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773857094; c=relaxed/simple;
	bh=dNFkTr7HxLr+AGYzNW1jcbj5nPaof3I7YlGLrO/S/rY=;
	h=To:Subject:From:Message-Id:Date; b=PA3eUfzELmkBzmLyJcaePxlLgk4TBIt287EDw/YimpBfNnXU/j1RLgFl2V2OSDtp3cbhN44qyw5jlIHARYbpFz2i+BA3971gAaJSFs2pPFYGhgu4FD8CS4FOl6mx/qb+CBjAZiGVft2pkFF4eqBASJazofOEto45fOoI5/5fCHQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RyhJBbZs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RyhJBbZs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 98D03C19421
	for <ddprobe@lists.linux.dev>; Wed, 18 Mar 2026 18:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773857093;
	bh=dNFkTr7HxLr+AGYzNW1jcbj5nPaof3I7YlGLrO/S/rY=;
	h=To:Subject:From:Date:From;
	b=RyhJBbZsLX3F36ZrDBMjU3WlqyCgAXltRlSUQW1p8ZGLEkdfutz7YC3s496Wk4Ufe
	 PJy5RHjncuNc3X2vVDYio0qmV0bjY7MAe+mOV2etp5qRFVj59kEDwyav4eES+SmZso
	 sNh8ThFRU1BzZRNhRjhFubDC9noyR7Ha5C5UQEzgWjbed1Tned9eDRJpaPYQ57c8cM
	 REXcxZ88eohK5T9nSZWgHrqBx02hlQAAoMs6oauhZLe68iTz2oivfsjJZqkk4wAmR+
	 1BVLKaSEsvQ8BonSdwoZ7D3OX12nbS5Rza6m8uS+soVMr38TPpei5gbdU+LPp1xfYW
	 PiavHyhjM712g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9165010775F9
	for <ddprobe@lists.linux.dev>; Wed, 18 Mar 2026 18:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177385709358.11776.5372296847426317703.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e9653490000c4486a90524278c1a58eef556e0af08b7c9f7b245bb6051c8d7c0
Date: Wed, 18 Mar 2026 18:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773857093
