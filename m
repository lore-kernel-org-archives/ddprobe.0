Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C47E20AF87
	for <ddprobe@lists.linux.dev>; Wed,  2 Apr 2025 04:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743566994; cv=none; b=qeVPzMAhNUUnQchn/gb3W7GdAJRqdhWar5d91z/Zvvg87H69485Ci2iGursdnIo/F8hVZDgcV223XnxxZdgB3Kom2oxzK+7iev97+PG9Xos2jautFWC9jPBOpvwvn16VTJ0wduEHKDBeFLEEQntBQ+jKS4E9QIKGAVRcO2l2Wvs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743566994; c=relaxed/simple;
	bh=Sc/z/LfvuPyD6TZuzzC2qP6xyLDNQeZ25Cf2oKSBwc4=;
	h=To:Subject:From:Message-Id:Date; b=nTOVkfbDcNY/jYbW/cY6GlUuUdQctPc8lb934mPq2M8q6WtzntqtMyD7TeDh7/WOpwDzxXNdIUpLlg+gyNHCDBcOE+X4HstqoMYwTP7QOBJm4CBb03d9OyKNqAAYgYW36DV/xJNyyLb/fDFO7o01semZ/RIxQ/HlvT4NR4Txkgc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MA1G3zR9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MA1G3zR9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3617C4CEDD
	for <ddprobe@lists.linux.dev>; Wed,  2 Apr 2025 04:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743566993;
	bh=Sc/z/LfvuPyD6TZuzzC2qP6xyLDNQeZ25Cf2oKSBwc4=;
	h=To:Subject:From:Date:From;
	b=MA1G3zR9sgdoHHhGCxH7QVEyra5ojhtOpzCQUc0yR6ZISxBxu2fiWyg4wfvszgE5F
	 7Hxek6uOLGPuLW225wLU4/LvybgEohdhOYdTT85I3SC+IljAbH2bWSnM9uAqve2eIT
	 aOIVbgFbXSc6UhBJUh3zkW2X5PLhpDyYkg7gpt1uRR5g3bEeyRYLCJt+xxCMtU8V8o
	 IAeyhOtmNsa9ViyLYr2r1JaETFyWUS7ke9Pao96Z1AGRCpkKVr51e3uQqJBfAyaCTL
	 bJ6QrVOES4YzUWHnOv/J+VrLnDIeRmYFqPSCnyY27JRSGbQmH3lYh+fLyDgWmr0MLc
	 /THFQPqYSgIrQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0CD8C28B20
	for <ddprobe@lists.linux.dev>; Wed,  2 Apr 2025 04:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174356699365.15675.13750822371756322150.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 492b3ca6e28d77660584fb9c95e3616347e6db1f70e55d60ac67ae6bb4da1dca
Date: Wed, 02 Apr 2025 04:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743566993
