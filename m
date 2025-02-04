Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45B202066EA
	for <ddprobe@lists.linux.dev>; Tue,  4 Feb 2025 07:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738654554; cv=none; b=ufMLCb26W4dXzcAaID5vqd7vtODYqTnO7Wphl+mPa+9SGvZDDqKDTKtKjH0NIX203Q9537TLrJGUPupmf1wYPE92rxiGSRUzg0Q1htpasjYekdWU/8GLQ5ezW999p2EixX82dYIBWgYz6Cu7VBEYqjw6OIzGeofB3687E6Yi4Ps=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738654554; c=relaxed/simple;
	bh=J/VtvScIV9uyQiLVvwZyaUQ89NY0nEhXoNK52t0A54Q=;
	h=To:Subject:From:Message-Id:Date; b=eZ0tEjoY03Vx3Z53L8cEe8peUkg0K0Ld5CE5Hpdb24Amdihs23fdSTPUXQi3QJ7a2yk/pH+Hfpp6jpp2wrNGxvkSOo6irPfDYjGbl5vTjK+uRj2FAPNdKXXorrIGhoDamDeIQ0ildV4NOgqzlALIfvMyqk2ws5xL07CTS1VvrcI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AbaFtuiu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AbaFtuiu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9A86C4AF09
	for <ddprobe@lists.linux.dev>; Tue,  4 Feb 2025 07:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738654553;
	bh=J/VtvScIV9uyQiLVvwZyaUQ89NY0nEhXoNK52t0A54Q=;
	h=To:Subject:From:Date:From;
	b=AbaFtuiuvpes/NCD6dGEXeICTTm1WbflERit/GjDOzpS+1YXAMojuO/YthCDV8SbF
	 5gmKj/WblLvMNV54znrSrUg0Xo1dXrStY4SrXnPdOJ9b18j5CQFf207y2AUzR+quLI
	 8KsT6/wUVjiwYdEogY4h9ECouqTW/oOEdT70XJ1pGVgcfIkF62diOsKHNGKmUDf2v6
	 vNgAopOLxdpIFw29rmrYRxx4Wd3o+wmTLisFehQuIOv31oI/zL6Qtj8hFxkf89uGhi
	 P+jawAnTq5uQjKIpDb0F7SGXhX2O9AZYFj7/xgshfPO8VA1SxGzNafuH2wH8rlDiy/
	 y14SJN8tHBr/A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93534C02197
	for <ddprobe@lists.linux.dev>; Tue,  4 Feb 2025 07:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173865455359.9692.18137026257131674748.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 58bea154d830ef022b14aa066bf97f9735cb9e075935c60b9a596503322865f8
Date: Tue, 04 Feb 2025 07:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738654553
