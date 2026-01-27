Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 253CC139579
	for <ddprobe@lists.linux.dev>; Tue, 27 Jan 2026 22:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769553234; cv=none; b=tiBfKUkscd6MiEjEb23ueZVNVXzDmMzGl+s3IM3vYGOMTjaL2BuIzyrpkajBJ9FK0i8gpSdWao0Lt5o4O1VhSbs3emzV4KSJSByYmeAKb1hgwlT2V8DMb9OSY8o8R2X5UAwfZVmX8XRpMF0wH7GtQo1A+zKbg916OIpn7I49TjA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769553234; c=relaxed/simple;
	bh=GDDpfcXJ1xXjn5C+9iPbWRbB5l9UUe/bYXg1G07o9WA=;
	h=To:Subject:From:Message-Id:Date; b=bWJA8ZLzikkzIrJdr9vzdTTlAqkzADaDrj3dYe1ulaVdG5VUtRDrwNbKSzols6m2vwyit3gv2cbJ03A1xRfa7+necAEoMyxxPXLeGsABKVSzV+EskxteDUk20R6Wq7R/NEgYDgxMDmFJLWg08iuuN3pHM9ouUMSq8W1+QDNgiQA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tjhVR0e7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tjhVR0e7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7BB2C19422
	for <ddprobe@lists.linux.dev>; Tue, 27 Jan 2026 22:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769553233;
	bh=GDDpfcXJ1xXjn5C+9iPbWRbB5l9UUe/bYXg1G07o9WA=;
	h=To:Subject:From:Date:From;
	b=tjhVR0e7dPXU+3Hy3SrqfIgE0HdOzkUXfGtHMy9pL/dsttmMeQOCiM2+5fessLhx1
	 d8TDagR7z/SRSPGsNhNSgVCmkVUH2rtft4xIlpDaDi+HJtZdNoOxD8n2VTk7WHNzmO
	 Dl5D11eajHcRssZz0rtKHELVRxVf2XRChrgw9Wuo9Z6oVfQpDZ8Qhy4Vn/gTmCYbBO
	 41Mw0sBY/SpL5jcvo2B+mbbzKETlfJMsuAfbr8fGEwALsURYiG8zotyoWz3EAMFLgp
	 9zMprm6vezZV01Ax2GXKD2kCKvPHOtSmneN4fvGP3JAlZBEhTDaZh9PEqL+zClRUb1
	 9Rpbv9ZU1d0ug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92E54D2FEF8
	for <ddprobe@lists.linux.dev>; Tue, 27 Jan 2026 22:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176955323359.5011.12311507438329126506.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b4b16d87f0a51b6a2129c4cae831ff88f638ba6f065a88cbe17725fe38abfcc3
Date: Tue, 27 Jan 2026 22:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769553233
