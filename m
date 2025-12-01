Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 50B3D63CF
	for <ddprobe@lists.linux.dev>; Mon,  1 Dec 2025 03:22:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764559374; cv=none; b=BWCcoSA2sYgkxNIdN/F36OmarOn7CO0Fnd7SIYSi2dHJbni8Q6KlS4aFicj4erHG3L24HRnuVw2u88/rZTUlKYDl07fTmbozvPiCMYgf5XsvzsrRmASaM33PXw+vJmLrSImyq5pFvs1Opd1a7n/t8mJRmoPvg2057jnsM9f19+I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764559374; c=relaxed/simple;
	bh=BdxFstieqjhHKWDl2SMQ9mpSulh37lAo7qXLOuO9yXg=;
	h=To:Subject:From:Message-Id:Date; b=RzcQOrg+c4SOuWkPZCdF8EInuc79YBUokC4nZue2y1BxO8TpsroD16h7aQgDZPOTRDsXxKBI/W6UCWcHIo0Obg2rJDCEiOfSsWuR7fRZa9tklYGroStmv4pywFe8/DflfIHD1WH8BK5FPhRGkz/Unvc8+a5b/WoClrRgg0WJ5Bs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DLtDO29i; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DLtDO29i"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC3BEC4CEFB
	for <ddprobe@lists.linux.dev>; Mon,  1 Dec 2025 03:22:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764559373;
	bh=BdxFstieqjhHKWDl2SMQ9mpSulh37lAo7qXLOuO9yXg=;
	h=To:Subject:From:Date:From;
	b=DLtDO29ih2rhntCXJD9aOEuVeFBWvPMTbfy/St5u6Wx+GxTcYJrwwIFaCPo8/++20
	 HKmglPddq0iyFcT5klCbknPU8XQIv9ZQM383+VoyaeQkO2P7GRwO5NBFkYr0DNsmO0
	 6Xwg08VkwflXRFjrTb/byyN+FPbeFd66li1ga644ZSLSt4FvtAymQ8Brg7n3nO1BTc
	 lO0aKJLVzD+OFtuhw8QseT5HxymIqUjIv+3TDp6/5nomCAWLzWF9shlmaf7fshPv5v
	 uebNSYtXVYuxPLMwIsegtCkAOd3+5zFDTs/KJK/tnNZ2sKcyN2dOLbxdRpgSOJG2UU
	 n6aFWEu4UarLA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 984A5CFD376
	for <ddprobe@lists.linux.dev>; Mon,  1 Dec 2025 03:22:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176455937358.19383.13633906340321461447.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6b2f328aa680fc3bfd1a58bac17e5173e3467405d6da335e664644fafd7b650f
Date: Mon, 01 Dec 2025 03:22:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764559373
