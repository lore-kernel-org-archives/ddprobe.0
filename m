Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FF0C1EB5DB
	for <ddprobe@lists.linux.dev>; Wed,  4 Jun 2025 21:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749074394; cv=none; b=RpGXK/YjeQNHIJKk0/B6oxh5kRxxdT9oEiA/9Mu+76xQcjY76Ae/KeAwpYRZj3ptW2FvLBDBtEnNMrRcZ85jwdRmHVNzoFzd0wlaQgT5iEQawBkzfG1pIMBhb4bFfIepgRZlPOJkDeEZZ64LhQM5usXkuMjZuDpYbDxIcfkCtgc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749074394; c=relaxed/simple;
	bh=m0XPLXqrViYldQ6vIl6jCMZMAD06TIVcM6QoWNzk6A4=;
	h=To:Subject:From:Message-Id:Date; b=AGRF0QUS6Eq41R0X/hHQ71x9Ctmzky1s1AIWYmtDiPYXLdbcipHFX3WwCZzCKxVg57u9D71IeTRU6hJ7dv0xrkbgjTitxdPYMdlONdRhOKtWDgjJSC+R1VdQP1T9+K8sejot9yLJX2fkPW5GkgDTxpLeUhrXt8eGda1uh/XxlKc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fcI2zqJQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fcI2zqJQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A316EC4CEEF
	for <ddprobe@lists.linux.dev>; Wed,  4 Jun 2025 21:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749074393;
	bh=m0XPLXqrViYldQ6vIl6jCMZMAD06TIVcM6QoWNzk6A4=;
	h=To:Subject:From:Date:From;
	b=fcI2zqJQYHGj9rIY6AehSrUQ5B1C4M5q/lAhk6PCC4G7NzbIUmGHDQifzdGSSu+pV
	 4QUSfPDPZqpbW9xSOvRhl/AJ+NaBLeZ36648bdfZz2xDRfMUF/UgG2B5LEzeqAVdIP
	 C5X3cwjuaHloqAR8nkuro0mWaGz5+rzkdLfgBxg/PT8BqrIzlqHcXFyAztHOCwVYtY
	 JzLxha1osxusglZVQZmT9oPZJKJSEGRK8BCS5DGCZkrY1R/NGOIUHIlgvKnHRyJdoc
	 4SIakAyNFNAVQ6bA05gFDpv3ZACO9rux01eWYJv0tBJ1yIeQJvcG7Vw4QvmoHyoreP
	 RvqDOPb0NnkMw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F9BEC5B543
	for <ddprobe@lists.linux.dev>; Wed,  4 Jun 2025 21:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174907439357.22774.5443260136212788242.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ac9f96b0c4755e566f1a877611bdb40550fe8b30ca5dc2944c5a898e7d3bdfae
Date: Wed, 04 Jun 2025 21:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749074393
