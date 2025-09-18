Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 227D22DF717
	for <ddprobe@lists.linux.dev>; Thu, 18 Sep 2025 06:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758178194; cv=none; b=rmqqMfppCvWX0iu+dwDkss9xo5iXN5xZ1eZVsGu3h0CIKzk8G1GCBMoFTrI4EX13py5i/AgzF21x5cgCtMVKA4uNAw9lnW9RPBQFAuQPB6jqgItDtLCb0pbVUIENkzHCmTf0vRvmfSyFUf4ypvb5lgew9ud6u4+SgMuwe8dzJBg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758178194; c=relaxed/simple;
	bh=jNdoTgpfRpoZR7Ks0Sa77mp1mEg4eicO+QEZgpkMJbs=;
	h=To:Subject:From:Message-Id:Date; b=kSBh/U+seGdRT2y2a03ZAdAoYrX2B2bnQkY8gHGLig8ANhmfN41iok2c79yXdLUUMIh4zzXmMrOAuHfyZJLPTze0AGU/OVDiGZOeiI2wIu9PqpL4z7hXxDyS3FoD5kvNEtssOShZ3bz9X2uSZMaYHHyBv5jXEVIZxYE82/2AyUY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Oc5BJLf6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Oc5BJLf6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADEAEC4CEF0
	for <ddprobe@lists.linux.dev>; Thu, 18 Sep 2025 06:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758178193;
	bh=jNdoTgpfRpoZR7Ks0Sa77mp1mEg4eicO+QEZgpkMJbs=;
	h=To:Subject:From:Date:From;
	b=Oc5BJLf6IBla7Z9BwEoPoM4dEc0PNVoFf4XNuU4K5SCRhoVMwYN81OlDVmaKcryQK
	 IfCoXVtA9pLM0ZtnSoZhj1i8oK4X7nepTnUWpNyae3TWBGfYiOe0iJapFRuyGUKWI4
	 ZZwqR0MimyudsjkzvEOsNPa6TmO8gtcGw1K28J2Spq/xYKZgpMKA3RTp0Ck7qYtCOD
	 TUf4Kh+/rZj5jcmsVd2cnTg6gw5byCZ+wuVwg4+Ez7C4wn7JwQMCO5fHJjRJRiJVzF
	 DDIvrgkqYgtWfBibr/+81hWTeKfJZe0ICGlU6qJztoQECTfiOq2qVPWHF0mo2NLdZn
	 1rgenSMLAM+hQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A474CAC597
	for <ddprobe@lists.linux.dev>; Thu, 18 Sep 2025 06:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175817819360.31940.437219736619880183.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9199bd503a41b38ab1a9e16280c7fe9eaaa38ddb28afacd646aaec1ab670b448
Date: Thu, 18 Sep 2025 06:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758178193
