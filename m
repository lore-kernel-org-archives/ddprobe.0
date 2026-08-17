Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 540B923E342
	for <ddprobe@lists.linux.dev>; Mon, 17 Aug 2026 03:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786938634; cv=none; b=dAVV6Ut03LHmWzy+4NCQcpuZcCzVwEyHAj9iBg5rrnby6Qw/82oOEepldWrHrwyByqwv7QPmhSJ8J/WAAD98bmCR2RBLpmD2coAk7A0TIfE+JR2aQipDwcj1vB3nrsFi70JzZO3aHELOQiKlPjA9ayON5HLmQpEzCtab/E8GPCI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786938634; c=relaxed/simple;
	bh=5a0StYJzc255g8O1jyDBoAIsReMvdZ/rQwTe7af3gy0=;
	h=To:Subject:From:Message-Id:Date; b=sfF2B5ubIXt/Xxfo1BNH64wmyrolNdad8dJZyyFSg2CQf3kx22VUl0t3ffXgSJXiuBbw2ST/5XKxBaKBOX2wioJxOAub75C0+DnoKgVipsxmRFdOOAG00i362Q6G5OgoWcrIPXw5OWyOcn4hjr7/+g0+jQ0Nm2wQhg71KSKo29U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UgKxjp95; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UgKxjp95"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE150C2BCB3
	for <ddprobe@lists.linux.dev>; Mon, 17 Aug 2026 03:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786938633;
	bh=5a0StYJzc255g8O1jyDBoAIsReMvdZ/rQwTe7af3gy0=;
	h=To:Subject:From:Date:From;
	b=UgKxjp95rDXMADSuYG9joKuinxlAJNfeFf0iYYRb7ocAu73tRz68P5ZSBrrdziFQL
	 Kw4zcCnV37eEyaoagPSf84ZNmZp/6PqVfLkSpljoF5Sk/052LJIYBl6BEoHx7AgLR4
	 5wE+kHSZAJK31TpMzgILfEeec6OVeQRWFDnyZX5/rSAc+K1doGxqSgWc15RxUsoHBD
	 DguyhpcTtUsYJrlpxkfM7czqRo1Lfes4hK5l9wPTAAr0SaloFb/u2NcTqv5qq1o8ix
	 2Y9GdzEKXx2QvtAcyOl+fKIo0ogDwXJI/8OLDVBzqiEQagLa3KBESZhimmAJbfw027
	 rZgpy5jmK7ZGQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9A04C5CFC1
	for <ddprobe@lists.linux.dev>; Mon, 17 Aug 2026 03:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178693863368.2425.2270211097982370106.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 752873e9cabb67e0d5291961e5cf74f70f14b0f761def4eecfa07f93e171d6b0
Date: Mon, 17 Aug 2026 03:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786938633
