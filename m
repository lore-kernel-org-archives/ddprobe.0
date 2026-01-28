Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B56C1A3029
	for <ddprobe@lists.linux.dev>; Wed, 28 Jan 2026 04:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769573034; cv=none; b=Cbr1JsnwGqu0S5xyLTz1Z4EoCEAizRY6gP1ppr6Mz5Cxh0WVJwHARRCPc/3lk+jie7DxLIW17+SwCR7XFgCYwBBa9N/GJwpTWIFbOjfBDvR3ZssEyv6bof5x+n+y8PukcgYJ8KqvoePf9GkB8Sj9PTEollRhiF4muAA1gVXiVT8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769573034; c=relaxed/simple;
	bh=zZ+R3XNA4PWzFiFUmvKtgU3gufDbDEgDpndjbklxNBM=;
	h=To:Subject:From:Message-Id:Date; b=d4p/6MCDuSmhbqFE3O8aZ560JqLCiT8Jyw1blHRryHBIQ9VGfSNi9Ubd3S+4W9LLYgPq/S/AJlqXJtdqRBbidZnXsL6H/TGuqAbCKW7LSKoNDXfdOuttZF+TqexAHZg/DKYFFJ/HjYLcCfmYzyxmLiLP/Qo6HjpDzBHo6vxsjac=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=O/EartP/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="O/EartP/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C30B8C4CEF1
	for <ddprobe@lists.linux.dev>; Wed, 28 Jan 2026 04:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769573033;
	bh=zZ+R3XNA4PWzFiFUmvKtgU3gufDbDEgDpndjbklxNBM=;
	h=To:Subject:From:Date:From;
	b=O/EartP/8fuOPfdC9IzYRqdGaGOvABn/ITVvL/8lg2gfkMO1pGD9cHoNYJ92bUCAw
	 KypyE/nXhppeSbvgKNnER48Cfmlc/D+jiRCX66Jr63rhhSvfHBAgi4DThZ/9l5S6XD
	 pAUBwnl7Llx5Oj7q1s8urHgg9seH5ubfZFByH/+F2I3iiZJfaLyk1/U5L+0ADV1KPo
	 b8ITn4xZRzNabzuuG+aC/sxgIPtT0kx5LJChcxEh22XYhbIca85zp8hjJadnDD5PEO
	 MNEYfFr0MMNba3GZmBcq9huHFfIN1rmvzcPf7aYZ5blOXcHQkaKbUASJlmUQmbYbRH
	 ISuvLH/b3KD+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A6E3DD35671
	for <ddprobe@lists.linux.dev>; Wed, 28 Jan 2026 04:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176957303363.16671.9737191936360173214.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8c418132c77c0c9b3910a37d87bc022da060f545d9539f1e740c4ac9321dad29
Date: Wed, 28 Jan 2026 04:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769573033
