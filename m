Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D0211CD215
	for <ddprobe@lists.linux.dev>; Fri, 31 Jan 2025 17:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738344954; cv=none; b=lb8FGXCST0tgO4ZruSSEH/2l+bGLnttFXumQ/j7vER4TfhzcEir+uceq/uCgluYvo18wFBkJUbYxIDT6spk1jTE8/KY1tpVG5hwpwyUwh/19DSJWPaojhY9wAi370ALnZpw9DalcTfjWgeH0mTqRBm1T6zKV/WvpRhByJYElGKk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738344954; c=relaxed/simple;
	bh=PGX/zEVk4g1p4230NtFkx4Iv2k5PkZoU7tdDVA5Gm9o=;
	h=To:Subject:From:Message-Id:Date; b=KHWqmyVajWr9Fqrc7I5FzpFkp9kycfuqJsXKyNjYhlhAwD8A58O9paIXdV90zz5Q9Xv6eUKi3m+vtU5CuWczBP9sW0ojf60FOotAupPeQeZUkpxZHATb7VIeuvxlbC0mL8vSgQ6otaHc396DPTGKDB19F9521QEDseylh9HLl4M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=L4vvTaXQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="L4vvTaXQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AEDA8C4CED3
	for <ddprobe@lists.linux.dev>; Fri, 31 Jan 2025 17:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738344953;
	bh=PGX/zEVk4g1p4230NtFkx4Iv2k5PkZoU7tdDVA5Gm9o=;
	h=To:Subject:From:Date:From;
	b=L4vvTaXQLAiUUCoy9IcqKkNd3oglEOkxSq098ZgP7aZbdB+mgGl7hpwPHOKpnUo3h
	 kAHwiV//dILwkL7UFF5xK7Z1AC7nCfYzT6kprzhZC68gFsmxI08L5eHBX12P4G3h2s
	 HThNRK1jB0GIXGLvq65ENjnJ4mJso/bPVI0KFMw9bHL8wbOAFup+rquZrESPDFlr+v
	 00ivsgStBTB6mFFRVqUOTR9Sefm9URkJdmXSyF7yQxdwVlwtRtbEVOV9pJIuU/AheG
	 YGQ4mIU/hDPL/42qdR2Be5+RrDFi8CRlUv0FiAcPeYtT+NKyQcFdqiPPycjE8RqdHn
	 xhsFKA9WNDDlw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 985E3C0218F
	for <ddprobe@lists.linux.dev>; Fri, 31 Jan 2025 17:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173834495361.24667.16519051378487019459.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: af0c26d8a51f8700866565d1df17dc79f91562920d782500e79beaad1305f07b
Date: Fri, 31 Jan 2025 17:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738344953
