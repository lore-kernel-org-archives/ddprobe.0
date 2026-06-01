Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C606371887
	for <ddprobe@lists.linux.dev>; Mon,  1 Jun 2026 11:44:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780314274; cv=none; b=O+fmuD5gOWbdxYhHZvlkXPpfebOGD7J8YcKGHFz2aWEKQiBvYmAVB8Nxjny76fAdekCirsQ3dpCF2xSvpzFyolanHCf+UEJmhfNXeAbpz67hOhUOhRT5LiP57bVyFDTJvQs+PkIZit+vxLyknRyy2O+Lm22aglYxvgHOYg/Rk/Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780314274; c=relaxed/simple;
	bh=fwrUgtRYXMNYdaCR0KNw4rfh6OsT/HMugsFhJG4Q774=;
	h=To:Subject:From:Message-Id:Date; b=RJbsctMr5TRpDVP6ICHyOzMzTIBgEYaEEsoXkg/a/3sdGlKAavt4CZdrlcfBv8sd7fbuZNcHwcMdWRkxDVO7zAnaYMdArm7ka6ryji8DAKwjn0zeL6yEGiQdreEetRSje0GfYhJTFJ88gqpfvM3wJhMo+4Kj0XOw084zAz0BLco=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bXrPGZYX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bXrPGZYX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C6852C2BCC6
	for <ddprobe@lists.linux.dev>; Mon,  1 Jun 2026 11:44:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780314273;
	bh=fwrUgtRYXMNYdaCR0KNw4rfh6OsT/HMugsFhJG4Q774=;
	h=To:Subject:From:Date:From;
	b=bXrPGZYXOo84KFm81VejZTQHhx9QO5LJFPybjOF1uFlU+Ra0eoYToE95aJq/zwD+p
	 ulu8VaMTkbj9rnesp91G3apaopacXZmFdMt17daQnbfaCMAdqwzxECd/aeuqcB/TQA
	 6Ym3DflTh6MGJZWIItdAys0B8ygMMFM3v9wljZ6MA5XpczuHwoA0y8GLKxHX116g/W
	 Idyc9wgJapoACi8LJE64K0/1Zu+gD/Rh5ojeMTAcV7RHOvP6B/2eEHV4sbrClb7VtC
	 ngEr7x1t0xlKBSHkobLI9h4u3OhSFUTRgvNK+dRQCywPHvW1g5+rg8Gkad/vX7Fd0u
	 81r48TQIsUilg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADABFCD6E55
	for <ddprobe@lists.linux.dev>; Mon,  1 Jun 2026 11:44:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178031427368.23612.12029589975220277434.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c90a6fda2d71e8aa3fc7142cda41bf71899fed157e0e72339f0963a644ca37da
Date: Mon, 01 Jun 2026 11:44:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780314273
