Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37351286D5C
	for <ddprobe@lists.linux.dev>; Tue, 28 Oct 2025 07:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761635394; cv=none; b=lJbY26AlggfAm8NDjhy+pNzsE235wJdaOZBi76e4jisnD/jzjVDSsT28TkQZ/T1F2bfET+iqPFEDPk3kfiN62SQKP+DaKLPhXB0oOMU8x7adFp7uSWDBCa1RiS4TVmTXr56H12DoDZ4WZW9Z4TE6BCHKcSxiD/qMlTyf/remyUg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761635394; c=relaxed/simple;
	bh=nkfdNf0b/tv3fzIpByk3OFcQYNwHP1V3M69ZPieQCyw=;
	h=To:Subject:From:Message-Id:Date; b=ejED3EfdxdzTaNOHNs3nkhzlkY5UE8SflU68raIdzq019H1K4TgcOnUmvwbe1Oc9AwzfHe4uU+QERHPmP5ZSEe6llM3Py2w/Jui4vkuG7UZIRWxymJMDKiHoRdaUBaGsC+VjQDZkyAbi6Zd7X3+Ri1lrugRAIRiJwDsEQMdXMLQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sboSg3Mi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sboSg3Mi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB92AC4CEE7
	for <ddprobe@lists.linux.dev>; Tue, 28 Oct 2025 07:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761635393;
	bh=nkfdNf0b/tv3fzIpByk3OFcQYNwHP1V3M69ZPieQCyw=;
	h=To:Subject:From:Date:From;
	b=sboSg3Mia9FfvT8/oCbRdYKcJ5KHzdCeJYdHd/m0tqtyx5NhN05bvPUk1RlPrn1WY
	 Ucs2t5G0FX+bjBltZaGT+BVV9OGhMUmMXoaDAdxwmDfSMUa/iLBb8AanoRheD4jqO4
	 xY+YWOlVB56usA0r2/eVVkJ/tHQTGM4FwKNtUEddKwb/pwgvGxw8oFKpwD15Z1Lcgm
	 UlDD2lkKzAjWqjqUVQkT3YX2q4syKjF9sbH63Z9N18eqi8o8YQkTne3uInF51UVkEN
	 UpTdpBHVobPIfLpsYFhcrbLLaOPlmUAAbDQYs4GCYnmwHZZgLRdJRLGie1aEvnLO10
	 5hXd2kyQbuUjA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99D37CCF9E0
	for <ddprobe@lists.linux.dev>; Tue, 28 Oct 2025 07:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176163539359.11742.539388118211566357.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9bcef3bb9aa9e753d2ed602905dd6dc3a841ec848551701051703a8bca4a99ec
Date: Tue, 28 Oct 2025 07:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761635393
