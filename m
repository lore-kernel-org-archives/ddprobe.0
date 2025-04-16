Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B3AA238D21
	for <ddprobe@lists.linux.dev>; Wed, 16 Apr 2025 12:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744806594; cv=none; b=RAWWnB4HFjMSNLzrHZbdE55dZcVhjkTPnhA3aMBWX8vfDxZ44fOG6mKDJDCStdWcCcARE28XlUhxKJUM+U9ZANPNJcD7CKNfxV4VgAospJUkBTQakfUgYPeV5We00zLNLLZgvPMNHsJHGU6T0JYyoDsZtTAIY5FM8knK8joNgcY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744806594; c=relaxed/simple;
	bh=Au6bQk+WqR3cZ9sslRlFv2jrbXCVU/yPnjgD9jt4kU0=;
	h=To:Subject:From:Message-Id:Date; b=iNJDM2nosZ+nmWc5/bR06Zx6RFHC9o2njBMBLapyKasHdIycrKSdZTMOWmeys/54PnXvjjqkdW3ga/AD8E55sPjjeQH8LS932UTHc/TB3nPclQG8dq4DNaf/NLhNwdJ5e22f8nob1gpXk504zsd0Oca62/X4N6fzhOFLyXY+AcY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=V5pDxL/z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="V5pDxL/z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A941FC4CEE2
	for <ddprobe@lists.linux.dev>; Wed, 16 Apr 2025 12:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744806593;
	bh=Au6bQk+WqR3cZ9sslRlFv2jrbXCVU/yPnjgD9jt4kU0=;
	h=To:Subject:From:Date:From;
	b=V5pDxL/zloPrHhHyIs0sl/IHIUakfNrfateqw8Wqd4NMdmGA1gs2ijMZ63f94D4m1
	 i/c09qLQoTQCJyGHWykIOGq/rLuwd+0QcOsP+gtDRg4gEZBUmjR8VxsEbiTjzxN+82
	 NKo3oGxGTpkg9AF/XFf46BiR4aA5lZpGRlAEeOvs9/fWSO5WJmU3HMxu1ocjhJjiJ2
	 DJQrPrUueP40ukPhR9c+30XFqlmEdmR+oTKsIycwCRXKxVsfpiRsG8fN9M1fFMdFhb
	 QGehixlXAfPZKaq7cfvYxm1lqdX6akZIcth+QaI9b/hkLAuQy8Zdumvl51gUZ0xXht
	 ROb1TIXvaeE4A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94FDDC369BD
	for <ddprobe@lists.linux.dev>; Wed, 16 Apr 2025 12:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174480659360.8216.17504858167011851602.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ebdeaf5ce3fbe0c7141458cf54b4c36a78765ce980183228413a5d5a95fa1bd3
Date: Wed, 16 Apr 2025 12:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744806593
