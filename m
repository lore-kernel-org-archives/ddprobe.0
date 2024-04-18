Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 66C0163C
	for <ddprobe@lists.linux.dev>; Thu, 18 Apr 2024 08:19:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713428363; cv=none; b=Ji47t9NTmVEpijCrA/VArqFZIM0gfYAN+TTAGZw76A7Th3oIVKRXM/Eb/pH09YHIQ/PJ18AsTZAv1Qw4QJnNU0hycV0Z9oxnCwdPaTWuTkt/8apTvjokjVunh2qmEievrN7yulpVcb0g4zVOtXEvrwAD/OFGcmsdl3liLKk/kIs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713428363; c=relaxed/simple;
	bh=3RHEOXxo/yirvRyJTLDryFGmaHAS9JxLQgLn2Oew/f0=;
	h=To:Subject:From:Message-Id:Date; b=RNkRfIrBYvLcdThDpkM44AgH7p10DJoe4LY0VjCuM9QQ/0YWAGZkTL1GPM0ZHt5AbLaNOvOkEnV9BZHQs2+OeOubRpPx5WlH5iDF49b2NbBPSlw/ujZs1A990FFyrM/qs5onIIvqC8UZ97L+gaFaEB/btAk4P8KGrVyj/oI9IEs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=X+xnpcIr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="X+xnpcIr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9C5FC113CC
	for <ddprobe@lists.linux.dev>; Thu, 18 Apr 2024 08:19:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713428362;
	bh=3RHEOXxo/yirvRyJTLDryFGmaHAS9JxLQgLn2Oew/f0=;
	h=To:Subject:From:Date:From;
	b=X+xnpcIr5xXzrZAGWoP2LSXXFMNkyUmpSnd3SO9lcGorFTEEilOYwrHB03sWYDSsA
	 u3kg3cZeeeN1ysoPWp5w1nojVxQIgvdmANzhSWFXG2nZiijKSy7749Skjg9NuIgUZh
	 4a/ITEJS2/AY2Haw0B1fDNJNVPXJMmNd1tLQ334ZT79wqNEonjDzqtkpNpMj9pPxEU
	 B3Xa7hKBUBJhP63nX4XueDNKXm28xEsIumGF9j5b+fMvKFcxd7Z/PKZUHaPr8W6LD1
	 pOn6gC0FwoBaNy6jLC1tZ2U7J8nnzjxokhy3AN008BsgzPyTNqpBloDAVx3xWEu8WC
	 eJs4aaPJtr8uQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C7883C04FF8
	for <ddprobe@lists.linux.dev>; Thu, 18 Apr 2024 08:19:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171342836279.8501.16280109856320822973.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: be50825d6b8a42a2d008ad4cf7e8625d382628cad69d5e722fbca010fcbed5e6
Date: Thu, 18 Apr 2024 08:19:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713428362
