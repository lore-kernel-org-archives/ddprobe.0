Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CF1D23D7D1
	for <ddprobe@lists.linux.dev>; Tue, 12 Aug 2025 16:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755014995; cv=none; b=NfsWeTl8BBb4pZcEjHqwvKWsy/+wUdFxwrSpy9UylZQj/4qlRmWDfXnbB9YJlmXyyLPy/PTGZUJEWzcKh+u8Y/1UnQaBxBIQt3dVbmxMznv+ztxxG2U8Mu59fVor/qAY08i8JraCkQDkc1bWBgZm2e2x4ySaMCGlv3783Z5i46s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755014995; c=relaxed/simple;
	bh=fDFfhkw61mkbNAq2OGL0WZ+wJUHdU3Vj68Lz0l+6vik=;
	h=To:Subject:From:Message-Id:Date; b=BpR8YUit+JzcmCHtbGvCQTPoQk4/A3b7LoTppVpUyFn5Vri6HJInOtXazFRgNSk//wLav9sD16ipWi1m04NHo3PYq4Vkh/hoWI+g0mCa8ree8mD+LbVFeSdzj3/PpLCf/7mIdPb4nmoe9EZ75YN8gwa+HWt9bSPMO3LdTlElF50=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Hw/dOH6V; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Hw/dOH6V"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9BC33C4CEF0
	for <ddprobe@lists.linux.dev>; Tue, 12 Aug 2025 16:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755014993;
	bh=fDFfhkw61mkbNAq2OGL0WZ+wJUHdU3Vj68Lz0l+6vik=;
	h=To:Subject:From:Date:From;
	b=Hw/dOH6VUCxwqfTN/EPSIAUtjHWdz1V21t1hixoBc5QYA4AerSd+yu8uyBptyrU7t
	 OQS9JPwyZ23oyqkMD8g7DcBaZD9jPekmy0FfxVwaG3Bg4SuluBIQ0k4/vsOK5/XikF
	 xNtB8M9mAppTAq1twtRs9+Sc7GFyyCyE75Wn0tbEd6Ed0WrF5CXSOZVWyubnOjcarZ
	 dcDMy/ROlgKb2miya+wdicBvuou0nh9wXRhLQKTuVf6DTivoQgHxdP76+WXKc8HRew
	 MchGyfeLy37VEJEsMJwXUT+zHP0NzCMLLuYU4gnL2zvKy/9u0JE1JefvcuqnuX3YF7
	 VvtAQq0YwyFoQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FA5CC87FCB
	for <ddprobe@lists.linux.dev>; Tue, 12 Aug 2025 16:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175501499357.3383.11562664541142149666.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 604a5034e00114e5323c0e371b38bd13a2c19de47a6bdc03d373e9f0b6955354
Date: Tue, 12 Aug 2025 16:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755014993
