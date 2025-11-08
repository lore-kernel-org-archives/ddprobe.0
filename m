Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 05503145329
	for <ddprobe@lists.linux.dev>; Sat,  8 Nov 2025 17:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762621794; cv=none; b=N5Gvu55gqDdYuMIwfKr+8t9mMZ5S+Xd14RGafVsRk+fYvGm8rhgScEkXQN/SXyM5L9PMGe5UxDtnz6wRhBTtmrxKRSM7vfiyj34tHfMBXMzUcIctQLkL54OH8/X8JXVRd41rBLNp3uvpZpo/AKGoDmg3OdiC6MpiJLBVP8Cezhk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762621794; c=relaxed/simple;
	bh=8XP7Fkh8d+ljA+b1GVBo1cT+DKPZB1Cn4jn/3qqDB0Q=;
	h=To:Subject:From:Message-Id:Date; b=tx49KX8Qi3u2tuOZIcIiSd3etbF6qNsJBuHezLVN55zJpPwU6nEkIvuuwd/W9pkwMOuoz5cAlhhpBqauVlyiae1W9XJtetmETI4hTWlLLYv0bep7TlvAGWJNlkHcQpB8bwURefl7ET15D0c1FC239BsJ+S5faWfuW7qeGDD4sgQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=X9RI0pT4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="X9RI0pT4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9BF4AC4CEF7
	for <ddprobe@lists.linux.dev>; Sat,  8 Nov 2025 17:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762621793;
	bh=8XP7Fkh8d+ljA+b1GVBo1cT+DKPZB1Cn4jn/3qqDB0Q=;
	h=To:Subject:From:Date:From;
	b=X9RI0pT4LLTj1nB5lttT9XGcfF1Zhs9cTnuOy9Pttybd0zZBt2sM/Wgmq7BlvWbXd
	 J7mw+VzB7MqMTRXzhZaCYJAoK2HU1b/d4l4GrN//KoDLmM0bzxXNTYcYuki7f+CByM
	 mwOc/s1TFYqY3KGmZUee1dqQibzkAxRHlMelGDgZc/G8ZUKiqK04pN1QXDxoanBXdo
	 FoU30lwgODjRfOAdRWAw+ssKWAz5i0Ktoj6JK5mK/VxDUZpuAKPEf8/dVtXi3totfC
	 aaF28+s5zalyoTm0wHdcgjJx4pHo1hVnNNWniMoVZMdQxorVt9WtTcdOA4HnZNDXSZ
	 7pRvHhMWtJkew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FA7DCCFA13
	for <ddprobe@lists.linux.dev>; Sat,  8 Nov 2025 17:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176262179358.18535.8574713090321391920.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 737a7c34df1c98eb8395ef25a859e95db65b626bd24428b30d19f4d23f9580ae
Date: Sat, 08 Nov 2025 17:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762621793
