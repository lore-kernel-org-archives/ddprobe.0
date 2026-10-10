Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 501CF335064
	for <ddprobe@lists.linux.dev>; Sat, 10 Oct 2026 23:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791674434; cv=none; b=eZFVFgOFsDqPWV4LNbIQw3CNMNM9KjmegCy5WOqFh5khuTiolZMrJBzYmSJMCUSHNENTlT5C/KwCDDOCMNjYC1jJMbrNqgfdDixQsNB8PQ0HBZWU3KwtE2Zkx3z9SvVuyinLS0NKJMhsD4TcKOMNdnSTbTokOwxukL+WST/FIXg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791674434; c=relaxed/simple;
	bh=/C0Dgv9texnNa+pvMgIGcVBEwe2g2BaKwP/aFJEGJ6E=;
	h=To:Subject:From:Message-Id:Date; b=DAwqmD3OLFV8U3yw+LjKueJ0a5ftrnAtDSLriNUBmSfVW/KKfeVW56awQqzsHnVhc8hczZI0L0PptKtXtQKFBNqKjO/88bikfee+Hpzks6C6gxYkTkBKP0DqN6nj4Q0qVYMd8ArJ7pipHPGxDZdZr8EuN1ICR+ZtM0PFGEd5Qys=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OUEuZhiR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OUEuZhiR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD2E8C2BCB9
	for <ddprobe@lists.linux.dev>; Sat, 10 Oct 2026 23:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791674433;
	bh=/C0Dgv9texnNa+pvMgIGcVBEwe2g2BaKwP/aFJEGJ6E=;
	h=To:Subject:From:Date:From;
	b=OUEuZhiRy1CYKNgyVxHtsad8j9hgscHAtcs+S33N7lCWjk/B90bbJ8FH9J5FwSXMO
	 QJkHnxIZfH1ZduI55f0qPox/lkFEmLgPRLXyy9vYb4xajLAeJQWfKk8LH3Up7RpMih
	 BkdYBgNamp0/GmHcj7O/5XpDxs8q9XvwrWD2dQFYYIUpbHUoSOd/HyYOqDcrtML34v
	 5U9svEwmQUGkifw3YRhwyqwT2+Ss9z5mu9G3eD3CE/ZxtEh9wkwVgD8KeZ06xfXlSU
	 t/Crj5E3Le3X4LXWMrx62fsfIq4i2R/w60i34s7xA1Fq7qC1G1WO0nJmuCwa9WGhMX
	 k0injK0+PQOqQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9814CA9EC5
	for <ddprobe@lists.linux.dev>; Sat, 10 Oct 2026 23:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179167443368.5933.3084847055262600014.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0ec19101d28c607bb1e666801d601a2797b896d53dda8ce1d80a73751f858853
Date: Sat, 10 Oct 2026 23:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791674433
