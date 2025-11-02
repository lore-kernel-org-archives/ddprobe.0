Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D19E42048
	for <ddprobe@lists.linux.dev>; Sun,  2 Nov 2025 06:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762065594; cv=none; b=L2OuI6m76Ta21EmC5KojAflrThxcfhRfQk2BveL05+x8h7zkaexDq3O8F55zOC0EKx487AgosErlkQRbMFbEtTjUMxevlFZ8ohyVpXAYaZKvn78vyo025sVmMevyCFZwilducLVldF/Lv3q/Bde6EjDcQfZGD0Pql9mIIT1fumY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762065594; c=relaxed/simple;
	bh=+2Tpsa8KarKBa8asUBiDtHrHhaFPPRZ0FJ+0gAqmMfg=;
	h=To:Subject:From:Message-Id:Date; b=OzpuM5EYc7PbU2h2SJ18hpPp26vhewTtVW+QcAkppHshx9ul2D0uRwTea8sfpesAivjCSCDwAFEqFjKwMWrnqsKy2n2c2DvhEkcVUrPudU7nvURt24eIYFzd9T9MqYSvhoTLJjjoe6UEFo86AD+gtMXvgMX8qKhtoQS9hFIyBZM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WZSo47AG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WZSo47AG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C32A9C4CEF7
	for <ddprobe@lists.linux.dev>; Sun,  2 Nov 2025 06:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762065593;
	bh=+2Tpsa8KarKBa8asUBiDtHrHhaFPPRZ0FJ+0gAqmMfg=;
	h=To:Subject:From:Date:From;
	b=WZSo47AGPI6mDWonEhYTNb+ZsTLUWl8rXfXFfIBRRlJnJ1RDTpEx0zLGVmkHnixy4
	 KyiyTb3DmBB4OhCdEH1rrXpIzkzPRsqu/NAxHY4/K3WWex1Q2Zr9kUndb4ThJpTVl4
	 tuLYbfboSIOVoIbt62y5+xC/mhmyaQ1nLmZqBTun1ijFP1yI8ftQ+AAaWg6npnv1qT
	 sTvI7+A2rHo3Cyf9/CO+oasySfhbbl7RWArW38nbdHVdJxQFo02Tlmex6xrKuTT5Ey
	 LIq3AKU00t3r82sZS+PqmK1IJXSWim0zl/iDC6EQxbhcNKzIwNW7L/WlkvITlmQXbE
	 wrCFciJ6HNzHQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF0CBCCF9E3
	for <ddprobe@lists.linux.dev>; Sun,  2 Nov 2025 06:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176206559359.12475.1520233847659669229.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 38baa4f064f1ab3c800f6dc602be90c6a813df0aa4d58ba4dd6e3a26beaca751
Date: Sun, 02 Nov 2025 06:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762065593
