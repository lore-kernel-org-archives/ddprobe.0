Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5FF8F1843
	for <ddprobe@lists.linux.dev>; Sun, 21 Apr 2024 02:20:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713666024; cv=none; b=k0CbB5GRG1Vimt5FJicpLzN3blZbIOT03nNNvou2trhbJ+6h3Q7D6sd8oU19pny3vHeGfLT20Hr0jbtKBm4FWlRTjNsZlSJglPG3oJZifs7vBB6bUgyblaMApPjFE9H2651JW8CtZo/xhYXNUvodzTlIvpGvT3BKxPmtjCSYfQo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713666024; c=relaxed/simple;
	bh=H/ibn72iTo9RpClfDox+X7xtZXdVT1eWOHtZqA0kH20=;
	h=To:Subject:From:Message-Id:Date; b=QkJyTzPfN4pwHk4ouzcXXSzs4z3IokDLEOEHdIQiZrB/lKN9wmhbTzGQxAOtX9aXJ1BsVEvyv2u/hPz8xQNdnV/hLcr0lSF+RFyRb/7xmPmrS7B3/BZr+TPsy2IUZXxnddHnO8EtQiuluR2e2UxvAMnSg9OIz+HcRxrUBsTH1cI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HpXB1q15; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HpXB1q15"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB9FEC072AA
	for <ddprobe@lists.linux.dev>; Sun, 21 Apr 2024 02:20:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713666022;
	bh=H/ibn72iTo9RpClfDox+X7xtZXdVT1eWOHtZqA0kH20=;
	h=To:Subject:From:Date:From;
	b=HpXB1q15+NP+sQhuZucA0XpeoXCLIp1o7+jjoHRpAjN508ZOSAdGFXS+YyYZ6ClRz
	 iff9VB8SU6onr/UcxRXMZ4OW/SJIf+7sr36kmjtNzRxrjYxfI0mR6raeFbwMsVr94O
	 rY5o2VAOdFa8fgRs1ckDaGXRtb4P65BFMgf2mQjr5uoRc6r+MyHmN/e7oNlsTFAh7O
	 VuhzW60FEEAApbhoCVu7pe3vQAK8bcy/kWIHFkWm1oX07PGdrU8D44L/j81v4vow1p
	 pgEk1eJHXDoBFOLAagdsBB5DrIGhOtjeDYNnEeifHQ/uc4fKTgHIJXHnpxadvWPl5e
	 Sx4iqvtUxdZYg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C110EC4345F
	for <ddprobe@lists.linux.dev>; Sun, 21 Apr 2024 02:20:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171366602276.14794.8251667624080890656.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 63f879417da9e0330355319ad87a08675a31eaa06afb520a7b4dd26b2ff327f8
Date: Sun, 21 Apr 2024 02:20:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713666022
