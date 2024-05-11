Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 11A9652F6F
	for <ddprobe@lists.linux.dev>; Sat, 11 May 2024 13:32:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715434343; cv=none; b=pkwxHpYeOPMSsVC2EcCPCm/lQ8KoNm3yeoCMQHiajen5+eQXRnVNKtaRVVFzjglNyh/E3lwjUzTNWha5K8SHVnNu5oc14SKleBhSNwcF5OKwjQZX3ZyUH8HVK+VNkB5jaxTYdsIsqK//CpIJpFonxrHyOEgY0YikfrC3FLsQvRY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715434343; c=relaxed/simple;
	bh=YvR/yzK7NPzbjWpoDhKY3NHMMI7/K4ElW/Di2EZNtlI=;
	h=To:Subject:From:Message-Id:Date; b=ZTlOjxLmt0O9Kn/wNqF6dPyrfysYFhnLcLlviRro1LC7RgMhDBwvmW/YZZZYP+eEf8GebJMhT64e95NtiS50c0s9rLB0fGYXEoY2BUc2cuq5qLsGA+93LwdFktCjGCXqyMjWJVTq5HREvZafqKQL5x+qxJDW5YWHnezTCKWRheo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DBIl+qOl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DBIl+qOl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D78C8C2BBFC
	for <ddprobe@lists.linux.dev>; Sat, 11 May 2024 13:32:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715434342;
	bh=YvR/yzK7NPzbjWpoDhKY3NHMMI7/K4ElW/Di2EZNtlI=;
	h=To:Subject:From:Date:From;
	b=DBIl+qOl81q0hpeoUxJpRWwlO/vHmhD5hcZ2EceW/1jZR3bwbAPry7iad5CjT+Yhg
	 RFKMR2DOznPqTFLtDvZAtvmgaAGFWSsA9+3dH/+h5kNFCoR4zDDAeQFdHx0C912HmH
	 OdUnvPfc/QfQajl+gSYRh+Gm31OPJyb6Vro47AKlkc2xi5LC9HflUK7zI5ctJ5dFd5
	 oUWGMSuKKB8UT7fQ2xl68fHF0F7vdjNmccnSlbyozQVIOq/9raXQ9SIJGzbyNQr9mA
	 o/X2WGIUvWspWhwDzqPkq32T8imU9a9dH9LGpYvJToVDIGa9otKQ3tbTzcb/zxbHlr
	 CqwaxHdSCC71g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C1782C25B4F
	for <ddprobe@lists.linux.dev>; Sat, 11 May 2024 13:32:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171543434278.28345.4297776668604311647.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ace3266bf66f14b232b7c8988e34e28ed3e4acbac5561a6fa7d780e86be98d85
Date: Sat, 11 May 2024 13:32:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715434342
