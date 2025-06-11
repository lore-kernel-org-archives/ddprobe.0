Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B6E02580F9
	for <ddprobe@lists.linux.dev>; Wed, 11 Jun 2025 22:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749682794; cv=none; b=tEU2lD2fC4f5kT63w5ylkfaHmM6s75SYalmXeqL7bWBpE6EXAX09qPNuzdStjDgAkldsVRM7xngY3kDRJjg6TzgMB91h8Nx9vdxF+ZFt8L34/mU6CvBbA9FaBSrUqSQdsn8ZdD1M/F2qJExW/3bTAP+RO81wJkL0J8cxDrpxT0Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749682794; c=relaxed/simple;
	bh=W7NjQhMDlKe+eiHVPAEVnNHuJR91prej5RA9ULzgH60=;
	h=To:Subject:From:Message-Id:Date; b=Xt3bpZQKUWNFSqUiA9Kw7+rQUmBmEmI7yc2pijai30IsaH4FRkNlx+iHZMhJG3sh6780aBYnZviXvM8r2aN/BkwD9oAIP33uxT8JNOyn+3tIMMdBmEAm7uzkpWhwxvuX5O/35DR9aGHk+XpG2MaYLGQ0MoDZEm6pT5OnDvMM/y4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VZzE+A7P; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VZzE+A7P"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2589C4CEE3
	for <ddprobe@lists.linux.dev>; Wed, 11 Jun 2025 22:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749682793;
	bh=W7NjQhMDlKe+eiHVPAEVnNHuJR91prej5RA9ULzgH60=;
	h=To:Subject:From:Date:From;
	b=VZzE+A7PcbIdDyX1oJ9XR8fHELP7j3F2mIZQpcxRNOcegQ5j8GbY37rjUnJmEToQy
	 8QmCkQd1GOtOCDVxqbzwpCS/3T0JtikG04FSAGan+zhWzz7VHnOJ4d34YueMo+Dk8B
	 mD04FWvhflFWuPy2AwPqYZmL1jRI4aUfRoYIKRbK9SafvKiY1ZKOgtq2WXZhmYwBoG
	 sfCWOZa/J5UruvMSeI9qFuoDPRRBxsFsQd/rym0l/S/ks7pAQdO3rkcdhsAEiGQlG4
	 2NEwFwCO3i+0smdlxBCGY0XNcI0ZKY/4r27ZcN0XB44mFRKAOkp3sgMauQck0hTCsr
	 FjNNjHrDXrmow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F696C71135
	for <ddprobe@lists.linux.dev>; Wed, 11 Jun 2025 22:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174968279357.9064.16449567089719884635.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cce27fcd8adf7db6d7b2dd73ee0e8d19b87f930ce8e334ee9e5b3a185f43812c
Date: Wed, 11 Jun 2025 22:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749682793
