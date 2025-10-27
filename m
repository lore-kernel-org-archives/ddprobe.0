Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D1E332E2EF3
	for <ddprobe@lists.linux.dev>; Mon, 27 Oct 2025 07:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761551393; cv=none; b=ou/olZIn8oPkxZ2CQLnTz9p0gI+uk+NBYFiLYonWXP4FWn4vhesaWlfrSjoPKWdEaksEF5X7inei6eiR7iSYrlVoi2WvfjfPX7TyJmO3+xMejL4lAGrYsnfs7zZAdL3zUS2n1ADAH/Cch164EkG9ne1+6GcMw6ikfkSAFqs1JfI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761551393; c=relaxed/simple;
	bh=jwmqBZFnQC32gYTCdG308kre60kznxTllR8iP0x2/0E=;
	h=To:Subject:From:Message-Id:Date; b=RTFbk124+WS+Uymx9a9L+09Y08HNCFzh0JZ3iLITLXMJvJecq78SDFsBSCkF3pWQLeb69bX1HCWGYaWuCyyOZF7ixr5mULZtBP1zRU0hE0F4sadotwINl+pUAAtGj5M6uO6T2dfn1tIEvFg3PL4phJbSE2HwXhXA3DdBmXIaDkY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mhWWQxjQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mhWWQxjQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0DAAC4CEFD
	for <ddprobe@lists.linux.dev>; Mon, 27 Oct 2025 07:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761551393;
	bh=jwmqBZFnQC32gYTCdG308kre60kznxTllR8iP0x2/0E=;
	h=To:Subject:From:Date:From;
	b=mhWWQxjQ0q7rGHallT4N8aBf20gCdDvtrqVO4eE+B3mnfj5DKWKxPmkugqxzAbQYX
	 nfFyI3VadA1sBz+XGL8HDv/qkZky9IUiBmqXN86thg7y75kVjV30lt0lO/0VVNFJRr
	 sQnf3Kxx03SE3hV9EoEmQwSx+8lLI1dcFCMG5DT8DbLyMTColybqZU/G6PmM35joJg
	 1KgcWkyIcuN5GHX1xZPhfhIG+4Pq7kboJeDWyD87YUCMp3qmwg2PvtSfhbxM3widmX
	 IICetMPR74yxURJQ8/O4xRKHn4KeoaejHFs2/Jye0FaWdtPAJN0v94gmrb8nRcnHKv
	 hl/bZqhTqdPZw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90CF5CCF9EB
	for <ddprobe@lists.linux.dev>; Mon, 27 Oct 2025 07:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176155139358.15788.1493419838404919819.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 53428c9975a3e5066b4b1116676a741ca2a981be5d0b38f674d5db447babb118
Date: Mon, 27 Oct 2025 07:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761551393
