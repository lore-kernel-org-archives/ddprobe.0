Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AA4193812ED
	for <ddprobe@lists.linux.dev>; Fri, 14 Aug 2026 10:20:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786702835; cv=none; b=VcYeZYUIYqEaUqHNB+rGTvDwMd28/K+LKVFq8lm5dzf4WkESahphm+uDESEQ3jUo6anp5VHLche4+F67RAr4/mxM5iyhvbqE5h0l1fQ/LIpMj/jpBuVbl6jEeSv7Ym3rqdYyTLPN+IupQwXuy8h4uWpPhMi+hELzsA9h8qgHrF0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786702835; c=relaxed/simple;
	bh=nemLHghUwTIzcLW7HuISDiUq71MzDq7GePj2SvOKC/c=;
	h=To:Subject:From:Message-Id:Date; b=pj9+pmyQDPpE8vUhjDR1QE1EfwCIahUzi4nC5sXkg7LSV2Ls6KFkqxnE6YZl69UhodlkGYjgE13PHyoHUX5GAtMR4PKehSPQ9PHH6T6W4/diplZflK0Ee53lGaKAdBFzFiu9xlwB0WzJQDHfo+VpgfOUhmmikYF/AwpPQ8k460U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bH2FohBk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bH2FohBk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDEDDC2BCB3
	for <ddprobe@lists.linux.dev>; Fri, 14 Aug 2026 10:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786702833;
	bh=nemLHghUwTIzcLW7HuISDiUq71MzDq7GePj2SvOKC/c=;
	h=To:Subject:From:Date:From;
	b=bH2FohBkEmLcDwg+QwKqckFYhJi53k+4QmQ8QfVlUBrSAOFXV8+f+22f1f/kybVhm
	 A0FjxsKlLDugLOEDr+MdfKRJUXgXmeyBVdTbhMP7WO7EpQaR5CC26V//oZGk/HbHco
	 2tIWY4D4+4wSx4fCR7/6sHVT263heNltG5HfoTEJkswa0AUURywJ11xYtaWGejmVJn
	 3Dn1hzl2trNvUy3giM2KIHCxMa2rP+pB381gxHvGvRIxknArbL3DpRCHtCnqzDpSa7
	 1aeuU5B2JhJAJ/OMWpmneYpY7tLMmD+NiV6tRlS4YNhITOjbD94DdH/sGF6duNXeUo
	 Uguk8TVaAMg6w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8566C5CFC1
	for <ddprobe@lists.linux.dev>; Fri, 14 Aug 2026 10:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178670283368.20569.15951684945196031389.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7dba814568ee6a316eb512c9bcfa664aa6418dda5a84ab86a5cf18d463496dea
Date: Fri, 14 Aug 2026 10:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786702833
