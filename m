Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BA612E370E
	for <ddprobe@lists.linux.dev>; Tue, 22 Jul 2025 01:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753148394; cv=none; b=RsFlQFBvEuqSIZVkPd44DU/Qn1sm6GQWXHg1TZcN8CojkhyO0lvPtOApAyo9VVjOYEcqQrvCcAWH8M9tC2tRronXauKfWR9FVXTCFNGQUFK6nalCKqGb4bIFlrhmAHWO8wtd4btT2qJimJcvmghvHlc8cw6wtCq18eFDtkBKaG0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753148394; c=relaxed/simple;
	bh=PR2Ry716p4OJFya2mWZkwVQoig0nrh1Cpg98TiDUnpY=;
	h=To:Subject:From:Message-Id:Date; b=GX0Yq4mUM/Z7xjNaopDA+VmRw3aMxOvMxfJGCRiNrvYJSSG3UO/od0aRubEadbhAJmtSdHfXqb2YXUsO0D64ki9MbtW6w2Cw3LCnoxmkJ5RyuP6cBMOxrQ54B/gAA3wMOYsiAHwBBf935YojyxoEzMX5tIPC1hBTHQpQczPd6u0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UIFwonN/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UIFwonN/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FA61C4CEF5
	for <ddprobe@lists.linux.dev>; Tue, 22 Jul 2025 01:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753148393;
	bh=PR2Ry716p4OJFya2mWZkwVQoig0nrh1Cpg98TiDUnpY=;
	h=To:Subject:From:Date:From;
	b=UIFwonN/EIRshKtwsnEOy2O8ZIl67v1fX//HHXqyUTNPYYbPU9zlk7oTiWkOiDyJ7
	 z6Aig06P2HtsETXpmw8nxafRFVvUTQKI98oTES7d0IfX76gcGm+n/1v57EAS5tmUMh
	 fEH6YynRs0I/Gp43pDlobUI/Ps4101qFLiLqVrMKsB2b3k8A1DyhEVpFYsD2PgB2Qo
	 t6nWI4cFixk+pDxNhn5rDJfTi95Ha3i0EdMOM5+FbjN/adjhEN5r2/xIP4amwqvsUv
	 U4mn2bUKnFkc8Xunj2brMndNGpDxYjXukMPUfzZT1cB2gEig9w5jvN35sE118ruveF
	 adx1pPvbcZyjg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F53EC83F1A
	for <ddprobe@lists.linux.dev>; Tue, 22 Jul 2025 01:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175314839357.17481.3760207896348002984.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1c2c32e4af1e4edafaf31b03aa5eddd1ccd668573b411f421a2586d74525acf4
Date: Tue, 22 Jul 2025 01:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753148393
