Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 88D10492E55
	for <ddprobe@lists.linux.dev>; Tue,  8 Sep 2026 23:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788909634; cv=none; b=soJJkZtOFGFapF1KtJdCBgBaSbLpbM2stbsxfe74NuJCXRhyAyVBc9MbYak1NQxxRq8Sinpi4NJfzPYEN4jFZhmze53007VtYFb3ewQ8jch6OMonVlOBX+0h3pOKm6gj73nrqAbjmAjgVCqaJHY9FwFFaZ24EErodfa9ZjKBRhk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788909634; c=relaxed/simple;
	bh=D+IqM9DBme5/yjzt/DcaGsrOILGHTpwyBZ2LqI4cu4g=;
	h=To:Subject:From:Message-Id:Date; b=jv81yvOm0fV2qaf1FOC6jLF97IHzpNS49nOmtXhkCOI2wsOsTw16hVkoaBSu4e7N42sefZNkcIY5AyBbb3PriC9q+kX3S6sbUS1BPuYzLte9CCDsWcGst082oFMj4EQYaeOlTupqscW7eTddQZoiadRvKuU47KJJm1bqMVWKDyk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bmcAe5dv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bmcAe5dv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF50AC2BCB8
	for <ddprobe@lists.linux.dev>; Tue,  8 Sep 2026 23:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788909633;
	bh=D+IqM9DBme5/yjzt/DcaGsrOILGHTpwyBZ2LqI4cu4g=;
	h=To:Subject:From:Date:From;
	b=bmcAe5dvjG3ZWifqDiDJR+g3iPFM1lrawDsXHfa+y29B8tNTYspO7BRZ/iIhYjrgz
	 Egim1tkB9Bo8P7fSkOHzZ3MAgHWU4r4FpKq/1ODpuSZdfSmOfg8hPucPzJNvgVo32f
	 wMIcSQrihyJPX63bU03M14bKG93aO7a80bnFt2gTDao1b6DhZNevMpDhyXlJHtldz1
	 JHtrdlhXkAAk1fCWKZcxHGQOtnTQ0p9Mmzu8tSMH4fj+9BP3UzVSD1qneWMpn0mk0L
	 b57+Jg8ReHTm/zIServPm1H5O03w9I1cngK69vxnjdJW61yc2atApD8tiQMVDOfRzL
	 +Ewp8Q2VejwaQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAB51C79F82
	for <ddprobe@lists.linux.dev>; Tue,  8 Sep 2026 23:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178890963368.31049.6311159659010672539.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ccf9f0ec704bf84ddfd453a99e1b6cf92f3d692fe1357a47d4edc1696a16983f
Date: Tue, 08 Sep 2026 23:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788909633
