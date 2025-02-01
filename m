Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F1543A8D0
	for <ddprobe@lists.linux.dev>; Sat,  1 Feb 2025 06:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738392954; cv=none; b=qK/3fbMHESE3r+Nwv16wJBsHLF1cdwoZWw/WsQ5zHjb8ljZFE78R0sRLxhFsndy3amd5h2X/c58TBtAdrHiRc1TgXgDuh5ODUYVQ0RVAqRDmtAjV/ClPxaE7DoWWpCrKv05Jl0OHfgMl8fI0VTIY8gxyPeOGP5W3bVcB1KPbfYs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738392954; c=relaxed/simple;
	bh=KoioVKhh3R3JUO5ZASsP1gSOvePZdFuw+m4+ulrq56w=;
	h=To:Subject:From:Message-Id:Date; b=TlYD+htcDUp8wKVW+2APuEmwRvYDosxBnBCOcVO7IbwSOA8efh7rQJudylBwTXlAcmw2e1VjXRhSd3UggD1RTU42Xuz8k279vw4GIgofAR1VPRv8GAF1nyF2ozbHm62PpEd0sfnZCND5Vfc6i56HrJgh+Kzncn5JNSqtgAJFDV0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ie0kjBet; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ie0kjBet"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD31AC4CED3
	for <ddprobe@lists.linux.dev>; Sat,  1 Feb 2025 06:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738392953;
	bh=KoioVKhh3R3JUO5ZASsP1gSOvePZdFuw+m4+ulrq56w=;
	h=To:Subject:From:Date:From;
	b=ie0kjBetb5fITCd+ee4kkSEdb3X233Yr4BqL37RskP98mDC9PRbuuU7Y6iSrNPxpB
	 hjqvb6X2qWaSE2V2afowzGq8XmMw6Y2tVudPhJ7K7ontn4JZvBS6gWCAjGaVW/alPY
	 YJHY9P0pAAOEzWDAFZ4RG/5pt5wiWIPPZxSP6W2u+ALLHXaXKbB7KLX3cIFtzX9eOO
	 cu9juPs8/4fodWx6N4JsXyNlaBSKzHFGYKN6MIl+FnO5zSThGPw/ZaYUnkrPNMN+OP
	 kSXPO8qA2ocRNZgXV16q3bZnAC4eD0aSKBD59nDTm2txbqDs0o+oeTeskwZHORnQMp
	 4veqJsouFkqug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A98CCC0218A
	for <ddprobe@lists.linux.dev>; Sat,  1 Feb 2025 06:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173839295364.19307.9935023659520548604.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6c2f05a898770dfe2e986bbddc570e84f8e13977b2ee6d4e1597e2823e6b0695
Date: Sat, 01 Feb 2025 06:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738392953
