Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E3017262E
	for <ddprobe@lists.linux.dev>; Sun,  4 Oct 2026 22:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791153034; cv=none; b=phnhmTaSX3H3YoUjQc6jkOnkO7yxIVpGPt7ArBgp2er00lkvQAaTzmQ8YKECA95lIX4W2ZowLNHegn8EgwsiJOzS7Zf8I/Le+vfdJsFDqkxxpXx6q4NkPLsYK1fgv/7wGL17tGvsNEewWyPjRLDWOinMlES/8J7LlPcA6rHW0HU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791153034; c=relaxed/simple;
	bh=PKKKeYjQo7lk0vtJFHyhPv0gppf75h3Ps/yX0XCP2/M=;
	h=To:Subject:From:Message-Id:Date; b=JbsniBdHFlu+Tp9K9FgkRvsyhowNk/4fPCWR92iY2iKNOFKTeio9eNrx/1rxu1ntur1xwW/jvD5hOE7tOPEC7LGtc2ii06WQzm/GMNJ8h7VG3c7zgmuO/3Ki+ZC5nY8tno5GnJLEGipOBv1fBkpR6EVzBZy+Fi393gdsOqB9hLs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dNL6zzdw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dNL6zzdw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3846C2BCB9
	for <ddprobe@lists.linux.dev>; Sun,  4 Oct 2026 22:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791153033;
	bh=PKKKeYjQo7lk0vtJFHyhPv0gppf75h3Ps/yX0XCP2/M=;
	h=To:Subject:From:Date:From;
	b=dNL6zzdw+WFbsRCXTufAcuEYnuEWezib//lAcBZa+xX+I+mjIyo4j8cBa5aVUHyqd
	 kRTgFottJPM1bRO+ytLKUs9vS9sevFuyAQkG/RJMk4+9XhQB9AJuYZf4qHfYVUVi2X
	 HGG9NMNk7Y7eIFy1VnJOexR/Xt/uDWPj+X9laSr3SYTE7B/qpKHe2elal9g6mllmE1
	 a9acEMjXCWAkvk1yZvqaINzGi7xjvN0cI76l5V7CMCy39Qd1nVo2IwidMcLJfCIlMd
	 kUq2SpZIFWcRlw7lSTBYOiI9lZWIkq78Atzg73kOTJJxtH0AQw6sEy/x4YksFzZp5H
	 v32TlvoBJloJQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0D75CA5FF0
	for <ddprobe@lists.linux.dev>; Sun,  4 Oct 2026 22:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179115303368.31019.7772825248217366304.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7e70ac03c124ba3de7c64ba5f8a4988fff138cbc961a554bf8cd967ffdf03935
Date: Sun, 04 Oct 2026 22:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791153033
