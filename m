Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 113581C331E
	for <ddprobe@lists.linux.dev>; Wed, 21 Aug 2024 07:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724226954; cv=none; b=e/rL63cqThizYM1y6D3og1khu1Rss1DYSE/R3L7K7QOKOpkUwxTMcRWT9DtN+vafmSwBFV9UIvSU7HYG5pnDcKiS06LPh7TsNUVfQpNngcoP/TudjVqAM1dYZaUTK4ud1TYeomOffea5uif+2kOXtpZsnrzHYpDwWAevLDlR44c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724226954; c=relaxed/simple;
	bh=+bmhzbb8+T6iyik77wF7yMHGpLtGWps3dILgaDcyy8w=;
	h=To:Subject:From:Message-Id:Date; b=QaibwiaERFg8ivsf1TrXsFsFP3yutYC+6RGqabpUI8m3tl8kCs+cUYS383wtR64klMUyrSJEbWQ1EYQDE3VENz16QlWY+FVOva5qyxubabSvg7rGffAk9csgrKTNXSVTr6AVWc05r6NwU99MK+BeB53DvhLCpm60OlqOH2oH0tg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Qf4C4zyP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Qf4C4zyP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7BD9C32782
	for <ddprobe@lists.linux.dev>; Wed, 21 Aug 2024 07:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724226953;
	bh=+bmhzbb8+T6iyik77wF7yMHGpLtGWps3dILgaDcyy8w=;
	h=To:Subject:From:Date:From;
	b=Qf4C4zyPb4Al9NUGToYJbURM+4CQGFCBsUF8pxCcVZiknCzcOoMnepbxMZJWX+P2k
	 xO30bapsFn0OZuYhFDsXH2wyri+h6E4JGQyLkLgsDEK+P5ErCn5VYOFOxZl1n2guIz
	 At/qStxU2SxXZKGQsDdmmglMHdHwoxuLzBtO9xVKSleRbmzI7VzjlphXQAUH1TKevi
	 8xKZnkgu1A3go7wGI637qUIOi3HdF56aw+N5ZZiBeEOtOVlIsWY64UYgdAiN4Vy9nE
	 hC6DRlKTMs+gF0v9CzhIPJm44j6zXeFZ1PcQ960QJ3Eu3yIOSzHYtA4VfUc29zTbm6
	 2uyiFwdv7tJBA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 988CEC52D7C
	for <ddprobe@lists.linux.dev>; Wed, 21 Aug 2024 07:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172422695361.29127.677019704919702800.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 12628ea9ab380997f1760bd58a296fc5af65e48cef61c3dbec230f5ad5fab1a2
Date: Wed, 21 Aug 2024 07:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724226953
