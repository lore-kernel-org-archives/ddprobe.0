Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3108E1DA5F
	for <ddprobe@lists.linux.dev>; Fri, 30 May 2025 10:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748601595; cv=none; b=e3X3pSmLnc2OHVBGcJyTAL9tlbDzjhVJl8Da0YQhQpRalX+f9WMoCOvqRcMQbV6WAhQDNdeMPWv0ZTaeyye5N697hgCNG8WSk+N7peuqpJOogWkZ/Z1NdU0z/cmWZXtYAKL41yNRWZiwd5zL4IbrrDn4r6HgRVAdcVbZN2yiQxA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748601595; c=relaxed/simple;
	bh=fje7tdzf/xWBsEo/pM0mPZjrgBfBSURQ3zCNPj2/K5M=;
	h=To:Subject:From:Message-Id:Date; b=qT/DSqEkK2ZOpR1waI4xSjLofYtXpVPFj2SO73kqpzdTEGLUHTu/VsFkKeygbM845z6BUj0PqYVeVPyOqwZJaTkeyAdNUy5Cj2Wmgzv5SPc00OGFNnsSRQjtLMEvlvJnY45oHj50Wkc4u6nT0EO7Xn9GcZ1jwXOJAo8NUUNQIIA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QspjBv0S; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QspjBv0S"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A08C0C4CEE9
	for <ddprobe@lists.linux.dev>; Fri, 30 May 2025 10:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748601593;
	bh=fje7tdzf/xWBsEo/pM0mPZjrgBfBSURQ3zCNPj2/K5M=;
	h=To:Subject:From:Date:From;
	b=QspjBv0SaiiVScxdH4tEAHe18f6TruGwXamLlL5vNQ5c6QP65UHGGJS2LL2r0guFf
	 eIJLh2qCldmtfuywULe52/O5y/pHa5X3DmI7iPw41vLFsRUgwoE6LYF5LwpUhHrUqt
	 DPk7U5p6ZCvWJ5Fx64cO2pucIzY5SJ6+vZR/EAWPQE/lRbkwRZVcA/qMQlta1VLdI6
	 ZtjSBcXJgKp6igDxOgKDv1RZSPdMurBlw+xihj1xsUyel8zi7UkzO8Et0t63KeDdX9
	 i77DVHGHrRCxvTeM74VE+jKTra33s7eJTEkscBZhmVrba7tLuTOOfwvD22piTViOX4
	 5C35dw5f5JPFQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FD5BC5B549
	for <ddprobe@lists.linux.dev>; Fri, 30 May 2025 10:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174860159358.30545.5575300859585010630.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 765b0a1dad9b982c19168c78891fa21205e7d6cf2bf8c78106e1d70a8d0985b8
Date: Fri, 30 May 2025 10:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748601593
