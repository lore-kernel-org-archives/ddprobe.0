Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E4F6A1A0712
	for <ddprobe@lists.linux.dev>; Tue,  9 Dec 2025 03:42:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765251774; cv=none; b=d65JT0w9I1MLjS2LwMjkSH7xXyoDOHA0DxA5eyDOAoQtArd0bsCC6lbS9zEMkJbVnNTmTpSokx0uUQo2ICNGx+laR03KLNlfThdg5hoWD/vive7lLnsbJ/W6vYgR+oYwpq3+wwvCCQqiCDCy6oDq/zaFfN/aMQa8qyYhT8cgNHM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765251774; c=relaxed/simple;
	bh=yFZR6yNWBoAw3L2QVwVHj+o+z+XisO38bMlAdUrTO8Q=;
	h=To:Subject:From:Message-Id:Date; b=r2/Yqnl3fC4gEL/USpyhEcX8zgNpeGoGFHjPkNZB9qcRTKYtCx66IrR9jASYnU2P4J6kvExz8T5N7mi1bQjwq0yqWYuJSNMHweZ35aUFt1YwAs+NDSeeqXmu5FKMK55NUds/Ad0QE36UYcRdg08B47X4en7kw+BmxVcWBzI8xYY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pMvsQbd9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pMvsQbd9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A64E2C4CEF5
	for <ddprobe@lists.linux.dev>; Tue,  9 Dec 2025 03:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765251773;
	bh=yFZR6yNWBoAw3L2QVwVHj+o+z+XisO38bMlAdUrTO8Q=;
	h=To:Subject:From:Date:From;
	b=pMvsQbd9X+nrmd6mLgxDwbStqhZcfaH+Z/l29a5KjcmgsdmGDv/tpsD0a32l6LOfY
	 AoEZGhskzqHhmP1qFtxDXjrKcB3CTUrTXUq1z1KepmBX+GGeLkEsF75pSiIw92u+zb
	 /eu56SwSP/NDttMRPmX3SLlMTvL8XXM3qt4KOJjCz2lsirlH7cSCejWGmtpVPqkXQY
	 zjdBwpsWA/uZyMahl9f1hZ+TyrHzGhjs/i5P7eMHnPI/hqUTQrxcwXJLj4fLjU5mjT
	 IwjxtFXUw6fJVZ6ICBBk6f/uTf1//enib9BWctHL3yVz54YUbMaRtpev35WhJkDuHm
	 iWzgx28hmAbgw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91101D3B7E2
	for <ddprobe@lists.linux.dev>; Tue,  9 Dec 2025 03:42:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176525177358.9275.7342634451357016036.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 30e11c104f26b8bc86a98faf1634796065f24f73e3e7e2a1cf904d882a84f7d4
Date: Tue, 09 Dec 2025 03:42:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765251773
