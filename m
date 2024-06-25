Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 56B9117C7C8
	for <ddprobe@lists.linux.dev>; Tue, 25 Jun 2024 18:23:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719339803; cv=none; b=aF+K9yr+6ZRN5LWb2DnRez3zmJR0ph7SClVpcPqHeHeIlQOz6pxYlenTH3+uDz6TFIPbwhTOaUH6rGwSgJeXBu1qfsKxAhmqHKFNw4HBIHbdUkjBdqe+vgJi1uv3nAyjzQvRKw0qVxtAl+I5EyawJjnXwHVOsQTou3KIBybLYAA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719339803; c=relaxed/simple;
	bh=Wz88K75rN7WSJgQaAZcaboUeFXz8ZUQo+45lUBEK/Sg=;
	h=To:Subject:From:Message-Id:Date; b=Dozh1HByAIQiTvsAmjh7U5bcIch43bt3/S+R8dwBKN+tFvwzbfW8XSaDIaea6fohIz2+WD8hQEXZ0C3B/Zh7acI04ZQf/SiyNHHJ4WEDlb8LGiPtaVeSGBKW9M0H9FWjQu8q7M0PCZPOO0n8jh+O/GVH5MB/FvpI0BiGhH40WfA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eTBQZJ/Z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eTBQZJ/Z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DE0DDC32781
	for <ddprobe@lists.linux.dev>; Tue, 25 Jun 2024 18:23:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719339802;
	bh=Wz88K75rN7WSJgQaAZcaboUeFXz8ZUQo+45lUBEK/Sg=;
	h=To:Subject:From:Date:From;
	b=eTBQZJ/ZgaJNuBBx9svzPitktuiiWLQgDwdBmbAjmSo5YMGa+cBObnE4mV6n9PZUl
	 OYQtm9ABF4ZZluZi3IGD5ROX6TyHaZ0h3Yg5iGaWcVX5hWVKj+fzmAUyDW7gDfSiAn
	 2VgisoGXGOli+A32Ez5uYyrHygZ5cq4zHieLr5WrATvVIEPeKpweqK/Pb/qnBBMt/B
	 4pREPntDO/ShZivzsdcTI67nmgPdeIU+9tfzJbjHwVAjZ45qULpsllX+9Sm/G2UtaP
	 CvsXNOWo/Gz/DmDzYw4tbVHwt7m0JcfDaTfNgPDIVG/6n3/sdpzmnQmg8IpQpPbYaE
	 ZqoNJyVwsPevQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CB2C4C3064D
	for <ddprobe@lists.linux.dev>; Tue, 25 Jun 2024 18:23:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171933980282.25547.17140353043098257160.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5e9637fa3beab31d59f188e62b86e7c8a7cd8dcaf7031b7fe057602907a065f7
Date: Tue, 25 Jun 2024 18:23:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719339802
