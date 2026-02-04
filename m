Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FBFE10E3
	for <ddprobe@lists.linux.dev>; Wed,  4 Feb 2026 00:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770163434; cv=none; b=HShLzXnCyulcl5beaSDw0m85cMlXitCCXjvILq+7U0Yo8BgLE4vLOphP1ug6BJWgloPU1iZ7mC/qbxykI+8uugLzTNEdpHzZr/DUWLEHgThy8UV3N6IDIg6RspM21Jd7BPWapwxImqCyCHGmny+DAF447yKLVGIxqAIinq0D9oU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770163434; c=relaxed/simple;
	bh=0tbhgaNd3DESlk6nEisn9+V0dRiFpMn/8LSNjan1pIQ=;
	h=To:Subject:From:Message-Id:Date; b=W8fH7btMz+iJddqSXPaRKSxlpwVpL8gtuntPu8ZvNS4B4FUBkwjjMH/mJdWpLuu9xXB50M//fc8W1p2cBKDJTyEo6koQN+r4Uzdu21rGOP3I+MHHQUFJt+l2x1eWTMZgOgdXr4a1I7PiBdxHjTEIHISsS3x3a03YKPMG5J7fhs4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RrldBfXI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RrldBfXI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BCFB1C116D0
	for <ddprobe@lists.linux.dev>; Wed,  4 Feb 2026 00:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770163433;
	bh=0tbhgaNd3DESlk6nEisn9+V0dRiFpMn/8LSNjan1pIQ=;
	h=To:Subject:From:Date:From;
	b=RrldBfXIEBIA1nM81F0QXRTCWiPp9xiNXW7Gks1DIJU8WCvPWYBOCVxuU0gL781Cr
	 jh87kBQMGlZF6+XAHRQxHTdw52rHETXZpDzSglNMWAnnWJDn5kqTRujs9YGHIOC5k9
	 gycET2XvYFHSsURO8U+c5NkQvq47rK+6wwwEw1gPTxxhOU8WIa/GQanRaJVezLf03W
	 5T/wRm54z0gLkGMX4EAwi6wRRepXlahC5NPm6yqGMQSnFX7JWzHdtjmVuR86tCj0FO
	 PmzrF5QCHtDd4mrxhhTqfb4DUWN8KC7yMm0A1KKgUfMNff4Sxqo7JiwRt5g0MBEsOv
	 mOCoberUhToxA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A89AFE8B385
	for <ddprobe@lists.linux.dev>; Wed,  4 Feb 2026 00:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177016343362.30770.12119745780878006255.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 226b319bb026036d069bb26a8fa83ef292416c0a2ef9b014873c0f640c50bdcb
Date: Wed, 04 Feb 2026 00:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770163433
