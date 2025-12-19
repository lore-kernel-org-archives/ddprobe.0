Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1250515ECCC
	for <ddprobe@lists.linux.dev>; Fri, 19 Dec 2025 01:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766108634; cv=none; b=dRYsyypLJJuSBJE/Ik9jnMVNdDxEUDmRt45fx7ZsNfNhpGFoksy+uLJomxRVlPMam7DnohkRXha5MP38sVYcjZuCJ9B57EWKxi5js/g1MM2xHsZqXQAy/CW3KCYZA/nogiUXKXgncIiE/vrGBXQJoWb9057O9iG2o7naOKHu/lg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766108634; c=relaxed/simple;
	bh=uMF8GCWnL5kFauLseDmyo6nhPVz5PlD4wUusLnPdstg=;
	h=To:Subject:From:Message-Id:Date; b=V5+oVrfkj3lvpqkRbXKzzpH6fbwS4z933s3r8kFodmfkuYtqnzvNahKZ668uv1rXf7LtjZknX43aJ3zeyynXkeuzmdjZH1X+1gPVagPBNqul3xaALSyd4TAVuajr7tlscEI3s5EXyobi9hNxlC9TDImGA9Hsp1MMlx/OGLgqrbM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pdXdSrhg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pdXdSrhg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2D56C4CEFB
	for <ddprobe@lists.linux.dev>; Fri, 19 Dec 2025 01:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766108633;
	bh=uMF8GCWnL5kFauLseDmyo6nhPVz5PlD4wUusLnPdstg=;
	h=To:Subject:From:Date:From;
	b=pdXdSrhgilHUi7+cvQdd0nyRmx4+YSDFDJIFIxaJBZqXHqj4HmzoJJTU3dt/0ZA9O
	 DwRmLQKaG8Z5vU6jhJuA7VEXIq1qbW8GJe3yzsnTPS7Ypy+A+5gIHyQphBTdqF7f0d
	 Jo8q/LsffWmqZcLeHIcVGfnRbWJILghwixHOW0DblXcd1L0IyfmVlizS4IyMeUL+rf
	 QkHYoBYsR1Aylx/CmCnO9y6kJBCTyDOZxKaVLJSEprtTGThVCqON/yZiDb7oKhM5T/
	 anmbRXzRbIx2pyuMISQ/PRxCYsV2tEwqk6/vxPhXyoamLTomeRKlxUGLcC69pIdSc1
	 zSsnBwfGsv59Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91066D711D5
	for <ddprobe@lists.linux.dev>; Fri, 19 Dec 2025 01:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176610863358.26121.2212199083688174400.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d4e845b233860d19c4ec06f5e03051c40045de64eb618b5d2fb39fee761f210c
Date: Fri, 19 Dec 2025 01:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766108633
