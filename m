Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A308D515
	for <ddprobe@lists.linux.dev>; Tue, 19 Aug 2025 00:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755564594; cv=none; b=EBIWJVZ4hJCsmyVLyO6/a6cs6RCXiHYq6oMV2N1JbrS5VscmV526cTu33/gUbbJnWxyOkMaURyZ9S7mvTYw6PXm0MTmwUKqB32dc7im5xNiF3UKgrPB4isobUVnpu8Iroef+Kku7pIXOjRFD1WWeSGTGn0bdL0ou1Cdyw8gHVbA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755564594; c=relaxed/simple;
	bh=vK7KV5rKLQjO+3cRhYrib9dZddbxeE0XLcCPcNk86K4=;
	h=To:Subject:From:Message-Id:Date; b=i2QbdgNBpaXrwjRCsar0q5/XV/e3QF7fb4D6NkhahSjmCyuh0PM2ZuicxXacXMTMmKeLxMcJ3bIUOYenlgOz5tHhKNDbZPmqotc5yzR6Je2orFRd0bOaqSusPk+PMXC39yeYMgGF0mUaZNscsprBuWfEXo6Q/7DueF/oCl1m544=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=l5IKNvgQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="l5IKNvgQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2CD9C116C6
	for <ddprobe@lists.linux.dev>; Tue, 19 Aug 2025 00:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755564593;
	bh=vK7KV5rKLQjO+3cRhYrib9dZddbxeE0XLcCPcNk86K4=;
	h=To:Subject:From:Date:From;
	b=l5IKNvgQtdZkK21StutGB9Ae1STlYLrAlL5DJsSHEtGvlI7VU6voNpMJbwDnbsKea
	 Vm4QaTOlVvf24UWwXrP3RlPCXXVFTqX3wIWLKTRc6qIfJh5/snnrunVX3kmGAL7xuR
	 LzvXloUYJl1GvQMiRHsppGD10dMsqpIBefaXVhwruv0bDi3OnFUvH/6cDVneyNutGa
	 766wYJa5AnndFaeQ6+SgqOtkGeSI14o551jUFUkLOQ191NzqAQHor4LZ4DwNXmnnPw
	 vW8aRiP4C2u++d+XrS6wIWaNlaQ9C8t6vDn2eCiVCc+sJyw+q9h1AuCZfy/F7Q5RJM
	 9BgpdE6lxVvRg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92C00CA0EF5
	for <ddprobe@lists.linux.dev>; Tue, 19 Aug 2025 00:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175556459358.31850.13586983369664731677.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9617a7e0a3be6b33627bdc0eaf2af698c2b37182adc551cd6481d6843fe1d2a5
Date: Tue, 19 Aug 2025 00:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755564593
