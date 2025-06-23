Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 58AB72BEC37
	for <ddprobe@lists.linux.dev>; Mon, 23 Jun 2025 16:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750695594; cv=none; b=uNmiC4I0wJgMA1cVOgeavQcqhh7UoBFls/Lw6FOE0juqXjLjQkIF99F5gqUGqmz/yJO0CTa5iFajt2NceMamLZlHhsna+FNZYLu+AFwcpdSZTAjhC+iEJ92CAaM6iw8hdv/MULgGDdisDwlJJFkudECEI3p8kirArqttfemVPEc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750695594; c=relaxed/simple;
	bh=3sZWy8oVQX0ugYMZ4QS51dHFRZMTfN5ahoXphiS67Pc=;
	h=To:Subject:From:Message-Id:Date; b=FMpGklxR0mvIP0Iut6Us/9U5XSOiDnEFdpRtPN2YrUaMDTqVDEWU/vE8XADxkr8N4yjEOEFF/QMd5blgkDjovkaTxe7VFEQte2q+OAJBhN24jlqgcu8PJypo6Dvn2gMbJm804X7mypY0FWazd1aEMKcebnQ3DqUjDcd/mcnDPGM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lZisyk3x; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lZisyk3x"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1A3FC4CEEA
	for <ddprobe@lists.linux.dev>; Mon, 23 Jun 2025 16:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750695593;
	bh=3sZWy8oVQX0ugYMZ4QS51dHFRZMTfN5ahoXphiS67Pc=;
	h=To:Subject:From:Date:From;
	b=lZisyk3xZ3AHTGY5OCXG/CnT56x03pIqF4lBSRwbxkjgP6dU5mbrTKY7BnJUR9pXk
	 XU9L5AHo0TAqNogSikOpNDmuUfK71Mg5NxWPpBHkMnG7l1SWLteycSHWEWSN6j+KjI
	 gcEcZW3EWe21AcpfoInDC7ygYg/QEuwUlhfB5EewhHpBOh61Ig49mBlLCNtb7h2Yfv
	 7sJzvlv6oZRKdkSrnpYLglaBZxUAEEZdkhZ87012tJPVHs4v7kHo4yTvrMAvDTeLhz
	 bCF1zXyNgvAgFGkcK4cKCOWbC89EBH07MOvjVEjJQvuJ36Cwlkc/r0MuP6qkbI171j
	 UjpyI078LvnVA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F892C77B7C
	for <ddprobe@lists.linux.dev>; Mon, 23 Jun 2025 16:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175069559357.20409.12514761637922841350.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 33585584c9d4a47908f128d07e620f514a202999ad55351f3ba456763c13181c
Date: Mon, 23 Jun 2025 16:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750695593
