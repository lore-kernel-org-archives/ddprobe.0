Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FECE2C11F8
	for <ddprobe@lists.linux.dev>; Sat,  6 Dec 2025 19:52:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765050774; cv=none; b=IThoUGzPYViQHSXBXOl6RnJ+dPrJLfSqXcYQx4OnuHfqaq2/bAsa0ebiAjz51cAq1vURJ3GexoH5/dOqdqHMdgwnZPSWQzMSIOf5V9joXsmsH1fQYloenaE8dRvUvZIz4+aN8RHFnuW6E1e+8c/mlTHUqtiA2/i7uVSYwYyut7k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765050774; c=relaxed/simple;
	bh=B19vA7pJQSbhdfInqQ1iR16jgAoLqunS1H5Hy/BS9mw=;
	h=To:Subject:From:Message-Id:Date; b=VZm2KmNXtTNlkSF70MSAmjvcjObhbMFQGakxm3MsO0vRJ2UK8yqpWQ2QxAuNDz/W/pii/sru5iq/k3hdafdNhu7PeTEv9xOeluRg6mpkmDOjVVxDT72G3zt30J/duxt3WiVjdiPnBz/3VX9kZwjEbkT2Ia8EjYpf1k6MaN+yeUM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uOKH9Gsh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uOKH9Gsh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A84AEC4CEF5
	for <ddprobe@lists.linux.dev>; Sat,  6 Dec 2025 19:52:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765050773;
	bh=B19vA7pJQSbhdfInqQ1iR16jgAoLqunS1H5Hy/BS9mw=;
	h=To:Subject:From:Date:From;
	b=uOKH9Gshi1A4XcbA43czQmNbWgIV07NSvjpAZfG45nqMHRQXAwyHIShR5W88W41WK
	 BP/fs5sNSia5H1JqX/vNBovpiRKaDtwVCege/HBLcaxa5rxLPzM1oPn9Ekp8aP2Vx4
	 fYROAmu9U1ELvCPVD5N2USmCz3GZgNDFAO922ujMscAmoUs+ovSgADGa6qh1NwA432
	 6Q0cMK7x1H+diMzSXu1n+cTV3UtrqDZZon+rxtQ0+gHROuRE8rUTz+D3Ilu0UH4lbn
	 MajA3YTFRhrMpmaLMr7mvDOU/Yuh1ECod1S1CcI+Tx1aP0NQwPdxt2UWh2IoYd4/ps
	 3Ujdt+PP69pAA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93721D3B7DB
	for <ddprobe@lists.linux.dev>; Sat,  6 Dec 2025 19:52:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176505077358.16105.6362451347935593918.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 667de96a945bfb1d817b881f0c310eac243b605531e762096e9212b0341d3a28
Date: Sat, 06 Dec 2025 19:52:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765050773
