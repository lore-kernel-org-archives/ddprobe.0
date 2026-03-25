Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E36212EB878
	for <ddprobe@lists.linux.dev>; Wed, 25 Mar 2026 08:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774427094; cv=none; b=VzOJo7ChTEbsjLggqGflxCxqOJU+MfKXkqQSM9536gVAkYoAa7mdjd46vq7bfnKZAF3fSKV698wD8Kk88lcLf3If9GtDGAvO/3K9ToF4IQyskYRGP5x7HYHTO2klsjuUSjT87J2Jek6cSYrXTinyFbF4HzlbrjPtu9BJ4hIB40c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774427094; c=relaxed/simple;
	bh=icBb4hjzIcsZMSPuM9k8bbAKTFCnsG8YEoBkl2iKl6Y=;
	h=To:Subject:From:Message-Id:Date; b=L/aynvRbtbWR7ufL0KlzGxehG7alVVJ4NE0CDpWLvtzU4FS16aAXyBhaSRjEN1MJ3l8oP8voACF+xf6g910CBzc6V/Rg0LdDLJsI8ZKaBBpwKoYPGSwvDi74IJ6hWL0IFTABgDSNMluHeb01DHpZPJIVJ6bon03r07352hsKpz0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MBc2Yf/1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MBc2Yf/1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0353C2BCB1
	for <ddprobe@lists.linux.dev>; Wed, 25 Mar 2026 08:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774427093;
	bh=icBb4hjzIcsZMSPuM9k8bbAKTFCnsG8YEoBkl2iKl6Y=;
	h=To:Subject:From:Date:From;
	b=MBc2Yf/1n783gmfHKZ38TyPlUTtgLI5ZfeqRpNOveSWqX+5o2ePKVZjCB1kIMNgaN
	 Jdgk62YGIRib8JRS5TnsUTrA9uOM86a5X9jWJGGhIJbFReWrzzJacYFaIZmeCEt5/8
	 DJoqXluYN6Konya1Z37AdLmczeGGZuFIIhIGx5Q9oZ0mmDyh0Uq3FsYTAmmp982OjG
	 MNbLVuwVt0QLboViQtew9lH3zY7XQe25aU3zZ8yqvQJHGMG1682JMtHJv5NnLvkUm2
	 GpL72LoxgJ66EEtYaDy0SHYNBZWWyiAMD+wJ6kR4amgTsidG6A4175Dl2ZiENLVEf3
	 7N3qHDwBtxnsQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90696FEA830
	for <ddprobe@lists.linux.dev>; Wed, 25 Mar 2026 08:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177442709358.10407.2603600444944282640.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e4746db217c9deb31ef6ab0470676849607424a016ea951f1d11c622e5cffcbe
Date: Wed, 25 Mar 2026 08:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774427093
