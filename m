Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 160B92AF12
	for <ddprobe@lists.linux.dev>; Thu, 18 Jul 2024 15:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721315754; cv=none; b=sXAy5/EdUuXujng/wBSuWvgFYijt9Yhiw94KOA9RLvgMkXy/7PWBtSSythGZ/qIJ6eQABDQJT9joYutBOElu92R88++OwI986uoHmuN+qeDO4Tr0Ibgl1OPCdo8xfeeM/S7CbOYELy17Y8AarrwWB/62g5RZSwRgr5KrbSpXk+o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721315754; c=relaxed/simple;
	bh=4XEiie5dho4buTaaV9KbauZPHauZyDxhzJ789gBY3CI=;
	h=To:Subject:From:Message-Id:Date; b=iH1xX29A7Q2NWRNJ6RG4JX6yWEEan4rIBvC1pqp3Q0YK7oij7xY1VBnlc556YlhtLyU5/h5Orxvq3vQwsvxB4E4GMcRbWZFlXgWNFFzFMr+aLSEM4NQMpvMrUxrEuGeDZxXpzPRFeqMyaef8MB7PUqonL/vjv7TN1eYhey2zJBE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ja2FvJAg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ja2FvJAg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1B22C116B1
	for <ddprobe@lists.linux.dev>; Thu, 18 Jul 2024 15:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721315753;
	bh=4XEiie5dho4buTaaV9KbauZPHauZyDxhzJ789gBY3CI=;
	h=To:Subject:From:Date:From;
	b=ja2FvJAgJ3wjAwsZToY+iCgk2ZHG5F1VsxMiYFQP6nq7/4YQWJPuWV831GeiVhr/D
	 uBMyVd5graFLWNF6liRpTST5ZWianu2CLjqQH63Dv5vBzxffH31ACSDWMSNpwxtXV5
	 PUk9G24dToreSrnrWBe9MdfFO8gHH2CZ8XzEKRBm1pH1+Hn1s6Ig92J6Vgzo4LMm7v
	 U4exS7qEMXK8PSSttWkVaTXfzFJ/1CJzN9RH0whT0/BlbPFm+YOJFAzZ3vwuUNO/2o
	 D2Tj10cl94pza8SQGPZZKjgSob/GxWxYbpQl2Sd0ILlnFuPnFaz97UmFhFY0wSs530
	 byNOBwQhz1O0g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FF3DC3DA49
	for <ddprobe@lists.linux.dev>; Thu, 18 Jul 2024 15:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172131575358.30018.9961263171247290310.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e68d468c40b643b20e08d85eda7233cfc49800ba1bfc3c4a1855b9f3da6ab1a4
Date: Thu, 18 Jul 2024 15:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721315753
