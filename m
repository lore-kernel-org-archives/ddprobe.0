Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 076C233260F
	for <ddprobe@lists.linux.dev>; Thu, 26 Feb 2026 17:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772128494; cv=none; b=BSf8epDyPVeCPqs5MUBvqxJeXlur8GPJ+qpuLrm/nWm41Y1WkDPzPm5/UkmxeKcgztEc9rZW1R2uXsnbHBtraN+gFYVW0knHHTJ12wDg30fyYHqcfFysnmJ5iwF8aaiVY+BDYzOI75R03MxnMHIBZyzK2jQIakWXxZ6lKt4FL0o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772128494; c=relaxed/simple;
	bh=3tMji65FAtWP6Vbd86LDbk/z2rEWMiwtkBNgnTcSWqw=;
	h=To:Subject:From:Message-Id:Date; b=EJt67CKygZG1EUacc1ARs+CsaiVnY7nnci2fNyjbq7gqLX5CMbCxugZD85EmN4Mgp4POkB6qWe3z0YJMv4Ttu51xCt47Ze0ICiUyaWzAaVteHjlGIvojDljQM1tZ5GR+nfCH3DBJokZVxb//TGEAcQxKPc65dgzZ/1i9UUrx+GU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EWUTT9Ij; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EWUTT9Ij"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B10D6C116C6
	for <ddprobe@lists.linux.dev>; Thu, 26 Feb 2026 17:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772128493;
	bh=3tMji65FAtWP6Vbd86LDbk/z2rEWMiwtkBNgnTcSWqw=;
	h=To:Subject:From:Date:From;
	b=EWUTT9Ij+vD7+Y/fQChRY4fMij8LE7lVEtHTlQKIUx7svCDEREW51DHhrv4xCydRI
	 6x7fL69uSVe/A+o1b0S9Mpm8Rj3RQtJhblrpJJ3BABZoRkI1pyMuzYCEOJF1Ocye8F
	 QGJt9aQuW4cTcubipwWm3oWmTU/7EjOrlcSTEaIXxl1CnK2gK1vHkLO6gZC+BypT8r
	 OVx56ytwTa8gL9s7vuuROjbmkbmEpxO9oteCaXOom3ZcKb56msSFuHqcf3Wr9t8/fS
	 h7oyWRU5dZxI++xqwU1zG/sikKBcfOEOqNXjG0+1nApWTVMdWH3JSnUSIMMl6UvRwI
	 ZXHrv1Siet+Cw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 990FEFD8FE4
	for <ddprobe@lists.linux.dev>; Thu, 26 Feb 2026 17:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177212849361.10384.5441876890842051737.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b301a9569f1a7286d9df57a0722789ee6c5f39cdd9e66be5ce0e4c23e4203078
Date: Thu, 26 Feb 2026 17:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772128493
