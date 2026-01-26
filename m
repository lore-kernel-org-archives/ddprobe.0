Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3039934B1B0
	for <ddprobe@lists.linux.dev>; Mon, 26 Jan 2026 17:13:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769447634; cv=none; b=UCsDSBZJggxYbpo6m+pyz3l5+qANXWUomCNrXMr8g6BqitOwImQBLaC4Fshwi+OLTGdlCUiKYGY/TXNt/ib9o0DRn8d3bDdIp3zLcJyK4Lx+6PQJlkEBZWYbLYHJD29+3DwORPLRgrhdioiS7ZQWZFhkr/2ulIGOC6PNLBEntnE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769447634; c=relaxed/simple;
	bh=ic/tNYhOFKdCvSJ1EHLmPzSeiSvVCF9bPhltvlq2Yzk=;
	h=To:Subject:From:Message-Id:Date; b=cKbfgaYkOyHkMbn0I9LH30MYGoatgqPNBLoSdTheHVPFbzu731ZjsMoO/d809tpGJQuRpN2Yk3O5y4NS1tbNbX+tt9f/1CrtHWVWmVyu/rfjKBvuyGw2EFLt/kfv6zz01MsQQY+ltWlwNoHhZdXLNeB/Dhubk2v7dv+UizuAOhM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=okVml3BS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="okVml3BS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E9FBC16AAE
	for <ddprobe@lists.linux.dev>; Mon, 26 Jan 2026 17:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769447633;
	bh=ic/tNYhOFKdCvSJ1EHLmPzSeiSvVCF9bPhltvlq2Yzk=;
	h=To:Subject:From:Date:From;
	b=okVml3BSj9i/I+ig9xSxosMyeF2XFh+UBNRER9Wr7OXoVzDiNsiyuUcAyGpgXh5ms
	 FF3j+GDixj9T3oeEbefeVMeVPl0oel85hw/5hgU61OKzKatGCknU9o8E72GGBt9lir
	 Ls1T90DS+EnesLhNwJarUgITOQ0DStu8RYv4KU/YWZvTCh3AmwZgyLAjdi7ZmtHwWN
	 roL2i90ft31jKvOR484a4q6RtBjUuHybepdf3yriihZsvonDeqZek4199r6ORu8Y5h
	 0Ofut5N+mOUSseOSVBK9++Kjt4dVK60jx/0C3rz2QNcDVOC8sFGCCP7iD/n55B/NrS
	 Cm8Dewc53Uclg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FEB5D19502
	for <ddprobe@lists.linux.dev>; Mon, 26 Jan 2026 17:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176944763358.21958.13480435554386884462.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e90080b1246d97618d159caa098e3373019b42ba35dc4a30b55ec07a5e66def6
Date: Mon, 26 Jan 2026 17:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769447633
