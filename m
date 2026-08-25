Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 54F3123EA94
	for <ddprobe@lists.linux.dev>; Tue, 25 Aug 2026 23:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787700634; cv=none; b=i/MGd2ELNQ7aNOsQ5Z7Xfr1BMZSVuEhFwzSVPtaGd1C/eQ0u+7PRgaiUY+PExo8IKMio2484QTv84NlmMwZPFCPK6pEp1GjIkv9AA8Q81JFUpRHijSHqrK1xmlFY0evlvNq4F1JNBBZ6oEJF+XzK3TkkZXFsbMzXJgrFT3dr7fc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787700634; c=relaxed/simple;
	bh=Bxv+UZ6CpajjQQgBmW3ri3OWEavhL6lzN9NtyyMVD+U=;
	h=To:Subject:From:Message-Id:Date; b=VFoqbrE/Jt3bIf+GRGxAjzhV7ukit1yMSDk4WsW7gi1fQMcZkLSb7qDmk6ik3OUM7Bua+81upovwa0eCxEJhbE/XAA5xZP9+lJTqFE6KnQPdusS5Rw4m7A+6V0q6ik0zuU01+AXqSUpBBJjf0tg/2PHKkFo+ts2druSfkjLS8oY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HsxLiMTB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HsxLiMTB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E14DBC2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 25 Aug 2026 23:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787700633;
	bh=Bxv+UZ6CpajjQQgBmW3ri3OWEavhL6lzN9NtyyMVD+U=;
	h=To:Subject:From:Date:From;
	b=HsxLiMTBoWfgE82oB9bQAvp+hGtb+rk5oSZ1/p2Fvg9ug6OSnAxEpxFoGGxWggou/
	 /t/2Ko8M9LwPXiPtlEPkksutxYfO/ssdo1nNiNKR8cd7QQmHa7zLFPWMs6q42m5KrQ
	 p98nRDcRmH4CXPRLB6edb+SP64xHIFHfu8UGuhdrUyWUWmQLihDToNEb2P6Gs0E7OI
	 lMQcYDMiR7bZVPgUwEPfDCMpO4mXszOPKYqwOiuH5LtpUO5K2dniPM7UZfzyXqRrCp
	 +jLEK1U3eb6DWTLEGbUiG9bCz5LDDpYl4dIgbuHVG+2ucyGqqir3C3mtbdIfyG/Fj1
	 k38iDZ8WX3wdw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B8AC0C61DB9
	for <ddprobe@lists.linux.dev>; Tue, 25 Aug 2026 23:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178770063372.17658.11371499805752322830.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1565397b1c89bcf0ade2ee4ad698a769bb3ffcf302663a10a84e7a49f34753ba
Date: Tue, 25 Aug 2026 23:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787700633
