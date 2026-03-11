Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1020121B9F6
	for <ddprobe@lists.linux.dev>; Wed, 11 Mar 2026 04:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773203094; cv=none; b=n9666/ALYkExJa14+We4z33DTh76518zKfiPN9Pv+zZ51fwifeop5rYHLdx9gfD9BcgSkVC1LoGmNp425V9pxJqKbZJQisi5V8Mptg4IZM064mXTWirtGxfr0NYYKDRebQht8S0Z83jyKWQgPfCtjclb4IPfTcfRU6zJDYaPl0s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773203094; c=relaxed/simple;
	bh=7DP0IK+F7fn+xBLn76qZpx6kG7aYbyLTbEzW71J1KoE=;
	h=To:Subject:From:Message-Id:Date; b=Gjb3eljdBSO8+SGIHOQLYOC28TE7DvcMByINztWpQg3scn38gCZNjtp+uoJm1TSvdYLugZl2DBRIb7ApPexxdz/sZonhDOuOqc4iy9MRoNPlzqQIW0BZcj5P8ephryk5XaSz3FH9NRRqbFxUKwJ7fAWN11rc1fX3XloLemNyjfE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rO9zRnO5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rO9zRnO5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC19FC4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 11 Mar 2026 04:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773203093;
	bh=7DP0IK+F7fn+xBLn76qZpx6kG7aYbyLTbEzW71J1KoE=;
	h=To:Subject:From:Date:From;
	b=rO9zRnO5Qc5wVAypVuoLh5NB8fC+0i0K5GlHp0vOxQVHax6iVS5AFWCPdjmSMmjaB
	 BJK11HvHL0Z8Jb6kLsWGUQ/cmKD4eTnOazJ7shOPeEsbKhxpvKM8r58mQLKWg1o7fV
	 pCnnL5vcje0SaW+1eBn9XC5mFbUSI/veNS5MYSFAtkk4pWm3SbmC7WD2UE11sZvHZn
	 zXt7nVsUNv6CR0TNvqdMWpO6qi4P6guLJhGzHrD3kEkAXPh3p7Gwovs19dftHrj5ZZ
	 WBRHBxSQqadcZsDKRIp/nbit9KWkj49LX0aEcweRADVBIpLhke4SHzxvnC4eqZOd3y
	 5btOa/vIKPbCQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99064FD88F4
	for <ddprobe@lists.linux.dev>; Wed, 11 Mar 2026 04:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177320309361.32759.4964791335581318045.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3ce4be4e835d869d70e0b544c15ba7980cbf534c6e7f69e175b3f0726661587f
Date: Wed, 11 Mar 2026 04:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773203093
