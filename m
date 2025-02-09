Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4FC103FD4
	for <ddprobe@lists.linux.dev>; Sun,  9 Feb 2025 09:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739091954; cv=none; b=P/N5rotP0T9LTR3FjB5qq5lA+nC29vlxhvwXUrmTIvC9Q0ttrWA65NAMkht7urB37C1V8qYZAyFHkWzbO6E6ua0pld2JmhyzT8UTZ5yt74K2tOoYFl3APQVgMQquMBHH3eYHRscG1Xe1t9r+lxD3pZba/8D2LCdArYPNhnjsQjI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739091954; c=relaxed/simple;
	bh=AtDUkIRByqpWQpCrKF5ilbA2So6xKuVOREkMpTSTcm4=;
	h=To:Subject:From:Message-Id:Date; b=bLX508TFcdvzwiApKF/oW+rhY3CHUM7ebOhlmU5PxN0x5Gmd1hqbtr2vDhaPvaJf1owaeH0QncJUlViUcgHGaNPQA6Uh+FKkCYnQZpGGxmW2XFQlHU20DLNjdXDub09G1kJzTfPr3r/GWpYcuCj9cUrNRy7eCpgE3OkGQmSA5dM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=e46rjyol; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="e46rjyol"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1AE1C4CEDD
	for <ddprobe@lists.linux.dev>; Sun,  9 Feb 2025 09:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739091953;
	bh=AtDUkIRByqpWQpCrKF5ilbA2So6xKuVOREkMpTSTcm4=;
	h=To:Subject:From:Date:From;
	b=e46rjyolvtAG82y4bq685PdvdWkLm6AOY8pJKMKNu0jtSSf5KQi0XoJ6rFQ1mVR9E
	 zLADCcmu9/FnD/cBdMSvMsQpAcRvhNXEMCY7zAEi2jTnyU5lRYrZ3+ox3EcW3qksn6
	 +8fpKjZyYjtpMRumY+EULlzvyVMobpWvnFfMN6e+RsM9aVwqyosEyCH5+XMltXN4Q1
	 ZOzH8iLpbVPL6Bgv5Fl11nBMvhB44ritl1Hdq43OwMY+Gozsw+BtZ2NuLoe/XbMxoU
	 DJmD7LDUEJQS1f+sr18wKAoF/n8QHuDV5sRYHH6Wfh/lYRJIaT574A8BtyGSNcandY
	 y0lBurbRl3roA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A6F9BC02199
	for <ddprobe@lists.linux.dev>; Sun,  9 Feb 2025 09:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173909195362.25625.2943654360050826571.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 54a6c47652ca9759880e1bc90c0c37890884599cda92debb334d145d4f7605a7
Date: Sun, 09 Feb 2025 09:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739091953
