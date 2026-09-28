Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 64B393DDB03
	for <ddprobe@lists.linux.dev>; Mon, 28 Sep 2026 13:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790602834; cv=none; b=krnLdwXJwg7oAHVgQR+QnzhQlKGiY5Ep3fX03sj+lJDxI3AoltGgIF4O+22fhx5Zc1lMBiuHR3W5GdS5XbbjHNAfdZBH1jMMONVRI/k+TYB6/6hgR/h2JikxqOjZWCEbJOaKMvDMaivOZvxby2x06SZwmbjV0NsjqrvyeVP3m/0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790602834; c=relaxed/simple;
	bh=xALc08zACoczCZ3eLXsRqR7r7X/6petkBJQtkqDWzyI=;
	h=To:Subject:From:Message-Id:Date; b=h68PHZ1p2jhUTdJObqz1CEkVTr7gFREKITJSzRdJS1aQlJu9Ie+3BQvyVsfcLYUV7uQ6OX4sHxawzkCbUQ1y26/M2rasELVoqm/gUI4+MfWpS2Am8mR7ceqNqRj7MwkGGCn3exTHsGe1czcmZvNfkmBEP7tKJ6Oe0ISH6ZbQ4ic=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TlVe3BYY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TlVe3BYY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D464DC2BCF6
	for <ddprobe@lists.linux.dev>; Mon, 28 Sep 2026 13:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790602833;
	bh=xALc08zACoczCZ3eLXsRqR7r7X/6petkBJQtkqDWzyI=;
	h=To:Subject:From:Date:From;
	b=TlVe3BYYsj31zZMrPnekC3TX8P2oSiY1B3fW5IP2ngASzETb9wlww/ROUMAqDeain
	 9oQq/WVYNIqJ079pmwhETEacYfmjopES0ivTAQ+u3DDhKzx/6JkB8PHqGmxfDHbyFx
	 J2hddpu9WiA5bFrWCZdsa4r7uSHx5U3fTjCxpoTdmZOLr7wnZ1OY2jEZUCUsa4ULcf
	 FV+1a3Y1t4agRCmSdKpU4VlWZ8/etWaVuh2xCTWKC4IrqwOh4aLP944BEx40BlFEh3
	 RseG9yDj0KAHecRyAkaUNnFL27CGSjOPZ6RDVjDibLORYZt006IyBtpATQ9oKlkJxP
	 IDGBKmt00e8SQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9F7EC9833F
	for <ddprobe@lists.linux.dev>; Mon, 28 Sep 2026 13:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179060283368.31309.8541073355875918358.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 27a58d041bf6c90085974d8dc7a9e3e86c2ecbc7f9731f076179ac2d6a136551
Date: Mon, 28 Sep 2026 13:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790602833
