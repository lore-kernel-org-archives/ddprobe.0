Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20C0E1E89C
	for <ddprobe@lists.linux.dev>; Mon, 22 Sep 2025 04:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758517194; cv=none; b=YJOtJvlLJdOTMvkfDY+Mc6mbRk+CfAeg8jg2uRXfaEuj+LnOoQ1q7Zom8eRlEpL9P28HMUbdwFwiwC8hTve10Vg7Li5QQ+BBlk1ZHbE40B6xltOoNXm7KPlcCQCc7z135o7yUUHaj1fHZEtli1aoV2Y4hE6qTsLacWAlBV/YHuw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758517194; c=relaxed/simple;
	bh=X4N0v7E2qJwUcA3AlQCIdgoxhxJ/b12cNnH4qG0mg3I=;
	h=To:Subject:From:Message-Id:Date; b=bV6jAdxRfQqrKuPc2zlx9NTDaNaFp8VTL4cRqOoBAaCnEItA0nX9wEUe2Dg8zCV9FiyH2MkR4+fULlsLPctMLZVMsfQjLeg24buWhtjnQuLmGoS2hB2mJ9NLtA9UeMDcjlzwaWzdn9uHq4T+yKiHME4bnN/jkaIOw4HhTHcLayQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YDf8k3NM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YDf8k3NM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1A20C4CEF5
	for <ddprobe@lists.linux.dev>; Mon, 22 Sep 2025 04:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758517193;
	bh=X4N0v7E2qJwUcA3AlQCIdgoxhxJ/b12cNnH4qG0mg3I=;
	h=To:Subject:From:Date:From;
	b=YDf8k3NMzkTIGoGyWyh4v22Fk2NjSIcfTEIIQKazuCY4hzN6sTf7bAdl4/YyDa+LD
	 esWginDgRzMKjc1fDQXzvvOM4HQHwjFPrX4tFRO1tfkQ38QfeJyiNW9rGPuWIhXp1z
	 LKT/PYiidsoLNOOeGT1f6pZGDJqljbNhTPiX16Aqxni6VUMelJLSufK9jpC6zS0cgr
	 +IZxBASEyBydmNZgMIOXh4nKCD91uxdKn9c0deheZOxdJ5d0S3Us877xFxy/AuuHx8
	 2Rto4VNNK8XGq7xsOAR0hUbtZVu/U6IaGOidt8WROKEp6a8athDC8fDQ+nw4EhzBjG
	 ieKMDhZ6UNGzQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 909F4CAC5A7
	for <ddprobe@lists.linux.dev>; Mon, 22 Sep 2025 04:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175851719358.2711.5917519504848671963.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bebe610b0642cf89ac328b6f9af8db04d44eb2eb86fb87430dbebc7f266ba9ac
Date: Mon, 22 Sep 2025 04:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758517193
