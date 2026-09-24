Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 90E0D37F33F
	for <ddprobe@lists.linux.dev>; Thu, 24 Sep 2026 11:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790248834; cv=none; b=CDoXCVEygbiDVZAHDRLmrmYZnkV+RzNcU3HDI3KOD/p0HeHN8w3EZMiFJdVjqO65bsDtc8bo1nfJHmVjM+bU2MRSnBBQaApsUeKAFG+lsZ600zE6LQCHd+ErOUX9b0mEpCuvKCL2uuiRQ1KxD7mQlQU4dDFjcVjSUl2T+65gRQo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790248834; c=relaxed/simple;
	bh=dIL5Ns+q7p3h+E7UHus9h0nQAavIu2Ozrk1N/RTg0g8=;
	h=To:Subject:From:Message-Id:Date; b=aTjM8qhhCbLhATm8gWdEjsmorF6uPfloPsmh3UkpexQVZRKdTcBlyPRaLYJrnrArwAeDocFyId8cujqB7jFuEY6EmJgZ7QMJFKZID3v4HkUeVdtIlEytqPEG50L8JcjLUczWWZzgMZM4fT6/8H0K5fz90hTwGxujf/l9qgP+Tdk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sZVKDqWC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sZVKDqWC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C7416C2BCB8
	for <ddprobe@lists.linux.dev>; Thu, 24 Sep 2026 11:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790248833;
	bh=dIL5Ns+q7p3h+E7UHus9h0nQAavIu2Ozrk1N/RTg0g8=;
	h=To:Subject:From:Date:From;
	b=sZVKDqWChUU7eYXAWPXAJuo5RZhQMCeI6bixEPJRPFyt7OsZXgtGvJ+DwRztFKh65
	 zlgzC6QqD1ICSpoTbLaHvP7nX6sG2xt9Bwp6hcUvk4bQM1EUfWQR/f1t8HJaNbKaZR
	 MsIsmEEmZR5C/W0uOdaC4uIRc8FrWXizRWBa7bFNsHEc14w57lJ6YXpZEjDD+hWc7q
	 fJKwadEkDzGc9r5PGyGBYy7xpmgFWGH+MP+M3kHk6ac6shzWoo8WHlgRR4XDEdAu9I
	 Ye9YcGXgD9pdqGvNVsediRQzqW26Ondzw38Iz4N46esP0m5FEC+SQA4Z0GcfA2PocK
	 3cDzQhqIc6Hfw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE391C9831A
	for <ddprobe@lists.linux.dev>; Thu, 24 Sep 2026 11:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179024883370.17144.3842655633560731571.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a43081f6a6f64fce31d5ab4f003a9056d036f12335a342162026c933a2a733a2
Date: Thu, 24 Sep 2026 11:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790248833
