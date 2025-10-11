Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A3242AD3E
	for <ddprobe@lists.linux.dev>; Sat, 11 Oct 2025 03:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760152194; cv=none; b=ngZQ9J5GeoESTikUGYdUlfsapTYhiS4LeFQDM8XYAiljOGhYc6dW4vlJmSBl92XLNiolU3D1Iqh9jbzhZbktMvJoluZ4Y6ip9cnx4Na0/crK0syS5PrAcl7A3xlKodkVEqRvDpah/nIzZ+DTDS+83qThffiBmRpEODBIo3z6+xw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760152194; c=relaxed/simple;
	bh=Kke4RpHs2hcJhdMNvm38aep7TFwESHrNw2eg0smCerU=;
	h=To:Subject:From:Message-Id:Date; b=N/nLORfAuQ6SlQMD7AM6KayP7f4cihUUIWv9xVM4WVoES3S3QE2A42ZxhvsoRwVL6JNZrm1u2qDsMj3WNueetKGnrYXow0EPj277FjEbWuDSGHYGjj0Z83DnOpeKvGEJISNq9ictmbhAjrJhQid42Qjdvx5pB3zYfxdnlkDtILQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZMmYnhiG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZMmYnhiG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A147DC4CEF4
	for <ddprobe@lists.linux.dev>; Sat, 11 Oct 2025 03:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760152193;
	bh=Kke4RpHs2hcJhdMNvm38aep7TFwESHrNw2eg0smCerU=;
	h=To:Subject:From:Date:From;
	b=ZMmYnhiGntH8mdJVJgv1NfSU3ITRJ6Sc5PF7uP2+Frb4ZhPXKtiR0bhn/avmk3i3Y
	 u9RSNWWp0CFzfU3H6+e8k6IleITAPa1F21Pn5WeFhNgZjC1hii/Y6l5tDYz+Qf+MSQ
	 osVLE3EYZhfwt0OkA1dcESh+2k+GyS8f+XZ/QsXjOQsa4RVtYpv+Ib3KLp+34kIm2z
	 iLzIKQpd7PkGuGWVQWGfItaFv2DXqJ1WRZGy9Is51kWSFyhWT31KNHv0oGCApgLAGm
	 qv/4NHYZTXgChV9Iy4EyR+EgnHnCj5K+zHtgTbyd1qnPMY336D1bO1M4hiL1sdji20
	 0F656/0RAs07g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F2F1CCD187
	for <ddprobe@lists.linux.dev>; Sat, 11 Oct 2025 03:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176015219357.9533.822059769977746496.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 70ea04377bd08564ba432fbeb45982bc5759e00304a0d1557dd5056b6ef0c740
Date: Sat, 11 Oct 2025 03:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760152193
