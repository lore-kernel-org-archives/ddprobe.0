Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3989832ED42
	for <ddprobe@lists.linux.dev>; Fri, 12 Sep 2025 18:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757701794; cv=none; b=oGjbCg1n3gYbsAwZhF9haUtlFfgz+yzzXUd6u4ALO5jT7V3hgLw08ZWIQCF1Lw79Zskyu/EW+s2gfKG53lD497StjK4i3AQF/SHP/INEy9SUZg0wXpW9bj8+VIuyUs6PJF1xv2TVx1PRl8ZuY2EmrN/9JBJnBBVL4paLTpm6tGI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757701794; c=relaxed/simple;
	bh=E1RexUIUmAlTfZeArwMNLa+SjrLioLPXt5Deu1Lwuqs=;
	h=To:Subject:From:Message-Id:Date; b=Yq5sbuBtm9e1RUJtoVKAmnTajswAWoScTo9F1VNWQjGeHDGV5q4WzIySQPzpDoWuoAVX4S9Y2mNJwDYAZWOLpEf9+PzAKhc0OODPyA8BXV907JNSDEIhelHhKHPt0Lh0ed2dSgPxG7uTO46Kmu4zsc8ockB3oLxEO0F2Y/Jgkj8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eqOBWWqG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eqOBWWqG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3D64C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 12 Sep 2025 18:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757701793;
	bh=E1RexUIUmAlTfZeArwMNLa+SjrLioLPXt5Deu1Lwuqs=;
	h=To:Subject:From:Date:From;
	b=eqOBWWqGSeHdD1Lb8TXt0b6WS2uGjgQPm3fgr6KxeZskzPAyZ2F0vdA12Gvrpytmz
	 3pYkuw6tRXiW82jnjMRe7V1+dSPp/+saKiQSNtVRIJEwViDcR0PXWj/B2HXxTn4XBN
	 kg+5AfvZDSU+tcu9jb0XnXcaSG3D3fuD+0VUI+swfPzrUo+7kZedeND1tCptNXN7Y+
	 KYqZ5qd1nvQY0FQt+rrF0phGafmm8Na32MfjKHYI6MhoGlH1i7Zi0y3wF7m9XkZjEm
	 Oz2lYcXwuJvO/4d3rDOl2KmTw0TKUd5DzOsrrrb3daOKuQY9J7NNhuuGUWVzZoL359
	 ToAF8/JxZO8JQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90BBFCAC582
	for <ddprobe@lists.linux.dev>; Fri, 12 Sep 2025 18:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175770179358.13656.2574812245404214971.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 475d88b7a0e147093500a7e9af78916222eadc712e8f58b39dfad354d920a25c
Date: Fri, 12 Sep 2025 18:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757701793
