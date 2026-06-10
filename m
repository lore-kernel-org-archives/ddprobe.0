Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 399C53043B2
	for <ddprobe@lists.linux.dev>; Wed, 10 Jun 2026 07:35:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781076934; cv=none; b=e7B00C8cSsT/ClyvfF4EzZSgezxabXve4IkDUFJ4NhHcpfaFfulBhy2wTCR/UOD/NzZ4rpg0ow0XlQKmk9fNzp8nG3OOEKlIqOtfl913oocJjGgshvLOz+hwVAHvQmF70KIXIgamXtmGNjp2ZdWhixrGA7sT6mKcBbmbkXeWNcI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781076934; c=relaxed/simple;
	bh=mIyg/HtsBriIsF27HhqZS9mgHx98kCzPAxyFOZ3a0So=;
	h=To:Subject:From:Message-Id:Date; b=edD1P8nEg3FUbuWBvV0BZkvKvu016dy+rYVdeoyD/YIMkINHwkXEGRecpJ83DTThx5I0uemn+nE/Q5cOPaRgWUg4O/hh8BJyQ0tTx6Dba39r1h6T329VfOivpgrzwllsJxb+WwJrokZhrWu3BJnow/kyc54kggkki3Kj0mo3Ygk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TLSb5fag; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TLSb5fag"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C4115C2BCB8
	for <ddprobe@lists.linux.dev>; Wed, 10 Jun 2026 07:35:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781076933;
	bh=mIyg/HtsBriIsF27HhqZS9mgHx98kCzPAxyFOZ3a0So=;
	h=To:Subject:From:Date:From;
	b=TLSb5fagCtsLqOXL169EsmLUkjQ1fABmdrQBUKYgX8Pqx7DwZGyvxLXw59zsDq4WU
	 9EYHzLRNPQ+r16qRN4m4nL9HsgKFpjtD6PeqptPR1ErrBx1YULnEijaXgaO0AFq6SO
	 t/In1iR5YQkfQt3yj1THwRtkEcOea15NlQQfraNVNnMoU7sIR1SnlmbZo6Uf5sdMdl
	 x+WcLO5myAOgSt6sf4QthTWxvApRK/6/g3tvF4WgECsmZL5iWVvx3w6rfZW/qa8OjG
	 +bmPpDskew3qmYB39ORxf0ehSytZJaWUpdq3l8jDlub+phf1gWmPgOaoscdSfpD+8c
	 1uQUVGTq5z68Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9380CD8CB2
	for <ddprobe@lists.linux.dev>; Wed, 10 Jun 2026 07:35:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178107693368.24052.13354672026691764823.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d3e05749bd93eee8c5e125175ae42c07875862297c4b623d16d6a08f35af103d
Date: Wed, 10 Jun 2026 07:35:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781076933
