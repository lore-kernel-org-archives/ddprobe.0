Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A686392C21
	for <ddprobe@lists.linux.dev>; Fri, 23 Jan 2026 04:43:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769143437; cv=none; b=Q150SWcCJCw7Yd7fgdRyv3MpJS7uI++vftdHcs0yNQVowN3bJFdLXjyNd2AUaRbArt/R7LKvZSRwu4xpos84CnTo+n+g2O2tLmRdVzwz8Wbz2vfuB2t5hgF/TqC/95vA5oB6c08hGlBWpbHHGpumb00b7y+VA4tayY776h4jb3w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769143437; c=relaxed/simple;
	bh=bPWx9mklVR7pQuKRpqYTNv1TW/ooauJOUUom9X33RmA=;
	h=To:Subject:From:Message-Id:Date; b=VaemeOaeJ5RAYQrwRoCVaSCqGRYli1Xzrj0WH/AgWP73gycsUXoQ0cIt1ETrnH7xKGULV0QWMKQYDy6PKyPYc6IrKqIg78BOZGWOxTtLB+AxwNR85JLPAdMP8jSUf8m75/q2SjpXak1HTwqUSOhMY3kBFH5sCntmOX5PTxnqjO0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CqnKiinm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CqnKiinm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8794C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 23 Jan 2026 04:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769143433;
	bh=bPWx9mklVR7pQuKRpqYTNv1TW/ooauJOUUom9X33RmA=;
	h=To:Subject:From:Date:From;
	b=CqnKiinmLzre3nTJEB2Mq/wWyrFI7cAafIkU0SGp0C9iAvF2L88faikAP4tyZ1H8M
	 k/LN7lrDJ+eOa35fM7e/V5Zp5pVMh0qowpaeT4nNw+7EQt6iuJHwqN/QEuGnIM47Oc
	 PcIQxvMrhXC7ZWqj7npouQUpuSuM3GMewZtlmNULU9LLUOSQn4ZGvBsw7aRnk7RDmG
	 4fmzJQ2zLEIQY2RSyGC8IZdzfnb1L62a21CPMSWrasv3RRLMaKAOsCLDuOCYzVuopC
	 dq5q95diWGEdgE64/C4TPiJW1TD2AGfthddSfh8reBOWVmPhFLO9htJELr/PcbRhSo
	 R8YyAvU0Efwpg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9445BD6CFC1
	for <ddprobe@lists.linux.dev>; Fri, 23 Jan 2026 04:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176914343358.22473.14048003771074543513.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 45c44199bc0a417b8df2576404408c08541f8bf68d0bff15c29dc540abb2c87f
Date: Fri, 23 Jan 2026 04:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769143433
