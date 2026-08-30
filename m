Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 58CC7184540
	for <ddprobe@lists.linux.dev>; Sun, 30 Aug 2026 22:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788127834; cv=none; b=Lv7F9QgNBnUSvC1mMvWS4yRi4cxQYHV0CAe2JfSh1Oz+YTyttwgw0hlVFadnaconyllQX67bNSIHt52zNLB8bnENQoiFGYX/aaUY5F/k+jqjewAAB1pU9h4nrPFf0URm/ewhWTKZtOXOFqGK+wY1LhU/7P9faBn0ylvDH/C/YcM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788127834; c=relaxed/simple;
	bh=wT8SFJtrsZPPj7eyMBTea3n734/fl7SGdCjcaspb4c8=;
	h=To:Subject:From:Message-Id:Date; b=JXzuQw2ARFYNXda/YhPo+ygQb3cFPtka3KC6ZmUnrhYRMlvGyVlGFel/x2mwXAAkNRAyeBbJZ0UE54zhRRh8YztnfnmNPQ0prEXYu+gNZ6bXgN8pyyM/+myxyI5FTjKT26H0wBRiMX2xP6NUXN8cE0VYpWm/5Y8mpy+KBo8Ta34=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EDc10L+e; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EDc10L+e"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2829C2BCF4
	for <ddprobe@lists.linux.dev>; Sun, 30 Aug 2026 22:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788127833;
	bh=wT8SFJtrsZPPj7eyMBTea3n734/fl7SGdCjcaspb4c8=;
	h=To:Subject:From:Date:From;
	b=EDc10L+eI62xJDvYOU/H4Gd3x9HlFALK6HU4DjdjXodOHEqAN5AsicV0ZRpDinHsI
	 OGP7Vkm1KqlkQeOUtxNkhqcDAC3L/efwT2gzC8MUEmDNFtFoRB60ngWoX8I7i0zfvT
	 Hwd9iRB999af+/sw30DstrZHi2owIk+3tlaBaTbNuOpN1fxNXCdziKHlLFMIQvElyp
	 FM4X8298+isaZ6SQByqtKIWBemjVB2BKG1pu/XY/b7fD6XNf9ycyRx010SXcVUNHFl
	 lXqAUTLYudsOzfgC+DOKZbW6yYKSJ5pH2xQkRyVrgFS5CPy/Wx369jozeE0IZsgpC5
	 WtNc/m0iin/iw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE083C61DE8
	for <ddprobe@lists.linux.dev>; Sun, 30 Aug 2026 22:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178812783368.14675.13739949729575882960.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e08f98eb287fb2d7258833bc34066ee3bc20fff22cc06bd4821e4f29f61dc4d8
Date: Sun, 30 Aug 2026 22:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788127833
