Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F354C3E0257
	for <ddprobe@lists.linux.dev>; Thu, 19 Mar 2026 21:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773957294; cv=none; b=KCbW+0txhmKlb0rtY2RZ5LSKxBV35l1s9Bysv6xZwkjJbKyqkfHAey5KabAfktGCkm1roIxGi087G7xnKfLn2muQpCcDoFsQPUA9I41Vl3AVMPzxhQpZm5V1EyGU2KS8lROlqF5IwrKhIhQQRq/CDV4fTZD+mYORmjuavsxrR8s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773957294; c=relaxed/simple;
	bh=NTDLoNJqJmOuVy4pOcMVgs+G7+av05JNp9zT3FT45Pg=;
	h=To:Subject:From:Message-Id:Date; b=U4vDExbTSDC6Lj1g1ekJu7T5IXvK+v9B6i0EvHEm0tv1+VgJAo6tdI5xZV8imU1TDGUzERC+UPaPA75nXScvYHlPGn/YlznmFQPubiT7IOgrsjF81+joG0SbQ7xmbtP6OVSJMeORBIWB3koy8S8fL9Uhn6rtKiFF8ZWPqdNeDGE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=e4X7JKay; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="e4X7JKay"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2311C19424
	for <ddprobe@lists.linux.dev>; Thu, 19 Mar 2026 21:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773957293;
	bh=NTDLoNJqJmOuVy4pOcMVgs+G7+av05JNp9zT3FT45Pg=;
	h=To:Subject:From:Date:From;
	b=e4X7JKayAhWsNz8Kk3ijsCnyFn16cHUyPRfWks+b0YFIimnYw5lfoMSuXHei56Hsf
	 /tiTUFDSw7O17DKbhHgcxcyIfmve85DLSZn2j8jYP/mvOO2VFh9cI8fY3fdj1M4iH7
	 UlpEkchrzOkKeEXt+wFV3a6cvN89B21F9KX3dYVNr4+Feto/Z+pginqPwK6824/CAn
	 6UXmecrGmeEcttQlfM2shsR35sWp0+Qi96MjrGu1gV3A6qD5domNaT8M9YB2IxoW9n
	 FstBv9Z4sfPDTc4xd73Maom5q46f9LYUWLnm3rDRZFKvK33geATS7dt/Dc0CKoudbD
	 gBgbA6DfmwoZw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F1C91091926
	for <ddprobe@lists.linux.dev>; Thu, 19 Mar 2026 21:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177395729357.23550.6001227176167699355.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9c2243ae0b6d19fbfdb5d895907748a0435a1f94d7d460c3ffac27082fd2c5e0
Date: Thu, 19 Mar 2026 21:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773957293
