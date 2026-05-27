Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B2A72264D6
	for <ddprobe@lists.linux.dev>; Wed, 27 May 2026 02:12:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779847954; cv=none; b=KECKSaHKZulGfwnFmGRrwPhEUDD6KHSPqysDr9kvSRmQkD3n7qk8p4/VqrzYeaF1G2RHUtx8L2Tf/QOtINfWdMx8pQ1c9zPz9cSZge7GLhOHPmijy0GRqWhcFocRqlx4JGDHSn46O+k6o0/ASgFhNafcw6AmDC5V8bj8Kk0rR1Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779847954; c=relaxed/simple;
	bh=zQ/c28UGFYB3H/F+YW1sAMdYDdeO3prLoWiyJA2IiVM=;
	h=To:Subject:From:Message-Id:Date; b=MeVoD918dx8zHrW7b51bsU0PkjRoy7eNHIQ4YMWMlSoovUKGK5+KsQaT3VJmg2+3tPW5PI+laNUO/TAIaRxWzp+aAbJavvCq4vF20Pvg9hrm29curTeYm4FjQ8Ma1PC/wqK4yxuigh6Bh5wQb6bL0s/LIlAE2pjr4Ls9V9xe6bU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YWkgFpys; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YWkgFpys"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C4814C2BCB3
	for <ddprobe@lists.linux.dev>; Wed, 27 May 2026 02:12:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779847953;
	bh=zQ/c28UGFYB3H/F+YW1sAMdYDdeO3prLoWiyJA2IiVM=;
	h=To:Subject:From:Date:From;
	b=YWkgFpys6iwO/RoURTtoXJ5Gqu59+6P4etgUDYNlLiw1dRsunNTIHdPowJaR14hjX
	 OvEv1dxQUUZscZCVBl/1g2ca+ki04phbpCG7MRA0YG0LyOb5Gus5yI1gU0JXpnu1pH
	 P06l4aBU3djPpKnfqrABshsbswHKHzj0VCMT7NcmyKusabx4wKZmpud0rfhsI37ucS
	 rXZhYN++mQnBgEq43z9GRnQd4ZBj9wjG0fJqW8AHeSKEPeZ2drnyNdPJVF8OxBn95Q
	 Z4mOW1mZGtMBDibeFMIrCcJavewrRZ5ie/ZDmRkMNEWeElBK6Gohmhe22PRUuGVa2W
	 hkTuTB2/jkP6g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA1FFCD5BD2
	for <ddprobe@lists.linux.dev>; Wed, 27 May 2026 02:12:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177984795368.5598.15620248868999020923.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c4631674c98a778325fdd72efcb7a855329129768deb12c80af016d858618c06
Date: Wed, 27 May 2026 02:12:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779847953
