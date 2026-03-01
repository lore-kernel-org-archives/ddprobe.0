Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48AFC26A1B5
	for <ddprobe@lists.linux.dev>; Sun,  1 Mar 2026 09:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772357694; cv=none; b=FvVQPJqKrhVIwndzCtQAmjbCtFZViim+LjGbbAcpjG6CTGn5Fm3bZdq6jH+qjE2dQ2jHSuBb0ZgckXKf+8BLBZ2pFvI6u/Dl5E1cyMIRJrev8PBxUtoxkDu3oXPqNROlPX3iGdP5zsZmfFovHDu0VidgxLBq3SvqJa5HzlH1zp8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772357694; c=relaxed/simple;
	bh=NTvygFmfea1u5vjNAWQ6cOqhi+7euHN3ivW6LCEmP38=;
	h=To:Subject:From:Message-Id:Date; b=ArpkENIG4JZ03WIzNdAiMrRu8LU7Fo0jBq1yRf4DxsuyFW48rmnmqKcXy/NkWgwIpXkigesYOmQajpTmRmmaGVfgNW8cXClRo6tkdwcpWkQAz+RC2TPLN4vhoMKcBIZZgA2zjlnhpLvdOg7e9Tm+4vlF55YXumjCNxsTa07WG5o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YczY4tdg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YczY4tdg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7FEEC2BC87
	for <ddprobe@lists.linux.dev>; Sun,  1 Mar 2026 09:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772357693;
	bh=NTvygFmfea1u5vjNAWQ6cOqhi+7euHN3ivW6LCEmP38=;
	h=To:Subject:From:Date:From;
	b=YczY4tdgIDqjolBL+xpSaNXD2MeX3J1puUZxlsj235ZuZ20bSbF0XxMRaeHAjlayu
	 3LkTLo8mvS9xKQLlIpovGWQgeMWZqTIEaYCu1C0FJtDwdDytbp9XqCH/n4yAXVpeVx
	 YH/aEBfqq/sPG0a3vv4P9a/hJ4+THuRYB+G0+AWMiiwYuKF8nC/NZ/jZMMuiZ89ILP
	 y0IHz49BKZ/8iyfOoGAykdI3cu4m7kuiqjBibYTbugvWuPdcHy7+LcsDRb4URv0078
	 RDH8mFx3PfYRtkQwIeEa5cDR6POtNueHo2lybz3Y6vuOquWMIozWJo0HYI29VrRkpa
	 R1aYgnKFKnlOg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A35C7FD0048
	for <ddprobe@lists.linux.dev>; Sun,  1 Mar 2026 09:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177235769361.10168.15344807251434527981.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 99fe2be36a6807f84102f703b24fbcb83ac95d0d3999255dd60726600e2fc7ba
Date: Sun, 01 Mar 2026 09:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772357693
