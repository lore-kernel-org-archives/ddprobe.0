Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4231A86359
	for <ddprobe@lists.linux.dev>; Sun, 27 Apr 2025 16:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745772594; cv=none; b=UyoZdhQsVaQiH5s2VgOE4um3/W7mbv1YV7t/XWVM0HbuA5pnQ/UhYR1IR6JmLRcsx/+G6jGn7mm+O088yAdrOJpFFMw1gzxMRjNR6k9r7qt02aJkKj3ME3jZtflzCsDTKlgz+xNw6x5CypmTg3AcGn8GjMFbbkGfD5MbxEWS1wc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745772594; c=relaxed/simple;
	bh=wVIrIMpvAF6ONyoX/QAqKJUKHNOdFEYbx+2bF38G4CM=;
	h=To:Subject:From:Message-Id:Date; b=sa83ijMJ4c5TDyiiLcUQzOLk19NddCLPWmsv1elbjclYoc3EjZ0A4YMsklkS8cOzz5aoErdckNZiBxYi2kkR/sP7A7mhb3VkPcvhEMY8TIcOMmrVSB6gDd1pPw17VrOEZN9cx3zJZjMJ/29I2/sgy0dLa7pqTSJYKzgvH39+MbY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CkIkwKPx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CkIkwKPx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5017C4CEE3
	for <ddprobe@lists.linux.dev>; Sun, 27 Apr 2025 16:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745772593;
	bh=wVIrIMpvAF6ONyoX/QAqKJUKHNOdFEYbx+2bF38G4CM=;
	h=To:Subject:From:Date:From;
	b=CkIkwKPxAzxCYdUe4fkjvGzVaDn7y6sBmW+O099DCMq5HYJNNb+xLCOtJhxpkpWZY
	 3mL0MOs0r00wtfEn5WGXnLe4CuiMv+h1esA4QdvsnatFoAAuhMA4CdHgyDfWQdjO4d
	 7iam4PBBnEMOW+KBibtFGQYZuYI5P2gM+Fv4pP9tpT/t/CaferzZv8U0HMCYBhH8KA
	 X9logE5I1jVH6DeTG0VPIPTZgTHKKE0a6z45dL2AMSEuZRJ7g03Gs30Z5i8eAOT9Gy
	 F44WIBbdC+grkW2SEZdqY/VLR4TXg3iRlWAJTT6qYSLcx2Wwe7yZ+KQGcOJ7uv99hr
	 89SqtZsd5zHtQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 918C3C369D1
	for <ddprobe@lists.linux.dev>; Sun, 27 Apr 2025 16:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174577259357.30208.3107524880211261618.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 85bfcdaaa516b494253ffff7326ac5edd55e7bacea0c66364b84f375fb3a4c6c
Date: Sun, 27 Apr 2025 16:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745772593
