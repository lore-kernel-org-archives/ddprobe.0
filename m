Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 647703613E
	for <ddprobe@lists.linux.dev>; Sat, 27 Apr 2024 09:22:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714209743; cv=none; b=XnmHa6UMBafBPJsni8f2z02vdeB3gW1hN6cC4JRgppiIRZO+/+J7OOwdRMjzQziJ9yantiCz3dkgnsmJrhl0U7yE5g3SoPzdSyBYxi6H3034ddug7CF+Wambt/+1nBg9aGYinvt2olpJuvMzvG1YuZJORh0YHTR8WypTv9tU51Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714209743; c=relaxed/simple;
	bh=vx9fw3p+R+AbXHmT8khqQhJk1I+h3jbedC3cttVq+to=;
	h=To:Subject:From:Message-Id:Date; b=q0RaRcF6iKsZvsejc5bXMEVj79EYWhif/xwpiP9MQN+QBu/kcwUlIle+cb7nqll08IgRk+UymmZTL1QpEDZ9hopne9GkGXEkh7c5jgCVHBP4FN+FszlgRHz7gmA+frpXh+26tE2sKRNozNh6U/QQFYeJoIPJl4bJkbcQotv74a4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hifjty66; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hifjty66"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DBF4EC113CE
	for <ddprobe@lists.linux.dev>; Sat, 27 Apr 2024 09:22:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714209742;
	bh=vx9fw3p+R+AbXHmT8khqQhJk1I+h3jbedC3cttVq+to=;
	h=To:Subject:From:Date:From;
	b=hifjty66wbOqoHNNUmt+9if/eR6pM3BK7QWxTdaVwAyuZw5ZSftP/o8EvXTu9hXNh
	 kLACHWWR/6XuFH0HskFx3RTATWIbwkvKxeIiBXlg7nr7hklvGnVw77B7X/QdIGDHyc
	 LidyT5y/HwuYMdbdsUFCGJB/62kjeRSOtVWI2e9YO/0FIa6N4RWrkmIF4MD3vQIlXN
	 /smgOjnULKP7wXXfGA/qMcStUepIc9X7vymQwt0mkw6NPxPVWNx1wMwvobPlFUA8u5
	 VgQ66kaxhDMjR4cHi1onuKShDirl37oxCfnfrmzg89mhBIZY81KdSeV7cc1/V8I56p
	 HVdFtg5qjx14w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C3D7BC4345F
	for <ddprobe@lists.linux.dev>; Sat, 27 Apr 2024 09:22:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171420974277.11221.14527468300656035049.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a95a01172b1dfe659d4ae639762943ef3da791767197f9837d47c94f36ea325f
Date: Sat, 27 Apr 2024 09:22:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714209742
