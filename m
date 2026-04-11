Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D194309EF9
	for <ddprobe@lists.linux.dev>; Sat, 11 Apr 2026 11:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775908054; cv=none; b=OGWo4xw+8XRwReXyeUMltbUabq5/rS+KwC2/yB1cKY9ilmUFCcpqMYMWnAG6T2vgW6B+NnpkYpk677PLgFt67R3KwFXWURkYozf9nz/MU90LR4ODTao9j50+Uq7NlhZQjPCvNFx0wcjENnqGHQSOYCLkiCorAL3xJLnBXtSIX5k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775908054; c=relaxed/simple;
	bh=m0Csu//wh6V3RcRZdLNFfT6QeUV+tZ97fq2vsm+zBTc=;
	h=To:Subject:From:Message-Id:Date; b=iRiEhK8HF2enLuBz2vepcITfqCjh3R5hnFN03ixb5QrZSBkVkz4dKxrYV6NaLPdii6Aso1K+o1+J8nCjHYdHe7/lUKkOApKs8dQmUuZKImczS4qsTG7H4IrWtBnLDNke9+oXl3ElwnDPWkEMDLgDAck/gYqshvSv57tEwSElTCA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vQhe7VhM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vQhe7VhM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9F91C4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 11 Apr 2026 11:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775908053;
	bh=m0Csu//wh6V3RcRZdLNFfT6QeUV+tZ97fq2vsm+zBTc=;
	h=To:Subject:From:Date:From;
	b=vQhe7VhMIiujG03zOI00PO+W63NJ7r5xty5wGl3fe8ZJc32HOttXlgKTuyPOgh2gB
	 nr20MgeYlIEIyyPIr6ZAhtfQPeopLIVZzYpV0m7//5ytKq4ML01VUakA+67HBm3z8t
	 zFPYmx+eee7neicOblmfg3y3FUNR2PCEaUlrGzHWaJhOrF/JnalRvKry4vt0/ldHz2
	 nR1FK9mxdSxmJIg3ToD+e9CB0aVWQpzRwL0vQbNiZfS5O25HjQFRgm3166vCJYaH18
	 T01jbrXCwLmFoRpYmLc/SLpqHhEw18mvVBeqFWNqOwsR9ELSoFBOYdhcGJyjZ2ro2z
	 M8xAHy+qduk3g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8C7EF3ED4A
	for <ddprobe@lists.linux.dev>; Sat, 11 Apr 2026 11:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177590805368.22144.6344422401262969354.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 24aa75c9fa277c0b397756a4c928003c5001696cc8787e9e85936ffa54cdb97f
Date: Sat, 11 Apr 2026 11:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775908053
