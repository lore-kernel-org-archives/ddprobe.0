Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5316821D5B0
	for <ddprobe@lists.linux.dev>; Mon, 28 Sep 2026 00:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790554834; cv=none; b=KSdgFr9GYyrpvHK+gm2LqbN5soa8W6QsrZWTlJxMPlQlPlyZVvitTOOA0K1kZCo6JMCCLJrMYNaLF9pR5zyef3CVJfZxYfz/w/Dwit+oWzzBfFkkykALXoG5Tjnzrel4oxKBwWGhrGrNEjAtzt8KipNcZLbwqH5esw76x462ad0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790554834; c=relaxed/simple;
	bh=e411vWLLyNcCV3+SHzJ3QyaNp/izchwAJUFYdV5BO4A=;
	h=To:Subject:From:Message-Id:Date; b=f828Y54jAChlEsVm/noVhuzqgo+2dG3Bl7p1qfc24HLdnEyAi4TxjAEasdloc7wihAFJDrAbHO/C4jkP42Hh5FHlRYmwWHiz8/WWK996/HKbeClVUkGmxoHji3JUtrgzQBYAIOIi0QanIrTd/a5mw4fwRpYTZWE4GiQzREdODSw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=m62AG0AI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="m62AG0AI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2963C2BCB3
	for <ddprobe@lists.linux.dev>; Mon, 28 Sep 2026 00:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790554833;
	bh=e411vWLLyNcCV3+SHzJ3QyaNp/izchwAJUFYdV5BO4A=;
	h=To:Subject:From:Date:From;
	b=m62AG0AIwm77AuMkTMPtdfykTtPJZUSapmD/TM2WR9SjH3vdfZsKvB+mJ0MU6QxAw
	 UwgygsnI1d1d6H57UGwR4ODIn3LBcxE7DeVbB1hudgLXkczFpee/XX20wvdZfB3ajw
	 e8x3qOb1HmllXmVDqMa+0PRn+g/NpIC1CVtQ5bINTzPqjQ/9XNKjM81gGO/CizpgEQ
	 g0+gx9rP3a8kfde383Vdt7MKjH5ilMSf4pJx6+fKScQRYWgDHv33EthvxO6xEOTino
	 RHxXyZ3I2589fwTcZ3HNUhI7kspDJ4nt2Wb4OV9RpSq7+/JdZ0L+iBxIMEkXkNnylE
	 wQvZYBcc1efsg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEF1FC9830E
	for <ddprobe@lists.linux.dev>; Mon, 28 Sep 2026 00:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179055483370.29305.11196827062153811054.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 445f95204b8320ff5df736fe69a3be07ac97c4c21384dd6a95fa4ae2fbc5518b
Date: Mon, 28 Sep 2026 00:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790554833
