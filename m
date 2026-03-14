Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0721F3597B
	for <ddprobe@lists.linux.dev>; Sat, 14 Mar 2026 11:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773488694; cv=none; b=TF8z2xyQlnU1CZtkN0iVMsYwiHHV/qCrzT7ATh+isIQsVuPvu+vpStymKy86HsT0rDorRX1qxPzFN2xcJBijFomGL322rYwQhIKTBBbHR1Vvhq48S+kb9IX9arvploQ7l6SBhF9CeiCGe46ogQ9XxRQauZZenb76swoBiRR0/G0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773488694; c=relaxed/simple;
	bh=yN4RG4FnevdBLL30b75JVE/jJkMnNxc7foOn32KdTEY=;
	h=To:Subject:From:Message-Id:Date; b=ntDc45sjU7V0qjqkueGZO2J9Ycw4rNmnRmdJ9jwytUfF7AbTJ7HMeMEqVx9o8cXO5thzAEb72BINx8FfQz8z/jef+smPJb+0IN33RhiU2S1LG0s5hpAlMleupfzxpfqVSoEZOST4Rbv/n2SeoZWFeiX52wzuekqc3NA1vXJAsks=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qeoaVBUY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qeoaVBUY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4C44C116C6
	for <ddprobe@lists.linux.dev>; Sat, 14 Mar 2026 11:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773488693;
	bh=yN4RG4FnevdBLL30b75JVE/jJkMnNxc7foOn32KdTEY=;
	h=To:Subject:From:Date:From;
	b=qeoaVBUY2mGS7rphPO1hofbr9mV1OUhp5j9tBVL21G7+BDY45sunLxo9Dw0Pl332p
	 dNEvgatKpj2zIHPmQpcdNcd7kScARimIt+2Fb1FM4aWJsMLQN+UFhR6TTBYaQ+zDxM
	 TDCKnmc6cqLMiEbP4bgvDVaGcnBTGcYpWn6tbZxn1CWxU8WCWJYLzn7fdVOT38MwzZ
	 2ZF0iNvLNt3DgbgcGNJs9QDdy6mtJpCX+OhnzctUbxoEbVrePHXzEFwYt1jjDCyXCl
	 O3zaJ9VU7ZB+tFnbRJbsZ6BUEjA6911nLbKfNBj2n+j4tBSUfGHWqWLdfRDpdS+1eE
	 6T9rS8jU6oEPw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9712010706CC
	for <ddprobe@lists.linux.dev>; Sat, 14 Mar 2026 11:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177348869358.6922.2335225930433335207.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1ad03dcb51aecae574b66240c3155508932cb4b74ccd901e2193ae6ee6cde4e6
Date: Sat, 14 Mar 2026 11:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773488693
