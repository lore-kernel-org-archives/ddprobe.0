Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39C7B23D7EA
	for <ddprobe@lists.linux.dev>; Sun, 23 Nov 2025 07:41:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763883714; cv=none; b=Dq5lCEDrCp1/eZdsYYbfWc9oCu5svCc6/AvBny2yK6FIMwNgGZCifxTalA7v0bmPF/wz+UUYxflcV77XrDIP3tzlLLB/0tWtj0UGpvDaIfOzXylHXeRkgQgpLBFwsNMshcfqk8M05GSHlneAOf6hUB9of0dozBsd33yYBbucGd8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763883714; c=relaxed/simple;
	bh=mzOym45XSNIFAgup5k4ZKzgyf/K0Ne4cRNz5WFL3csg=;
	h=To:Subject:From:Message-Id:Date; b=QHTSf/IewZqtqFzI/0aVzdrXctBReWjCF+MyYcFzgEl6PKFaXeRG2MG6he1QaFeDM6LVMx5gvXev7fhgbO3ewRUasCsAnniaqNEpfYe2wPHi4tinDgH/7ekcoONa9TqBFoWPkW7DO83n/7dntn0aM8YOQgBZA2Pu3aZuJDovc8A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=W1XF+kWy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="W1XF+kWy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A64DAC113D0
	for <ddprobe@lists.linux.dev>; Sun, 23 Nov 2025 07:41:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763883713;
	bh=mzOym45XSNIFAgup5k4ZKzgyf/K0Ne4cRNz5WFL3csg=;
	h=To:Subject:From:Date:From;
	b=W1XF+kWykDZQc8qeHDcSpp50m0wep3+jNRiNiNpXG7VhCE2Vz5WvUwiiv6g2RaNy+
	 LkzG78Cl5bqZztKPUzLquAAmI/Ch7I3ZFK1lXJJCYo0nZ1NTnwnrP/MeAo+7BWu/Z1
	 sHNlD7YoObuOAYBT8ollvoA/pa7GkBOOgXSun9v9x3jTI5OY+qRrzCnIDaLIACgsHA
	 AsbvpH2Hvyf952b3X6fEYs4DsNBts9aFCkA9CUu029IpG/FWcxDU+i4dNRCCf+szBT
	 Z0coIcbX7ePH3v0bhZRBQKoADQpHNnmaTlOCCgEIIAhKkeymp5FwanAH+uNeUkeZJU
	 MXzxb6YRLZPAQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94ECFCFC26D
	for <ddprobe@lists.linux.dev>; Sun, 23 Nov 2025 07:41:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176388371357.32475.9338631729432912588.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d383c3470c13fa66c6231275e661f1504f97fcca6e39ee108487421d5a6d2d94
Date: Sun, 23 Nov 2025 07:41:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763883713
