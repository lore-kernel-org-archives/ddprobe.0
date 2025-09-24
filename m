Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 405351A841C
	for <ddprobe@lists.linux.dev>; Wed, 24 Sep 2025 14:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758722994; cv=none; b=VSTBVpwVgPWwOCd0HvByAZVAwP4UX37/45BUYdyNjbEWEUjcueh+rYXC22N6qZWqNzfKE1Qj/F9ug8Pp4Yym8/wYhzYhWUEGqGimMtsbbO8xnKkV14x6bnxfS+5DuqYgwNExZ39EaMBS6RiRISrzD1npofXhVWgCFPcOtEaK1bw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758722994; c=relaxed/simple;
	bh=7Xrsx9oOPEhmoqFStV4ZGt/roECUpMJ4hQLHZ1ahDvM=;
	h=To:Subject:From:Message-Id:Date; b=dL+ZzxzGgk7q8yDV/r2aJ2jIEtyQaK3NQKZB7vBP/H2ObzKVOAf+VFCLanR/RGx80wUpublgSIL8lduLU1O70/Z0Y0lwq/0Oq6pb3unpofkuNnhpmSfuM6k7PVq62IiZVL46F6x3sBpjxqcMKTUiapX43Ya3+msSDXHbuyofKYI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aMkk/THt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aMkk/THt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EC0DC4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 24 Sep 2025 14:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758722993;
	bh=7Xrsx9oOPEhmoqFStV4ZGt/roECUpMJ4hQLHZ1ahDvM=;
	h=To:Subject:From:Date:From;
	b=aMkk/THttBnnly1bGn/Fz82+SKwO6gJnzXHKp/Mpt0IJ4Y/ENiA/JLnJ/06rOJ+ZF
	 XMiM704Mt7izjHdEbVgCM+Ej/zJAAH1mQCHl9oiv01SQV5ujECzweLc9zf33i1b2hc
	 kcJdpun3+vIRDkGBr1hsE6kstPKuRhLzqKcpOborkFUdhwE0SqE94btnpH87nCxqSt
	 YSDhYfZr1fy7bfPrvlhPblgAOEbYViaN+9HHmNy81UmLyHUXPG3Niaw0vvK6AS2OQX
	 5runXQmgQ0BLjLi/3FHl9tlP4AZ5gziGOISdFs6qcXLkKGuCW1GL9QaIgkFe2F6J0G
	 Q8Psa5M/tkDRA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 905C0CAC5A5
	for <ddprobe@lists.linux.dev>; Wed, 24 Sep 2025 14:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175872299358.12120.10405337251482819044.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7b9b0d4dbd9fd8db4b6ab2ecda2ff1257ca78f553daa5e8d51de1737f3b6eb96
Date: Wed, 24 Sep 2025 14:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758722993
