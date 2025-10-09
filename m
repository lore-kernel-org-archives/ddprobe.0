Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2229072625
	for <ddprobe@lists.linux.dev>; Thu,  9 Oct 2025 23:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760051394; cv=none; b=Pto0zxSxDy6A024slyf0fgm5LavsOGkV+dq1mKgGCcNSgLWuIHfFVUnkuQPAE4KG9Ns7RMgbJqKRz++gbAH+0ArDGwhH0Q9Z7hbzGt7ofgrv+/zX6zix3YrtRilSfExZATMdFSdgtklynZB+XTUkjsT4WB5Ij3klsxilq4du2pQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760051394; c=relaxed/simple;
	bh=QegW09hd+Eh37b+Roi6NxFvIVE3G1OK9yJ2PLyZVw+w=;
	h=To:Subject:From:Message-Id:Date; b=pbShs16GLQz9rU+ldP4bYcUwu5fg3YLMwKsP7otpjmgkIPAYvnmC7Es6WXMmQT+wbDo76H3fwlmJWfl1//tCFJcPzUyRzz0AIpWi2+YtWsvlKuyXVgTpIIhKeqkS6K8nVuQq9vgQWX8mCcPEugj44PTE7s8otgFoh2zK3+OeOBs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sAUwliks; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sAUwliks"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A12E1C4CEE7
	for <ddprobe@lists.linux.dev>; Thu,  9 Oct 2025 23:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760051393;
	bh=QegW09hd+Eh37b+Roi6NxFvIVE3G1OK9yJ2PLyZVw+w=;
	h=To:Subject:From:Date:From;
	b=sAUwliksWrbDwfLwzkZ0T7zPTS3vUdO95FGl8GHNQTYXl0LoEBISGKeMqEthEfhqj
	 aF1SEHWLrL/lLbrRgnJAGiZ8Nm/GXM09oNhjLw/9henSVeEuyuqf6ihLnsbdhVCZbC
	 F+JyCeA6ebfAVKMKF4XqatqhjjjIuZL/WIsFeSv6EUI2SOrsogI8xAzDGgQRLQjQvN
	 StecE/9kK+d3/JWsRdQYBEkpN80g7zoOuItpZX7A3+n/t+kNcK0OC0kcvebAm8xhlM
	 Rf2DjNKVWMXTCyvhgJ/sZHvMULyh187fWdjJ922eE+o9EyB56qSDoZNiUN3YjnoLJA
	 hHB5/LYxxnRrA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90F37CCD183
	for <ddprobe@lists.linux.dev>; Thu,  9 Oct 2025 23:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176005139358.11955.8104636971980192672.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bf52f2c450f6f4c9d07a379242f4c40a45ff5bc0979ab38de0be90b271f3a421
Date: Thu, 09 Oct 2025 23:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760051393
