Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 275A44414
	for <ddprobe@lists.linux.dev>; Sat,  2 May 2026 02:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777688854; cv=none; b=anVnjjGdqqOLjozAjvIgj/ax6emhUaMZHqO81IdihT14KtOiZhUGb0GAccgPFmy05MGq95Wcc13m9dllHIXX+IZw1KveM/r2WSq0h3sF+xRwxBlO4/gxheZdmJ18kF6b557JUCLN7VCJlh4o+7YnaNzsAyzLwrtB8agsrA9834c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777688854; c=relaxed/simple;
	bh=RZ5xZUh5Q2GUNhVFd33C1qI112+5WBBkzqWVnMlu9bI=;
	h=To:Subject:From:Message-Id:Date; b=EI7RPcr3BIsqTWrPUJ94HhnzQkgG1MaPJr0T8PYa/wrcTyahb00RtvdMq7djK+a1qp52eOiW6MDsMtN/jalt5imDluhpnykaDKA1zrUmY+pnqwvExmi0UXAGvZ4Ro3JAOLCDg7SZt28kbVd/KWaeZb1cKeQOXtdVNHFfFbIyX7o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WxJuVzlv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WxJuVzlv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2DFDC2BCB4
	for <ddprobe@lists.linux.dev>; Sat,  2 May 2026 02:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777688853;
	bh=RZ5xZUh5Q2GUNhVFd33C1qI112+5WBBkzqWVnMlu9bI=;
	h=To:Subject:From:Date:From;
	b=WxJuVzlvwKOnA2OL2sLsZNVEm7koYo5eOd9tyQmI6bgO8yKQWuc+zvqhohJ26VMy/
	 SFofHMLrt7pLznczFWs49SLtIJxDlSg1fYdtoUHi+JGDPLIUkt5s7LxFw2at0FEx59
	 zqvUykGHORHwP7wv8ZbpBfCEGWa+UHLI9c5S1ZxuZyVVeV+gAlZbHgk14+Q56uYPY5
	 vze3v3PqCDXTlUJZ5jX378Z+PS8acno5JVWdLJgFwDhDDHvKmtEMno0SGYinYguQGq
	 H5dVjY9dPKwDh+IZqyNx9NDRHlyYfUwl4nIHgUsk6ujP+BaHnr/otBnxb4FXnMqbRx
	 3MSh/sNJFhgRA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFB3FCCFA13
	for <ddprobe@lists.linux.dev>; Sat,  2 May 2026 02:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177768885368.4253.8928817340310615402.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6106c150e9f2353ac4f6d8235f77dbdf42f7174b4ab1b9efed92c6dd4e84c7b5
Date: Sat, 02 May 2026 02:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777688853
