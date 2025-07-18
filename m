Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D86510E3
	for <ddprobe@lists.linux.dev>; Fri, 18 Jul 2025 05:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752815994; cv=none; b=Sct2Fs75pe2sXWRdXclYuKUz05iLU9jgv9m6btxJ7BfKmSjB9hM5j/hU/gnLi0NrRp75UkWKHY/hl8ZG7dLv7KGUyK3l/4nYehUEhZVidsU9QbTEp/i4iqVFDpW2SsaYIOBh8HvCI0XOsqf09bMM9B4aKW66GDvUWFPtZLgOW+w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752815994; c=relaxed/simple;
	bh=4lxnVO07w2uFZT7nlTp7FuP+LLp0iUaBCBe+3KCRfds=;
	h=To:Subject:From:Message-Id:Date; b=UEaFOuAZijHiDZ3kDZTI87PrzlH+9vhfhJYslXiKrV0R5jsbmlQ3GjGaDjeE6gsP2iLkIfyQnkcM+EnDiIEu76+5MMDIrpSQLvcXl8K2e8TpmlcwOfiCDESddC/VPSDdhb4Slpg0ucX9S41BQ82flCNOFINABM5pY4COSSTHNOo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ixSVjZ9T; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ixSVjZ9T"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7E0AC4CEED
	for <ddprobe@lists.linux.dev>; Fri, 18 Jul 2025 05:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752815993;
	bh=4lxnVO07w2uFZT7nlTp7FuP+LLp0iUaBCBe+3KCRfds=;
	h=To:Subject:From:Date:From;
	b=ixSVjZ9T1jVRUVdIvHDZaM7lTYU37BDT1yaz7Vo3LL+niCKm4wpEbaODiZfFe39Za
	 DEqUuI2AxOKgMKg2TvCFjA2EAVHhbWHaXU1pcNVB8H8cb3fKDqVpgyJBbtSChOowoU
	 201k248rKEg/PCu7yZjgY+KRFYeOPs9jRHGLcTgqG8VYthcHw+whgEaUlrYZ/rTYXO
	 IeGdoRXpJwkCxO+WtibRAtkGHBZYqdeloms/l/VAFch9RomBUsySOSfCvq9nIQvOs5
	 YM5RNjU0A4+XxXdeoGAkoUZlvtSrMjo39Ea87JB8awrIrqsD5HgKpbd5/C9O/qKsXA
	 Pv+dBoeg1yDSg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 959F3C83F17
	for <ddprobe@lists.linux.dev>; Fri, 18 Jul 2025 05:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175281599358.15884.13328889586772720831.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8ed41c40e5162545a76807a4f9ea8c13b9adc5927caaae40481288339f88e019
Date: Fri, 18 Jul 2025 05:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752815993
