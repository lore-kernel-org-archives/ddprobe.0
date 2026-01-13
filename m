Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0CD24346FB3
	for <ddprobe@lists.linux.dev>; Tue, 13 Jan 2026 09:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768295034; cv=none; b=keZtPKUbcEeDtwx0mNOGzxqrFufNjykTo2/+5YSb1WP3cE2a1cu8zCMoCzo2hScovULixMJhGg+0U+ODQQf3pGj1dQKZEy/8OuTQp5Dqa9xUm+ZKMmBAt9xsVZgtxIfy37xYlTum59LTXdDt7OndnQZrQfJcSGoVF3WFzVrCw10=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768295034; c=relaxed/simple;
	bh=vts+1J6tnuLOYoFPwosRHe4EY1XZ7AqdfFRk7FmEQwI=;
	h=To:Subject:From:Message-Id:Date; b=mE09yL9571tbUZGWsyLwG42FWAw4LxHVk1cK+LrOI0Hwgeq2EHHrFLf8Lwa8yOZnrNahMdZ+5D+OZIEiwcV4e1hdBgi/t0WqplkD/5Y/r897Js3SwBT/hsfkMQnWomekVuDgbAwMgHZ3v/NI89UwOK4eggfJTEx5yhr+ESQyXLw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QtSO2Byt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QtSO2Byt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7A2FC19423
	for <ddprobe@lists.linux.dev>; Tue, 13 Jan 2026 09:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768295033;
	bh=vts+1J6tnuLOYoFPwosRHe4EY1XZ7AqdfFRk7FmEQwI=;
	h=To:Subject:From:Date:From;
	b=QtSO2Byts105zGC1CQ2evTTHeihK3fWksC4b3PagurvO3ZdyO2Ska0dvvSBXI/6RN
	 5ad0tAdA1q3GNarnqqNkzojM9nfdWsDLjn6JL2ORTVTFr57HK07rST9IXZPtxyfvcV
	 mxqyaCG7RzREYksm5JeO0jYkqaPM35oefJ5mN82JzXPpHWsSWosTXjVmvCCjpy+lum
	 q3G+NBlljiqWnoJjz4u9p3yTwFY4Z2CzbAR24RyqUeDlFGQYOSZoDmnlzPY8gFWVrG
	 QUdMWcRBtMPPEKB9uDQGvUv2SfVd9hLfz2Q0gkIyxOxTsRf01g3QY0wZeVGEGxr9KJ
	 4TGFzC2qz/J1w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 958EBD29DEF
	for <ddprobe@lists.linux.dev>; Tue, 13 Jan 2026 09:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176829503360.10874.17579932524260498886.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6e59abc5b7bfaec14e5d811715bb08f62c37d4fa9332bf986b960ecc012c891f
Date: Tue, 13 Jan 2026 09:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768295033
