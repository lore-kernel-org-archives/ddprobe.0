Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1469C32D5AA
	for <ddprobe@lists.linux.dev>; Tue, 16 Sep 2025 17:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758044394; cv=none; b=LV9jWxwfkFmaScKZ75goDofVrl0YSDDo49qjx7c9gc5coJZwkR1EdkZ4Juk7wNaa+8g4Y+YuLdWgSRff6Ci//Dy1QpzQdvl1ke0yxKbpLm4PRN/cinEwpui8QoA74DOJsi4Y3ZOmZeL40J1etG3CrJYgNhe0Yvxa+cgw5tgs8iA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758044394; c=relaxed/simple;
	bh=eBcH+YTKGkcuavp1ErOrVxwSQW6dxgHIGsjKMak+QV8=;
	h=To:Subject:From:Message-Id:Date; b=QcXW6miy0E0GCl9yt6k69MMjJmKy4alxi91eNn42T5Yz+T3zVn2D1w9ZU/oCSveXr7smy5HGtWCY2sJIVaTP/AMcEF8gMKa5vd9KSg2jceFfiy4ZNLV82M9f5AB/vuggcwFoVDcCNL1zJJBlOiZlL7qj8YvhEPIFzgynX3NXdXI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LLDZPPvf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LLDZPPvf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A05EAC4CEEB
	for <ddprobe@lists.linux.dev>; Tue, 16 Sep 2025 17:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758044393;
	bh=eBcH+YTKGkcuavp1ErOrVxwSQW6dxgHIGsjKMak+QV8=;
	h=To:Subject:From:Date:From;
	b=LLDZPPvfn13E6PVwy5YUB4yzJcP2talJL+69Fs35pthk8KB1/iR0VIf5Bc2HMHoh4
	 nCn2RP+5LmD8aVm1/2ulcUhy2fJ1vOTAiCTzihkyqXtSBnwjEYE1Nvl1EsxhEeNdft
	 GjSeQ+BAHj/mzPMPk1Abzp6L20o1CKSPhDPign4EwudnhxmG0N/hUplkyKLOtWUGbk
	 bPS7ChVVSHJqDnscAOQCxS+vzwwZ5TVXIrs6wm1yxtjwl1ofBA+ICZ5zwet6EbzeR8
	 x08J8PRYDqhuP5xozF7gW+OqiSZ+KLcaHrbb3jcA+UKYYazv7yvOuRSdBRtXR7tNip
	 DwfyTDPQIzUQw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8ED0BCAC598
	for <ddprobe@lists.linux.dev>; Tue, 16 Sep 2025 17:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175804439357.25407.17536993180802419535.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e46c259bd576cdd9c098c14d7d610ffaed07c4e9bcd77b92a6b262a487edde37
Date: Tue, 16 Sep 2025 17:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758044393
