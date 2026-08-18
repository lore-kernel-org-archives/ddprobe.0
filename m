Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6710718B0A
	for <ddprobe@lists.linux.dev>; Tue, 18 Aug 2026 06:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787032834; cv=none; b=FDSH36Dmowk7Lzx7kRy+7Vgti1h42mVz27wdkRUWm4MfJv4eoIbySi7Y2HBzU4pneLaskmhDwsPmdX3Ramh07HtDqprzZaKBDpRunW2dxxXvHi54Irq86K+q9+WjkK53kcrJVCKXkfJqNacmwIugF2YA+Zpy0ve9hmbKHe/ZZe4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787032834; c=relaxed/simple;
	bh=tWvda4pISWt4o/X1foAddWHsBH3KCT7PZispZmwZYRg=;
	h=To:Subject:From:Message-Id:Date; b=ATu6cYjVVPRCnQf7y8Tr74/iebZ0t1P7zRfaO0ZG3O17FP6E3GfPkmNo7QCgNGApUos169DDkYGJQvjrttCy5si/1nkKUntxRAy6C+oqaB8oT/wP2fFisjPkO9BsxWmM0nQhX5Q7b9CVYtTz2sldylNGNHSVd1xBfId9vtLQxek=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AGqDiIYe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AGqDiIYe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8819C19425
	for <ddprobe@lists.linux.dev>; Tue, 18 Aug 2026 06:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787032833;
	bh=tWvda4pISWt4o/X1foAddWHsBH3KCT7PZispZmwZYRg=;
	h=To:Subject:From:Date:From;
	b=AGqDiIYe+pZYH/OEucsn/2D+kqfke5SaojvVdhCgVfwN+LHdx8XpPevJ5vq+Mq3mv
	 NOkeuzyZMUm2bWAieSKTCqfpdghGFfZUSbxCaOEmfXXBSM50SUAtgWG+qsETfnNIg/
	 5qGEW+D+f6/ugBrf2iywd8YQ92jOKJoOkTCOrmgoFjqWTB11hegcRDDpuOAizx1fqT
	 S4TGKsEBCLHpP4nYcnkuKHnvJg4bcOLyHl/RJvGfaOCY+FmhZHc068NP++ZLt5A6Wn
	 lNbPuJImYVDhQBvytTxb7XNA+oeG1mVnSoQpJINZ4osSnUgTXoicbkE88ZW06nGKl7
	 +5hkpkp2z+lVQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE1B4C5DF70
	for <ddprobe@lists.linux.dev>; Tue, 18 Aug 2026 06:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178703283369.2412.4993236525380316958.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1ad804cb9b2b1ddc8690be27ef8c0105384cd5a6e6f7c4712aa2071a436c7c97
Date: Tue, 18 Aug 2026 06:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787032833
