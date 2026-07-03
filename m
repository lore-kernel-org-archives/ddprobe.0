Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5ACF231618B
	for <ddprobe@lists.linux.dev>; Fri,  3 Jul 2026 18:38:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783103914; cv=none; b=GN/IZdgxPvPgGXiCuNFn5XJHe6S+lZ+47m9jrtOHmjp7Nfe+/d3bq5TfF06s8aIWcJrljDGS08BOQDlJGm2Dl03wNTsoCAQdqIq9gU2MUgU2FDR8Rk1RQkTbPXWGiHkry8HijSWwzNS385q9wBvSJZ9z/EtKN/Q9/i7NAzHINas=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783103914; c=relaxed/simple;
	bh=3iKcZB4+GGoe0LpeAGCszKV8pZd8J9sRj+LeMM6UP7A=;
	h=To:Subject:From:Message-Id:Date; b=oauEzmdOnFykRsj4d3wDh59diAAz8hKUHV85i2U/DzJDdLQ5pVxZKV5tpjm26Ox2gCGLyaHB97rVyw3VVomsVP2DTgp3PUIZZeXJilQsHnWGue8dZAWUTg0nAEVZErHWiLnaDMH7HSz0o17pKtQLhNEbzLsk91uklHs5fUCOMTk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WfhMnBkr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WfhMnBkr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFFBCC2BCB8
	for <ddprobe@lists.linux.dev>; Fri,  3 Jul 2026 18:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783103913;
	bh=3iKcZB4+GGoe0LpeAGCszKV8pZd8J9sRj+LeMM6UP7A=;
	h=To:Subject:From:Date:From;
	b=WfhMnBkrIAaaywLAZupAb6fWwCFdeIKNFFPz5ipqq0MfOGeybAJ4hipySjWwH+3GW
	 PKikFl5Wz9UPa6jiKnEB/eIjWqGTazmRZnghVTux8juMMY9FNlh++Goo+3HstWLosl
	 0MUidBmZPlR3T9eQnDI63k15JDW2i8o/puUsyUjPBMwZzsjhu4x7Jj7mxlgbqSrHWv
	 nCRVDQyZie1T0Y8xdfMk3deeKONyGR0YcRCC+SMCsIAmTiitmtqCL1kNoOlUcsLKoW
	 DYEXbKY6rce58Ja1c9GYpdGnoyDW8FP9OHNRalUFNZBTbBcbmnn3CEQa0QTM1qwmHk
	 qEVtvNDFf7MWw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC9D0C43602
	for <ddprobe@lists.linux.dev>; Fri,  3 Jul 2026 18:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178310391368.23391.11903806165481512117.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d375bcdc764ba20e175803f251288f91e2d26b9d2acd9b94f9ca20303f766a20
Date: Fri, 03 Jul 2026 18:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783103913
