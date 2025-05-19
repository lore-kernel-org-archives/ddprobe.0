Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42D601DEFE0
	for <ddprobe@lists.linux.dev>; Mon, 19 May 2025 18:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747681194; cv=none; b=JTy0cKH+9hfKYxXjmGSUcOVEFaHBeK8U31cloSjIn3g2CBm3rmCDzwsdIl0Cxv1f9weWjTTPYTP5ybJHZcy+FKWgpzCmnyNNbXTjAmpRA8n8z18qfbYnwxBnMREnfrZ5HEoRPfCjfBNyXE8gpW4eEojccZGFJtnjukaBvyTUD08=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747681194; c=relaxed/simple;
	bh=khNwcmUDKfDZUt/9EBL2YjVsR+ZgBhA8o6K65E2o33U=;
	h=To:Subject:From:Message-Id:Date; b=ESHlpZhvDFwKa9toRzIFjsFWEpDjHP/h/oIMnA1lJW1iHwlgqbCDGFYgAQcen3GDOCBFPV1v5ErlOFb4s6beGZ7E/zCKALVcHyifYYV1y1jloIm6EsUlzoqGYFc0EhnfAYUVDgQjm/qJvIE8n+Rh1bFfUrDG+fn/VYNAJzzMq9o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DHGRwuYb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DHGRwuYb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6E26C4CEE4
	for <ddprobe@lists.linux.dev>; Mon, 19 May 2025 18:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747681193;
	bh=khNwcmUDKfDZUt/9EBL2YjVsR+ZgBhA8o6K65E2o33U=;
	h=To:Subject:From:Date:From;
	b=DHGRwuYbE/jOZugCCyi49J45FD9sD4DO0voVzN/0Z2Ch6pngM6tDEAdZOvm9//0dw
	 MkZx+6l6NScgQHdT+adl7GuesOV3BE3Ejh/ejuwHfFOdETilcU98rA+oqnWsKmqRtN
	 YQH6/+Tn8tWmQJjH8ykZFBVQt5BPyzYtGmqEfNbRW4vkLgFxjXlld7CHnREDICkpIB
	 QlquHfN087k2/ROBmfagKlxpcPG1ixo/7F4mEf15dqVGRrTkt1vfC2Dl72RSL8iLf2
	 gIjTPik4AY8tEbQMhOI1CodGL71U14SSqWeJfTcckfsZHiT1X5v5yAlm6QVqmXTuDs
	 mgMuTicRx8Atw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A19A7C3ABDD
	for <ddprobe@lists.linux.dev>; Mon, 19 May 2025 18:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174768119364.18711.14074321611216746562.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0b30e00501e0c1ed26c07892381789a9799cb6905bee9df7eb421aab8130d481
Date: Mon, 19 May 2025 18:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747681193
