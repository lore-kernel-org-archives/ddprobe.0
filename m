Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47E0727280A
	for <ddprobe@lists.linux.dev>; Tue,  2 Jun 2026 19:04:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780427074; cv=none; b=G0oTCO2DKFNuWX38Ecf9ntTYs2/w2cc2ALXall61ZBp8zU+pY8627dh8c2/oCzCM/htCd/ogDAu/9Bi178WZiy4/475q8SIS8itQDpObh4hQ28e1fesicn8JPJPailbnyPh57JOFmXFmktKeJ4vSB03BcgWUly/OwTbbBn5zH04=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780427074; c=relaxed/simple;
	bh=YuwnZUc4bJScSGq/4F7ejGYkgFjOsLdEraeyAc0eV7I=;
	h=To:Subject:From:Message-Id:Date; b=ZNNbNfimsGBa4IXZCi+e6rVQCctQW4eQL0YSf+TBMvZYLkigg4jpgiqxBKr9KQMzZC+oKdSSHx5BtcrjxRrBiRGFBJgojOPuQo4lnYw6rPYz+ymYmni83QP2XpZB7RtUI8zneu3FtPhe6TwNPw6hlsNHYi8X+l8GSlVUeb5A0FA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hgnmoBq6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hgnmoBq6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C4DDAC2BCB4
	for <ddprobe@lists.linux.dev>; Tue,  2 Jun 2026 19:04:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780427073;
	bh=YuwnZUc4bJScSGq/4F7ejGYkgFjOsLdEraeyAc0eV7I=;
	h=To:Subject:From:Date:From;
	b=hgnmoBq6S6arZIsxbDHIjevoyyjiJ80j8CM3ttXKOvPD6NEaFnVpRLk1lGguWk7Au
	 xmlP2KpNeWA/Qi8RCL9D+8skzlJXv9ok0KwXN189A3d5XjCME7hsOc3sOd0PrlyI94
	 poor0LiWGaQSBZnyMJdBz5aApbeu81UUGncFL27oVygzXb/OGBX4P7Ib3/ihymVnIc
	 e9aXARP40cwTit8uf7p/uTBnhJ8xLAgc4U4mzKjYIIzv1dwT+9LKTrYQu7scS5PJrP
	 wUIX0b5JbGGWUGKXEi7ohqzL7VhEdTx6wqzUPXFe1yJIykYOQzwtoPdViAAKmNcK8N
	 1Q5b4ixJzbr4g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB1EDCD6E57
	for <ddprobe@lists.linux.dev>; Tue,  2 Jun 2026 19:04:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178042707369.809.3235969138655809517.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fe2e37b780f5ce2ca26f6e2da36126d088c5de2b480fa6d30ca0200d05b220cd
Date: Tue, 02 Jun 2026 19:04:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780427073
