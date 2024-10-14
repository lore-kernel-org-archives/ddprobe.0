Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 144AD158DC4
	for <ddprobe@lists.linux.dev>; Mon, 14 Oct 2024 10:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728902754; cv=none; b=bV8+ILCMxDZ3xYOexvgwBzrnE+lROC/2Rta78fHO7/xpqF2NxIMvXXVzMj9MgLas/7SFE+GTjLmLX+PqZvQjzE3xNRnqRVAdpNemR42xQ2kbWLBlgLWs3bd4TYOSpek5tDYv0Q1R5br2H0gLkBxK1zwXBbxb+sKi5HPw9XEy+9w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728902754; c=relaxed/simple;
	bh=9pNCiVTnlrmSQDs++LN4wUQ0z9ThtQMggpi00wcz538=;
	h=To:Subject:From:Message-Id:Date; b=N8aKXclIio7zcZGEtLANZy5xu2K6+9HPtyr/clm1/g94kpBzFoOm+UpgnzzphrEfJEbiDlbw9/snjZevS0JUb8iE/xqhszWCBkjmuAShGeT/jFDNXTGV+1cWO9yIJa04E5JDLGGQXJgeRYz+Z6v3pPQlI1hjwywGOUSHX+7HpHM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SXjepcj+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SXjepcj+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AEAE4C4CEC3
	for <ddprobe@lists.linux.dev>; Mon, 14 Oct 2024 10:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728902753;
	bh=9pNCiVTnlrmSQDs++LN4wUQ0z9ThtQMggpi00wcz538=;
	h=To:Subject:From:Date:From;
	b=SXjepcj+IM+9Zl8S7z9jwGZRFQ1JRKX0us7yceyY4Rn2KhxOlj3AMChxAYTyXHMiq
	 u4dQdg/EP0NwzmUofaQis1tO7ujLxd3kJ90AFdHL0DtK2L//QJWa0UBYFpNyAd11sq
	 nipT62PpJY7xX7VllwhMKm0taTRRXUJKXg/AGhf/T8r1FksOjnS1YwKgy2h371z0En
	 V8/HCo6f5tAND52axMQUE2qJ+4UWY3UKodziXJgqLCGAbiMjBxv207Q2GZFAG0mpWT
	 +DhbiK0h6UCPHQqnhh648nBt3LYKN/lCKyBH/LSFGVQ/Q2QVvinEqoDeO+aLMMpeeg
	 hUwo0my1xNrJw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9ECBACF2591
	for <ddprobe@lists.linux.dev>; Mon, 14 Oct 2024 10:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172890275364.12066.12912183366062316876.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dd8626bd143f42dad186455faf407f62cd20da546fd6e6abb4e2ab4292057ced
Date: Mon, 14 Oct 2024 10:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728902753
