Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 58FB216F837
	for <ddprobe@lists.linux.dev>; Fri, 21 Jun 2024 08:12:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718957543; cv=none; b=smAbpEodQZPK5Vnoqy24qVxQxgdWrJtmbTvEmVUvM676+vPd2AByM4l5sR3SH8fJ9kn9+nnhEGvYevN517mhhxgq1brAGhjuTbZTYIqjOWB6aetJ+ffkJKhUrChn612Bbk2ymMm7LPGOx05T3oBRzIRSA5HA3731NxiNQSkp5ow=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718957543; c=relaxed/simple;
	bh=x/JoX3JbodSocwQW/AwG3Qy7TkJ6yvykc4JC7HWJNFs=;
	h=To:Subject:From:Message-Id:Date; b=h3LYb+J8gPfNQSGT5rTndzM0f7dRy+MttnHbD7OxHHyKD/D3Gz4Oql1qm63ZGIyFo+09NBdz0ocznr8yEd7CqtutQL6xeD+vTRrg+KjF8YAbOEFvW9/vhGezFXmvbztZIBp4vdpb5GAnlldykvcZwf1RMEE7IbzuhOm+huJJNVM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=N075bms5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="N075bms5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7CCAC2BBFC
	for <ddprobe@lists.linux.dev>; Fri, 21 Jun 2024 08:12:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718957542;
	bh=x/JoX3JbodSocwQW/AwG3Qy7TkJ6yvykc4JC7HWJNFs=;
	h=To:Subject:From:Date:From;
	b=N075bms52N9Dz+icYiTFrBPRAAOYjeODCmegM0ejWcLvNrTu0kTtIt0K9IiEcYFFx
	 zE8Bn2aiROXiAu3jp7j1Sn27lTpFjS6VTX0rNRqLa2XEcTFyJ7kzATbovmKeR9n7Ww
	 1ApvH/KgtVVPDFVtdEOhk74Cu5gvNghz6zZcbs/BjZ1dpvIzND/F1yp1LegMifAtey
	 ev1xrbofeSzhVwNSHZpoADn490AHdCLm+7z5p1ISd/ShwG8Ls20U6Rv27wrAR10xmE
	 dX00+DxyBFpHH3UlzbJAsBeXppCi/9yBju1yC1MfSowwuRbOv71edT5lfszxIQ8cSD
	 TE6OokauOC3DQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BEAD3C27C4F
	for <ddprobe@lists.linux.dev>; Fri, 21 Jun 2024 08:12:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171895754277.19759.8078484686594454747.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 51b22360499870b2415cce89a7f2c563a5b9d100ee5ccf040d307c0af2d078db
Date: Fri, 21 Jun 2024 08:12:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718957542
