Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35BF223AB9D
	for <ddprobe@lists.linux.dev>; Fri, 24 Apr 2026 04:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777006054; cv=none; b=Jca2IGEKp1kkaDwDtFToK52A3W40wBv/ugYbn2MhXRVxKTlmGOkrl05rIDMJmct5m1OkCsUoc3WvBW7WiG8Tj0XFmsPOKb/PwfzOrZNZtW+HJC6KUy7EMSO6+WNQU0Mm9JjRK65gnSMQ5Zj1mYVs1ER4z4c+8VEWRv886UTKpMs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777006054; c=relaxed/simple;
	bh=VcxFJPNjGw4EkZLkmBCzYW+2IUpOD9MfToLuYLCRWgA=;
	h=To:Subject:From:Message-Id:Date; b=AEo8qG1EUlDL5oyI+zADJJGr36WJX9x4bRf4O2G7fcuQgYXy0s1rrUwxaGSrYZuHKb7kv1jqwdtMzoqSF8DfuePGehz/PvGWsbc4+lPsOoO1AKk/44CbwGk+y/KHbblj3dikRfAxRipE8QiUZ+50L+rN4eGiIoibS3DSEnPbZMk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XmhuWT3C; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XmhuWT3C"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB998C19425
	for <ddprobe@lists.linux.dev>; Fri, 24 Apr 2026 04:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777006053;
	bh=VcxFJPNjGw4EkZLkmBCzYW+2IUpOD9MfToLuYLCRWgA=;
	h=To:Subject:From:Date:From;
	b=XmhuWT3Cm9v05Rh5un+Wdcf9PVEhRtmk+dweYLBnW5AeOQmwUUoIZVGBKNzIDiuk3
	 sX0LqQh7R8frdDcd+WToQ5hS3wBlPGiBqIUcD/s/oRJGzBUSsBvPX8J9JyKHHmLc2Y
	 iNOina3cMPLIwaLX7zqqZhtibwUUu+NB6sFV/6DekKAlFJR7bP/vD10uh+KcTtGD1C
	 vm2VfBjFVNUjGIEFDM0VzsRbOuS/5ocLENb5OcA6t9Jmon/egEMNtrIvcdRh/PVhGF
	 JRnLiUBbEiZjXakfkaF4yDF2OZcJr2srBnoidDVYtIEoKD5nhkgiJ1DU9Fk0/9oJNE
	 nffpmjLgyVU4A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA53DFB44A2
	for <ddprobe@lists.linux.dev>; Fri, 24 Apr 2026 04:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177700605368.14145.2144254473801234977.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 90ce4fb01d0e3ff8fed6c09403331312372e9d4e77f9097df5f1513a4fc39a87
Date: Fri, 24 Apr 2026 04:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777006053
