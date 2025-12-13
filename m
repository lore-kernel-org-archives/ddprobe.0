Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30B4A1DE4CA
	for <ddprobe@lists.linux.dev>; Sat, 13 Dec 2025 15:22:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765639374; cv=none; b=MkvHtRfXPNYQPkPA14K0kUq9e1XLw772o6nHF/OrfaOQUPVTG2ixX2K1L/LjhLmLa66eFkaulKdflJX1cAT9PWvy+qZDmRk6asQKq1QlbrvazXERw3ga5rve1s8FAnYpWfPqFTW+ztf18AQxGum2XzK7cOlARAsh7PrlI7nsgTQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765639374; c=relaxed/simple;
	bh=hFiV2RvTm/UPNbuMd6RXy/8Cu5nvpWGOuohK4icZPIQ=;
	h=To:Subject:From:Message-Id:Date; b=mv7I9MqggUur8L4bGmCemLqwQxR/H9C7t6lfgT7JHMVLde6QzXSGhekQt9NP2TliKQmgqb/Rm7SXq2yiaHvH57J5dQRbQPlMICkOJvzhc9eUIS2BdK1qemUZ6pbTFxTQiRLNxZBDjWo791N7ovE1NjUTktOPFOEEmspn/r8MaMs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qO8rQxev; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qO8rQxev"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB6A3C113D0
	for <ddprobe@lists.linux.dev>; Sat, 13 Dec 2025 15:22:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765639373;
	bh=hFiV2RvTm/UPNbuMd6RXy/8Cu5nvpWGOuohK4icZPIQ=;
	h=To:Subject:From:Date:From;
	b=qO8rQxevtVE0dbWvon+Mk+sAePTteeXMQRD47UdLyNc1k2gsqTU8JKTpJf016D5v+
	 nR92SbH+nBCLYqiuqKvAIgbE39r+J0OK7Pc0TZ6MVo73UVNyaoGOeYfP0kKUx5Igea
	 /3bdpZZde3DYPxfVQeYLu8VqmUp34I4LKpkT0q0MYv5FW3GmXanAsxtwjrM7e733Ii
	 bJFYsJhQS+mXi5kOUdkSxkX+OLOOBykqdR9VMqWDXEkbF8f3fJEziQ1vuE+4h3KfAR
	 t8wWQ7/Q85rlTgNr5+mwSKXdim4CXm/9AXXN7fR52lpEoKi8Gpzj8pKutfWf1rnG3i
	 P8glDuS5W55bQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97913D5AE41
	for <ddprobe@lists.linux.dev>; Sat, 13 Dec 2025 15:22:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176563937358.6465.4677989800269793050.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c92ee01af308dd8e177a72510cc7f5df053fc33f0918bd36d7266da2a374de19
Date: Sat, 13 Dec 2025 15:22:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765639373
