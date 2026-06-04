Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 396C3239562
	for <ddprobe@lists.linux.dev>; Thu,  4 Jun 2026 21:34:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780608874; cv=none; b=XhCuvcpH8U9PN3ZUGf0BEZ6eyER+okrOlGvLt+De1oscKV9ulC9qoFSXBGLU0BqeHaOeoe6F6AMuLatmjXFEjlKAdm6vUmRAoLS2XGtPhy+wvKUShQZLElwv1eLT+ZNeHEfOusUcAWN+0UVzJ+64A2O9cgMJfzYfPq5O5i7kcNE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780608874; c=relaxed/simple;
	bh=lkRCAB9xuTGJg1wNS7i4d+YYSTZ8+GWT5Y7yuX+r2+U=;
	h=To:Subject:From:Message-Id:Date; b=Kx/2ty896RoCgiJv6waTZF02DwIy15lg9PoQK5O6zGnAHD80nIilCRK8k7y6Bjbh3KB4Nj23tSvceShMZngJs0x7ZvvOkAYRvt8+ekcF1WWQhUKgS0IOD7bP77i5IaN8lcb4/606SYmWI9y9D1iaRaWrg4PWxp35h+TZAlTMo/k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vOE5G3cT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vOE5G3cT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3083C2BCB9
	for <ddprobe@lists.linux.dev>; Thu,  4 Jun 2026 21:34:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780608873;
	bh=lkRCAB9xuTGJg1wNS7i4d+YYSTZ8+GWT5Y7yuX+r2+U=;
	h=To:Subject:From:Date:From;
	b=vOE5G3cTvs+FBXxzmQEG7KW7HjmjgClHP9AtRDdort7Q04d1Yd9JoM/vhVTnhPOOC
	 bAIdIOrtAv9Fkxewyal0FN0khZPKa4Fa1IPn3uSim9MSuoxDzRBpLhv6KWRpQJyq1g
	 bMrEs50tn1ijzehGXhfzLokuN9vefwUvo9oGkKC8pyoQqkP+pPXRQobc1C7TqSoIlR
	 Pckgao8JEvBKAQrVjKdqgNxHae76SKSZF5hj1UI+xTAsaI6k3wQ/Tm9VlyRDy73M1T
	 Kg565AQahOSACQfRv5D3lQ9xOunrx9vB2A2H77NYzPwSTLH0Be8YjFaoHFVYflhci1
	 E1kBgHUbMbEjw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5143CD6E6E
	for <ddprobe@lists.linux.dev>; Thu,  4 Jun 2026 21:34:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178060887372.30768.2161723930308951564.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d526db53591adaf11abf4a7c2771732e68d75a6e60c4c2f6fe9e6486d7e5acad
Date: Thu, 04 Jun 2026 21:34:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780608873
