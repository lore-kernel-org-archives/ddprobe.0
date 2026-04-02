Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C2723A7588
	for <ddprobe@lists.linux.dev>; Thu,  2 Apr 2026 08:15:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775117734; cv=none; b=QX5v5uJqRS5ScsOH7BzSb9VsEiwqsL6GlU7iPlZ7xrUsmg0U3W+YRDoVEUcnKE9kWwSfBdXfSKSqLNFedw8nMgP9xnd5YUeVIVCfIuv3+R1Li4wz1PNhnTUFhpvLaHS4IJnXfUaLb8BEy+HaKnGUbPxRJfbyQllBoDAK0dr5kxY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775117734; c=relaxed/simple;
	bh=ttnmkV+U+QA8SK675Jrxw6ggUGuQ81pkI9ajwyyLoqg=;
	h=To:Subject:From:Message-Id:Date; b=gU+p8mw6XDL1KCAgtKRBK71r1gSak2vqqGJ57Q+WKaaa6lFx1DfsecIBTqlna2dIf/Xkl4CgC0Q8bpWZOCY1nkRjtOTBguyaWSlexYTQN1YXTHahaWgOwFAWrDNJzQHMrXmmIjtMWC4XQ6s/ajbjgCLNdqGS/Q/y0insJEIyVw0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sXsdH+cE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sXsdH+cE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE0A7C116C6
	for <ddprobe@lists.linux.dev>; Thu,  2 Apr 2026 08:15:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775117733;
	bh=ttnmkV+U+QA8SK675Jrxw6ggUGuQ81pkI9ajwyyLoqg=;
	h=To:Subject:From:Date:From;
	b=sXsdH+cEKBnib8oEjploPgAgqCY221B0K62Vvqs91lOJIk85VcA01CHMhlV4CpalY
	 Md7v0EYb4/tpLsnY9tfgafrsJ/Cg1RpkPFazzw22a/+J0Wx4yS6ekkcVjMBuxxxv70
	 ae46eq/2lkl93dTwFl3kKf9fPvKIY6bz0uOYiHJjKMpQYQMbT+yK+98kRofrvaP3TC
	 dpbiJnE+Aah11etzRexvGG4CmpJRvDLacJEh7UGRScBOzkWaR93Q7999VPTcuZCziR
	 7gnvI9Gy2tjHFoc05M2b2mO1S7S0PB74HqG7Uua9bh/RaLGhZjMKn76ILlFmuKFCtv
	 XBroJAOMqKFDQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB80ECC6B1D
	for <ddprobe@lists.linux.dev>; Thu,  2 Apr 2026 08:15:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177511773369.14120.131559857426862182.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5f9a58e9b991c6b6cd67ec197721090f16bcab98757bfe23593876ce6f4f12d6
Date: Thu, 02 Apr 2026 08:15:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775117733
