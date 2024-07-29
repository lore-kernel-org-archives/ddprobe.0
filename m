Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 043C4768EE
	for <ddprobe@lists.linux.dev>; Mon, 29 Jul 2024 12:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722255354; cv=none; b=nMhZuyw2Wm6qu5eRjHoAlIOFkLuHOvdp+gjUt+9Elgiqt33jAVIxrFTu4nmIHzFEqO+4WK/Rd36jB+av/f7w7LhepWm9SBaqTcWW/6bHOIbIJGkuQ1nAqMa/Zxyz+/W98nDpfUlTtCyrlnnW1kxOlM9QSlaQGjyUVIOfTSxtRr4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722255354; c=relaxed/simple;
	bh=YUAq99VpAY5xu+GO8Qa9wnWHb+gkMLahrkGqgolEG0E=;
	h=To:Subject:From:Message-Id:Date; b=Pfo1EFKL0yxgUOdRK5zvJqyhQap2KeJZT2wFmv+w5l8VDMHwrY/9eylT4Vj/ikOpu+5fv+x/isHlgpCH1CTslcCp0H3Aqy4UiRXdjmLpVXsbFPy5XeCg0qw0TXWkijMRdMi6jOmJG8vP2RZEmIV4+Kiq06poiqjGLUPKkZ5yGVs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mt0589gL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mt0589gL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1506C32786
	for <ddprobe@lists.linux.dev>; Mon, 29 Jul 2024 12:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722255353;
	bh=YUAq99VpAY5xu+GO8Qa9wnWHb+gkMLahrkGqgolEG0E=;
	h=To:Subject:From:Date:From;
	b=mt0589gLmCbT+rFtI4OEtNJqIFJx1lzTK83l1AXbmSmuh/sIjR4LIzsz6lvhf8S4E
	 9SQZsp6Zyi6gZdEF4KojUMWJR6MTPU2IPgQ2w/NWtsh5rbf14DiM9BLQKPSLhfWj0r
	 AZdPGjurzvLjJV3xOQ1tu6rJHnejq8B5yvHMQPjpKTk0kfGJtf2gafDxZRuwgZyYiZ
	 fahueyc75hmRpLGESQHqcncW3uXAUnorUbDneXkArvbmJYwRI6kwflICCBQ/qul0J9
	 sl6Mk4sdbvtugK3X/i/8NeYRrfnAl/i32Lh1aRvAxulQfCtCZMhy+3i3Z+RZTVB+FP
	 Ert6e0c/eDceA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92C29C3DA4A
	for <ddprobe@lists.linux.dev>; Mon, 29 Jul 2024 12:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172225535359.11161.7082505433673220369.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7e623a9a3d5704af003af4983cc8a8fd4cb5c36944accfa9c13c5d3f10717959
Date: Mon, 29 Jul 2024 12:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722255353
