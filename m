Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0355329BDAA
	for <ddprobe@lists.linux.dev>; Thu, 29 Jan 2026 00:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769648034; cv=none; b=lIV2oHZVXQ5wTOPbgEL5hkDGGBkV0+nex7I5uhxoh4+9RLh/XWvIwoPN0r2kc7tHHnr8SfTIVXmuPh5EQd+tK9AfKSgHULC5bYL8T+CHrtC2JwP3zf86Z81mxo5UPHyHiLZ630Tvp1SysIakG27fniTipt6VpFBM1/kpEdNxurM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769648034; c=relaxed/simple;
	bh=WQSSt9bdHDN7kH1G/NH/uW5oaupUYB0o4aXebXAKIL0=;
	h=To:Subject:From:Message-Id:Date; b=Ck/YFxbsvk7Y9Dh+rQR9N/SPCcXNzxmhORbJBNULWFFTiuD4N+kOakpqMeZK+TLYN0VsWMgh2/qXXOvDIu9YB4A+4OrJiZFymnK/wz1+iMOcQtjSQ2XA+o1fvBv81kwm1gIW13ZtU3cuQk1LUiRhU+pVdKNk34zhFJFg8iu32rw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AHMH2lpH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AHMH2lpH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1992C4CEF1
	for <ddprobe@lists.linux.dev>; Thu, 29 Jan 2026 00:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769648033;
	bh=WQSSt9bdHDN7kH1G/NH/uW5oaupUYB0o4aXebXAKIL0=;
	h=To:Subject:From:Date:From;
	b=AHMH2lpHBYRmXHTJ3JOclRKg8phrjcrInfdwuIru0xApXsqTLtLiQ6vnwSsXYvgct
	 DdJFHPq2ABhVhfICWmNm7UspRRSlUHxv+3aBANAjPlDVszpExfSoA1mkxcQWBvS+oV
	 i0pF+cPcGGf0veWyvFK3Xw1Zsidhnmm89JyCnZejKiYgV0Yq1wwd3A8hsn/KufoZSv
	 boY/BXER5X5dORZUC/hs7U294NjDtZNAcpTSetCiJ9pyHERm9HWgEyagY6acMwY6Pq
	 OhxyHA0EicG11gj5B3ayn7KflWyquPOaamgGsV/oOZmmi5Uf2Xy9PX4/vhGbTi39bM
	 ti1S71WB2zcDQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9008CD46C16
	for <ddprobe@lists.linux.dev>; Thu, 29 Jan 2026 00:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176964803358.24554.16378173307090754416.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0a588ced2a337e629311207035fd701013623d120c8a74308b8cf56d64bcbd8c
Date: Thu, 29 Jan 2026 00:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769648033
