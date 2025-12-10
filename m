Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BCE321C175
	for <ddprobe@lists.linux.dev>; Wed, 10 Dec 2025 13:22:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765372974; cv=none; b=vFBZOiTvUrL5Z9+SPLhXkVb5KF/CVBNw9JNYDOsHlO8UD+GSMsa5O0rwtG/SG5AXJQ3B7xDbyYds8NhbSMV3Lu3LsRj8m5X0WptfiZJ1i/syN6BBw8+LtERzBXZ9lRLokVjFVt5qQTTZD6wDOI4To4AVA9PfX/XuSOE4Zyrm0BA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765372974; c=relaxed/simple;
	bh=sURADy8sqHkJDlVFMiQ2mkCPXVptLJqFi1pwqeRs0wE=;
	h=To:Subject:From:Message-Id:Date; b=iCHEfYE6VvVcy8AGZBocNR/vATCKsQYZYR8fUVC4MfuDXNpZLiUN1sO8SJHcPW8GvFuFrE55hYFA3qwoJM+Ui6OsWQJ+AMrwCnDN1xNpDjOBa0aHR3RJmDL04klyiZnYmJRq1Flp/6PP0mn19piIsthWev6bzW034BzM59iazHc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GrdQQRJf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GrdQQRJf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5042C4CEF1
	for <ddprobe@lists.linux.dev>; Wed, 10 Dec 2025 13:22:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765372973;
	bh=sURADy8sqHkJDlVFMiQ2mkCPXVptLJqFi1pwqeRs0wE=;
	h=To:Subject:From:Date:From;
	b=GrdQQRJf0TGOn16bCKG7RFAJsuHrrtnWsYL3dA7ItXdEYNd+kPG8cQHM2GBcYp5c2
	 ZgQD0oBmNxVsqyRG+hmRZlNExrDTHvaCVN0u0vgf+fOBDx9m092QatZg7w3m8mntmv
	 e5bAvQxP3p+naX7iaRmVxc6oqv7urXv6vAZEUStbWCCZ+d4hzsgGUqvKBL9ncZPDXg
	 n5NsjNUsxeMDG6TF6v3DWKSDhMzMxDlLO8Ln7CW6Ok4cpFVicap8UqY1HaRFXsB5bC
	 lvbuNCE6bj3HPew/xwVhH8fLoT3iZ9I0XLBKs2o+NOK1VWd0HEgME2Pjvgux4mqSTl
	 bDq8ijvNWeCEQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90853D3C545
	for <ddprobe@lists.linux.dev>; Wed, 10 Dec 2025 13:22:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176537297358.31026.15690110017585711299.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3e6777417b5bb7643b31543331091daca9e48162b04cd37006d17e246b9c09fe
Date: Wed, 10 Dec 2025 13:22:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765372973
