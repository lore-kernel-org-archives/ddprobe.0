Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 200EE81749
	for <ddprobe@lists.linux.dev>; Tue, 16 Sep 2025 20:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758055795; cv=none; b=k9hYkV4Zp5C2/XfhwsR4cD/xOwZGd6PMMyp1capJ9e1igLA1YhwpIct/6O103tehwe6u8FU2nZpGUnrTAWmPlI6UPVWIx5iiL/oBIWKQzsXYPxSOGiset4veasfoeXopLMXsAm+alPfmSG8SxSM9Me39ndmukfjseMekOjSIYeA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758055795; c=relaxed/simple;
	bh=vggryhiZSKMhwavY1ZWsBMwPzPpYTYI44aOV5lHgTxs=;
	h=To:Subject:From:Message-Id:Date; b=SkfgcUI4OchVyvXhj73ZQGSsuiA/sKePeAgpDEwYybm4mE/mUWDZJv9M+mfnFVfEj8UQek605iaNLBYlx1XufyJeDDjOQtbcLOhDN1n8C2DR8/dYcK/+dWoU61E8yjHLtETFAy2YEqyvgOq2pqa2E3wqDTXkLrVeOtWU4Xl2Kb8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SbaY1DgB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SbaY1DgB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6942C4CEEB
	for <ddprobe@lists.linux.dev>; Tue, 16 Sep 2025 20:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758055793;
	bh=vggryhiZSKMhwavY1ZWsBMwPzPpYTYI44aOV5lHgTxs=;
	h=To:Subject:From:Date:From;
	b=SbaY1DgBk9QohDMiU8Q8sHaMGUzL9c9uOUpAIIhtj2bZX5PV/bWHoebTZpiGfdNd0
	 nsme7xqmrQrffEN9+D/+XdcxvI/BaQNqkgBHDPG1W8PF42uKL63li4Uj4eURXHZLLu
	 VPWh/PvZKhVo1xlFxbyBp2te7UxVZ0ox3dkCnp5+Dg/7C7JEug8sgrrozI+S6QGhBZ
	 N5gKbdhyp5+nNFkRoVNqKxVb0x5NvDzUQvnZFCZGi9iJ3ggzUuTx5GV7nppO++IDiN
	 PRXML0Ry2JriuVg1OKXGe/muWURGL33aGp+HAS/jogUs4tJyb1dpF2fa2ZnVrjuaIc
	 t2gVD8mhqiXMg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92F04CAC598
	for <ddprobe@lists.linux.dev>; Tue, 16 Sep 2025 20:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175805579358.9322.2780200658007509799.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3d024e9ab93681796e8e3dbc190aff3ccbbcd52fef855c258bec6e23c844664d
Date: Tue, 16 Sep 2025 20:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758055793
