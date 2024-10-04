Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 56D421862
	for <ddprobe@lists.linux.dev>; Fri,  4 Oct 2024 00:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728000354; cv=none; b=pmFJMXmHNq9SxhikssvspG7gWLVh9zxAt8Dq+sDxXHdE7NiW7SbGy8p/5rC3pj9756ge5PNO2/OoxoMccwLY3IwZaUm/Utv900kEfCOXm1z8YQSfClAX4XVKnSBuNJ6iqDvHrBzbde1SFzryX4K08tP3x48IksDGuJN8UrZdEa4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728000354; c=relaxed/simple;
	bh=eH81Ys9RcW1oUVsYGI8Y6U1MDZ/f3Pn/bV0wlxqDA/4=;
	h=To:Subject:From:Message-Id:Date; b=oN3p4wCfb5wOgWz+BB8LpT6uNSWbh7PifJYw4IuGmvl+gWmIkG1zr5GPOxdcbEEwiE3FmmYDqhv/mzxJuqa/IYbTTFhFD2SPJf7ul7CRG3BK/9teeQIdxn86wROKEl33iOLcw4zi7WU0FuYhg8qegJNl7NmMVoFdGhFEUcgQ0N0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lS9iW41g; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lS9iW41g"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB0E9C4CEC5
	for <ddprobe@lists.linux.dev>; Fri,  4 Oct 2024 00:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728000353;
	bh=eH81Ys9RcW1oUVsYGI8Y6U1MDZ/f3Pn/bV0wlxqDA/4=;
	h=To:Subject:From:Date:From;
	b=lS9iW41gx+wT06Wr/1vGDGwddiAvazTokouJnu94PoLiQZChI0KqI2ZcQxhT4n9Ky
	 M7XS0P5C/8cMuLcKe94Lp9FLrRFMHcC/Xjd/EdIcepn/wM8jmsbqh26FoLUvV8zOda
	 lLV9QEGZyfgCtEhPtpu6Zg4q+hsC04Z3BnS/TuG1D9S6vwtgokHPVoqLFjSVhR48nm
	 vYBgi09DgW5uptY/po8y5QwVFtES39urx0fK9YdtkiipDUfovnVI36I1LxIEhdUSLW
	 SNuHcIOZs6Ds+HvbK7X52OsKYhxauUJ7XbwFsLN3FVOX4Ma7vqYh/7tDZuziOTV9DI
	 GbwIHH2VeBkBA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A527BCF34D5
	for <ddprobe@lists.linux.dev>; Fri,  4 Oct 2024 00:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172800035366.30869.14542813137331496630.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 287fb56e44647dea455dde4c4a5528954ca38717e9889718abe4d2b33df67815
Date: Fri, 04 Oct 2024 00:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728000353
